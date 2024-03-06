Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CEF33E1
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709684897; cv=none; b=VJ7w08kRp22a1bGLLXPkPxgC+3LXhQmTJ0Ik1Up7iwbhesof5MKTzSIdhiLJjL52xL5QEw/i6iVThAKrI9irsGu347k+BlqWfl53ihchwh4YeGVu2o+pzhX0jKc20kubaRO7JimRhs8Ph5ge/G5mz5m+ZqLXqhTqER3eaZWZOiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709684897; c=relaxed/simple;
	bh=Rq48gUkF2U/4a8l7pZCEjMH1RSLR4F7WAQOT+JAy+sw=;
	h=To:Subject:From:Message-Id:Date; b=uuxOoEPZkOI/cw5RwQmq9P+urAHtzPnbJnIxIORCp5+IaYd79fGWt8wsV05jh8HzBN/2xh0G/uSNPbBa4UWyw0tcr+qp/nmhWMon3Y0efSnQ9BzDvFHYTSehfnuGPF320dnPuTzWkrZZ78CaF6SuLd7kBa587RyWkFG8BlfIO4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRMjLHyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRMjLHyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 776C4C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709684896;
	bh=Rq48gUkF2U/4a8l7pZCEjMH1RSLR4F7WAQOT+JAy+sw=;
	h=To:Subject:From:Date:From;
	b=iRMjLHygT8Dgp1ZUQwiy7x/WMTuC18gdBLLYjVtQLBlnAgyBkn0OvUQZRYKA63lrb
	 IM41plgQzkCsn7SitxNNfcZdIj2OZpXgmvXJ1v5c5D22IfZdzFTSKfphQXUkWigLSh
	 RZb8tkwbGTqWAr7YbuSdEZa8ipJwH3ym90LLH0U+7dDjozegIQwoDSrYox2yOC2dhi
	 6lvEyVLdRUcP89RbhsmmL8WfZdF275uWZ0Z5jvj75x6hRyXiNIfPT0pPeDGZhkOYu6
	 YRv7MwTZ5aJyYPmIqOvBE8w9PLMvhAH+0ModEDTOhY/ZByxac7M9/PhVTbWm2KWSHo
	 PrABizJavMcYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0D3C54798
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170968489637.23626.15021655294484210058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8663d49769b8f7c77c1cca4f0d411179decc4f31918b42f0dcce51d8842740d
Date: Wed, 06 Mar 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709684896
