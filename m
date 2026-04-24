Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276F4332EDE
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777001255; cv=none; b=cmsObHvxzvaVibfLQQt/60spyNL6e524RTwBD9jj4Ts4Usji8ZKKvrnV/2cM6RbJ79TUI9nr5TVFmy8m1xonMQQ3O0dtyH2svxY4Sx4WPHrzfzogaA2b6yx05y3MCeQLb2eaaqzVeD5PD3WLwMddKM0P6CP0JQAnAlqkrAhX0ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777001255; c=relaxed/simple;
	bh=K321oDnx5JQX2m99tiPm+tA4bGz82pl95sujHy/K91k=;
	h=To:Subject:From:Message-Id:Date; b=VJVUkl6DmQGDRuqIuvIXPtYyje4ZJ3mjI8ml+FovVPxPWLFBz3kxnjgYeGzRvYbVdfjtHbHbOIBFrd4dHY0GoAD9PhMjtmlbkyqLvTFTmC08ZmHxSRwc+QqAC5xH0UdazqZj/pQjGppyYIAeR1hn15jwv6mATme8YHISpN8Hrhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9ZHtmVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9ZHtmVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C122AC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777001253;
	bh=K321oDnx5JQX2m99tiPm+tA4bGz82pl95sujHy/K91k=;
	h=To:Subject:From:Date:From;
	b=Y9ZHtmVw6iwqUpQjAcNrhN+pQAIp3dHDc7rhgGvnmQ1xoousL+0qZ14XGQ6NXyNkq
	 hY+dKASVbsrLesNfPLaBCtJhzl5VNIF5C8jWfV2gLqNZbB4p4B9FtQcgTWcGeMGr66
	 YxjD4T92A28foderDkf1LDIrtsSxaA988/5P/yS0fvyTAVM+iNJkG0MIXdxiZizG7i
	 KgcZVKmCl0iCHVa9+g68lj7ShsEqintyuSfqRACCm3w8l4hjdzoX7TBntneADk69ci
	 pe5iRjB7EbzfnkPmI+uNMrWNRK0Qek44HrwB6dEQWFpfztMpDihNNCniAOhgZDxouG
	 Osxer2dOEutxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA55F589DF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177700125368.7448.9232959058080782434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e008381cba79bf70f7cee05f65e80425dba9c9f0442c8025d0b4ac573f3c90
Date: Fri, 24 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777001253
