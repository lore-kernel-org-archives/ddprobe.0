Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74210394472
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770106434; cv=none; b=qiArlETD8qbBTEp/AL9DwTHo1+n0zmeuJeq2vbdy47/Zk2n/09jmeTLaROWCiDBVYMrPAagBOVkHwXq9mz8p/79lcd0kZyvldc1UI1iRr9MltXmT90ETCXHPDcAWI7WBfLD48xeXVd7JM4uhDL17scQwim19Gg0L3T4fCFgpJ2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770106434; c=relaxed/simple;
	bh=3LBOWjR9U5vvesSyaKvhuFyAcvTnWZOVo4a7ziLQATU=;
	h=To:Subject:From:Message-Id:Date; b=ue9qkPNqArVI02dx1sonPk2XrMuiLzLG7q8ecV1nq5ul1YBiebEgU7hRgq0NIS6p6u+OC5OWd1lSAC7ZHxFWRjYVFVBezUaow9RokJWOS6kRNpYsTBiA4Ic9DjrnvCRj59o4HeJWgwglHK/HRItJH5T8JEC4mmZ8SiisxVgw0hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o33XtCo1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o33XtCo1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35FBC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770106433;
	bh=3LBOWjR9U5vvesSyaKvhuFyAcvTnWZOVo4a7ziLQATU=;
	h=To:Subject:From:Date:From;
	b=o33XtCo1C2CbYAuZh2ejHhwGcnxpFJGZXHAf5K0jRBQcBAX70znoSm/cknlchGBrP
	 TD9HSquwLA2O2flKCxcmKF+fp2t+NQf2R8p38nMo3bQIlC5+HiMAOsnS8l5X7UPa4i
	 8jRbCYWRvOsuBSvN59BQc0o+KR5dfyYK7HZDvwMj/Sga71AOhRkKMLluv9M5Q57oSl
	 jjMweYWX4HNGDDNGGUM46Cz7HYagKhzRxMZkizedpD76HsjwNZ/HW4WYIVYycD1OyO
	 TMhSD2W/0BCOxJ931m/OJxjTYRNts/SgjsjAnWRgT1UULP5n7d0b76CML1UpX6odiR
	 /TcDIppiEF/EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9941BE8305D
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177010643361.21504.8371609422097291208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e27a28bbabcf45537883f278c91656556288a2c5c8ab25195f5d694202afedb
Date: Tue, 03 Feb 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770106433
