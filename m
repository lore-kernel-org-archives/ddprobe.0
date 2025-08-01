Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343E073451
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754015994; cv=none; b=ouDck9hMtO6T8Z9vJFwzkeutIjazHYOMFzUl6jFZdjLGo50avYOgYc5zyTYlMuAHoV1MbbGw4e69FEJJ82UIc5nNXZRAPoW4IZglwM3RBBDahtmM5jUe16P83fDuz1MwUteSClPX5DR7gVKAtOZAwqSc17HrgMEP1UFR6GZOyG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754015994; c=relaxed/simple;
	bh=3pjCAsp84kmSL+akEsYyg0r9B/tVl7IJFa5b93cvufQ=;
	h=To:Subject:From:Message-Id:Date; b=Dn8aQNp3LzNsVPWnuwku1pfl6P/rXr8owp4o83qn4Jb9a7LaC8lM3qJjCoYk7PdOGRmwmzqfCXf2QjTJrSeDjENIFPKRyOlu4VO6RiXUqLtFpwA9DkIjuiTGhpQmbu1+0qFoPpPZUMpNHO+ZqUxQBbLqKi1LRAuqm3LFwa4lLBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+NCasfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+NCasfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A667AC4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754015993;
	bh=3pjCAsp84kmSL+akEsYyg0r9B/tVl7IJFa5b93cvufQ=;
	h=To:Subject:From:Date:From;
	b=Q+NCasfzT40xUDEkUhwKn/CZJ3gWI/bqrVO8yk+GtToOwDe+4u4t+zsKmn30lxUx/
	 n2Wqq87mZSpIpL0V8Z0UZSeXfunMnFXcop7XxivpLvq1cZUHRKQCMYYWQsZmFWNxmm
	 ulqj6276ceVNckfeFBPpiBopB3ry5HDSHsWvAIneHyD8x2v4HwSwRUQNQJ85wJcTvX
	 ZUdnX+gaXkV/sGoerIrLvy0Pz2irNCjkpg+ncHtITn3h/XeBQs29m2FsOe/2vF71CW
	 i0zMVdf9MBE5It6gJ3teyz0fpsMSzjQDwCXd3ePYkx61Nc/xb54/tH9PFw0H1orC9L
	 nHFe/WkJJ/d+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C51C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175401599357.13312.8051380476984538327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47037c4560343cc8fae2fa2d0fe7e21786a85302955a75cbfa83ae9b63a9a85
Date: Fri, 01 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754015993
