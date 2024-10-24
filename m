Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325561714C9
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729746954; cv=none; b=Dsf9UwP+Y9ITkARfseqtLPiDnrVsomUrjXOEwuvJiFjL8PwKUFpqsQxhA2/xEtueUq3LXs1ETepyY5KShG3kdVNoa5VMYLJynVaOCzanv3J2L7pXxMxhiDpvuBQQ1ECZbPDKLbEaZQWFmFjZ4eKlZc82qlx98KhaU7mdfyk3FPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729746954; c=relaxed/simple;
	bh=U/1nGp3tHRus7NbAtfp7Rd7eEYKzwldotCug2RDLPlU=;
	h=To:Subject:From:Message-Id:Date; b=sEC3g7b9BftgOdGb5tc2h6N1n1iBgScp7TRjxiyBNTx2Rkb19/Y0Arzlf0mZHS6ik4dsCbeclfuRUzFuj1HXht040kxusWSz+jycHctt7uSVcDuabzmrlDvYDPaNMKsb4LiR3dsd6D76NxrRktr+2xoH3q63SPJ5p/flMuhBOXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzSzftON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzSzftON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA35C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729746953;
	bh=U/1nGp3tHRus7NbAtfp7Rd7eEYKzwldotCug2RDLPlU=;
	h=To:Subject:From:Date:From;
	b=rzSzftON94GUCkm/cYRXK/OQGvJRj6z19VWuvUZhxASMJnorV8qtCxR49AfGme/YL
	 woNu2+JVEF8jzD0a9Rv/2rgDL3cpFP3BHJ69qaBMqFKvw7OwDj7U8JnfeX6N9blezv
	 Fo36fjhXChtxjAWpaWEyEGZJLzQtNq5Wkl1I7GQFvHcUiEZ3vD1/kxEOsE1cpnLsoI
	 A+UJQ3Erl9/8xyDeFCIlzVzYZRepFHxUCDlDBpZbGaeMnu+bX8lMzLbL5ypR2ci2DZ
	 sMicAvf8qDqL6Sey/ZncnbJKHpJqdrnwABOQDEOtvB+UWWs383YTjpTy2v8FiQzm6S
	 G5E5FRANu4ZnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D64D0BB5F
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172974695366.22549.1787340135801387061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02cb20744266c1019a888295ebd0adde3f2701b9c68ee5f2885b7486f371029e
Date: Thu, 24 Oct 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729746953
