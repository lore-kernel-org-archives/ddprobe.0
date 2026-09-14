Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4820849553B
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789406434; cv=none; b=VD6carqrQhDBEXC4bldn3w1FDY6YlMig11lUX3gV02zKkfUbIp+ApGgTPFJ8maiXWFW2SVyd3gatM6iYS9tKawaZM78jtLGRGK5aMEI/JXU5WMnczE1X2/Pc+HYEGyKaBg22ovcsUuaxKM13S1YfDUMqY0Ci/9+6350u/15/fTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789406434; c=relaxed/simple;
	bh=x+Tq/8ZCBGHD+DX1KQ25gBN7wlnVvbEbxHRNJI6w8fY=;
	h=To:Subject:From:Message-Id:Date; b=cnuxR/8AXSKfag2DPgKAuckggg0QnCkXoFIh4rxRtk5f9/knfHVVbc12SRCjMbKJ6n8ieV+mtIujvQ3ei2noavpYbbbUbAp3g9A3YWZFvBw6Qi9c5cfrVv9aa08kXrIGfMSdPhmP2CHADkQS0YKxRA0QMUJP+8ulU/uD1Toi0/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJgzp9Ue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJgzp9Ue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9254C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789406433;
	bh=x+Tq/8ZCBGHD+DX1KQ25gBN7wlnVvbEbxHRNJI6w8fY=;
	h=To:Subject:From:Date:From;
	b=dJgzp9UealL0pjGfBT+j753Jp35khLwI2F/JPYgiuZUcD0lBnud9IlfqbIF6STGUh
	 MzQFAdiXBoVdGXI/O9i7RsqIWpbnCiKxpjBbNJ/OndMhCHOpyAfu6AE8acnkuSJuBC
	 tqnDS00DLtX65oLqg6Q6RU6xKuELApEhXR5mkbdpLoBeKAahOSF0L11T4iYqVAKyOn
	 q8riaY9er6ZjUf1bYsTdoRZvHbbSn13uP6jaDzoHSvWOZDA4PwREevf+AlLTY/HxXS
	 wGUfqh2crAsAFF4kjA2OQjmOpiNkpLjlhQjdoSGgfPRvV9A3FRqS4Ww2qFowRKR4nj
	 QnR2gSc80r+Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51E0C88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178940643373.12435.10752228879067845111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5792ce32c27a12739f41735356ee2703ba9545bfc7802ddf3bd1fa70ef7996
Date: Mon, 14 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789406433
