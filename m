Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1510E3EBF07
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770320634; cv=none; b=pXVFpGpqnhvkCHJgzmQZymZOJAQ0RMuRc8ds9HWuNRe86Ubz9DYw3nmNUxkQrbFVNly39iJXzVVpwjNskv7iG3yHn/slUlvVYEv6MivjbUFhxQjpy5knokpapo4LA2mMA1COGZbDlKCLMqcjQjvWKfdw5Iqxf8t+Xqj8Gr0Mczc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770320634; c=relaxed/simple;
	bh=+eBe5yfiQHjxecAl3rbBUIhH8xofJc8tD4d7Uwzv4LM=;
	h=To:Subject:From:Message-Id:Date; b=sJk52Bnc/zvv5i8JDETojjxlPnduw1+/TpLTPQFyzhJpCHN5lgFBiN9NKTokBXgz8ZxJ41MbH8q8N2vHLY7aoow5sEr/ISwTlcEslH2xB7TmhZTOudu9ubyiS674mgKb6c0neAvKOEH2Nlczij/mtQ7FskGjbJCQuw0n49ElJS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcnMWZqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcnMWZqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B60C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770320633;
	bh=+eBe5yfiQHjxecAl3rbBUIhH8xofJc8tD4d7Uwzv4LM=;
	h=To:Subject:From:Date:From;
	b=BcnMWZqrTKvGETiAIN9X7p1mqYyjFh7q8mpvqV0HBtWa9HT00a85y4/i3+5GLK5gs
	 LSuozmg3jOd9YUqOXf91grj4nGlI1iPE6KXVa9M25jnPwtsIV3dsGECiVMM1zozYm/
	 3zZj4i/akLtZer5NdB9ujUw/gZ+gLz1WfTFSYa52OtFHgbH0cPqqv0Kf4UMENIjLO8
	 IxqXXLQn8G4hDmP4H1m0biL+vVJGr+ETjRua9StkM793PaQezElG5wTPiZRNK8udR7
	 dXuU/G0UEKT36o5+siXsnKuaeP5iNX7bLjQn7+nFLo/lUC7YD8lsI+2yo1ytovcOK6
	 IWdxx0We+avjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BD4ECD999
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177032063361.11025.12703752617070415582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c737f84f0ab7215e3bd54009d709a97085a09d212f7b446120fbd66b81451a34
Date: Thu, 05 Feb 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770320633
