Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51F127602C
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755674994; cv=none; b=ANfVypm8VsaHt1t0a8t8tdeWPUp4wGmU2dgLSa3iGg8OTEj6NzJKMxmrUBR/7dO1gtqOfT0Lp/9TeCL0GKnu0ccD3TexRxhThPdRPK+vigX7fr/OTHknHOtp/m9h6BT4EjoQZzuIVN0XJBxlOj74rD5gGA6/QpfL+5V5KgTd8N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755674994; c=relaxed/simple;
	bh=FUxwRs5PyBoi/JwUJgFrNgjJ+eyQlfTO1O+iitJxXtc=;
	h=To:Subject:From:Message-Id:Date; b=Rbf2J9bs/EifpgCgYJPCLre8WiIVkwmMSVRA3UoVELF9YsfLBzf+HlS8/tmDvQyNw0clsqQ76tAWNl4T/xDJStEdkS90P7ZUy3myXqA1PQeejWzWQGNLjo3y8Eqi4mS5bnWSEYBwv44N7i63RYoxdq4OU251YIHV+BpV2Fu7vgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KG7cu2SK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KG7cu2SK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E300C113CF
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755674993;
	bh=FUxwRs5PyBoi/JwUJgFrNgjJ+eyQlfTO1O+iitJxXtc=;
	h=To:Subject:From:Date:From;
	b=KG7cu2SKfAiXj5pet1NjlKnjpsQt42xcC4iJaeZywmG4j+XiXUqQ3TW8SpZxVinLP
	 on5WdKuQ0Xdhz+0Dn2ZRJFChhQY/fgDURjnOzB8CECBDiic7RFX4axsO0f5/bKJEyS
	 bRQJ/oeEV1e/cWB3CGfu7MNz7JhvpYWY/uy+HvJcaxqfd4ofhP6uND0gFgOlmdK+LV
	 dzP7QFq1WAdXzmkVWrkvBOnjhFe4/RjlsdPsZx6R/EY57FQvcRELDx3hB9ZXTqrT39
	 faDFmvY2fgds00ahAzmrp6MvUmgvgBB8MAHtRDsrZ/mJKEntVCKRnDyDjpyNvCrwD2
	 h3875aIj2avpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F108CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175567499357.25390.11764214009938625010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8191e02aeb4b40664194f94015b3d3e05f9679a68dd66631a6ef5286455a6c71
Date: Wed, 20 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755674993
