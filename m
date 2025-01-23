Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5352C8BF8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737666354; cv=none; b=neSSs14I6f4YQlDKt876aJHY9V6pXR2Jg3d6cb9Bj7tmOPAtcjnJXsR7c3t6nZHlVjZSfoyDDdzre8Dc4xn58ZTi6ECbPOgSlJ6+I5JRhEJfWJlCgsyFPXCfzEFPtj5FvOldh3cnbn9O5b9od6+eLrbrFvjVPDbWdqj94nvqDMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737666354; c=relaxed/simple;
	bh=5NQwWrVVnLoWd1U8NcWEP9jLg35K4RnrMovE5pYKlgA=;
	h=To:Subject:From:Message-Id:Date; b=fFPN45ul38d/9aE5ZZFwORDWsETJi+1BjJnA7V9Pt4rKwtpIAIpYk56cQecFRT3ow7Yn0cySuEfqEXNjdqd317+zrXwRDAz840Hhp4LzP5+Easiw4SES3G+AM5biubaxKPvHg/nQP2NlQVfxdfmihfhoGNOI2KVm/DpdPUffMe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZffGAaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZffGAaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC546C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737666353;
	bh=5NQwWrVVnLoWd1U8NcWEP9jLg35K4RnrMovE5pYKlgA=;
	h=To:Subject:From:Date:From;
	b=TZffGAaZCDQrUeCJac21Fk6LaOGoa/F4cua6JLtDShkwm1XfnVSrbkReNLNx8bCam
	 BtiFJ0CwoR9oyQ5O4+UxpZFi2PBtU5tq8rp0QRjoD5lrqQJO/lmpLblh6yysaV4HHo
	 GhsA5SXWnmp1LXj65pWPR7lLpMJbf3BBdOFXafUuCX1LZETZh2TNGQXBRUQ0ZBFj5s
	 9ATgqxJOdB9vG6oro2Hr/Z3ZuB4rLc/Ww4DKizXfZqMScovDobNHQnrXtfacnP4TnK
	 XDDx4inwcNVwSk9yWti53H8b4ava+L0YT1azy/UndtdceUigPu8xqAghQn/YYxHGhJ
	 qbGjLuk++IbFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96813C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173766635359.23843.6606680221423111993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b42d719e7288175099328dcd79f7981ebd980e3814a83a7070fc67821a8b1ab
Date: Thu, 23 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737666353
