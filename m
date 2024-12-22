Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5738532C85
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 09:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734858354; cv=none; b=U7uV+zLmZMGQm7yD64UBb5N9b+y3+Pr8KYn6eUYmLjrnmMBIduU41OYSnzi0/Pmzr8gn4EeXYEpDIB3kHx0IDHlDAUbI7UEj2t4FQ5R8dViregM+DDKAaIUwg1YSsa49vY7pPNBrOnDL24NzYGACgQJE0aRUUIRGXQU7hW/8pXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734858354; c=relaxed/simple;
	bh=Xia1no8FIDg++QGdm1YgTZO75KG3rEWZ9CAeXrwahmo=;
	h=To:Subject:From:Message-Id:Date; b=AbejW33WU40sxKa26FCkWLiRKrL/3qieR26TEWR1vTJt153UNvfLz9gPHw8bMFxYazcBH1UI9DkQ9PPVFlhGf3lxWReQraEfRWgU9Vo/0BiTH2VQ9+UXz4jkn/VYvmyIHedRHd4LcbYtFULPQZHxxobyCAXNzTbtNNy+8EhQQhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cm6A35d2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cm6A35d2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44D3C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734858353;
	bh=Xia1no8FIDg++QGdm1YgTZO75KG3rEWZ9CAeXrwahmo=;
	h=To:Subject:From:Date:From;
	b=cm6A35d2TOepGypBJ6yvieAbyPnJcGAN/eGJKoiOsPUJai55eDHdBlFruLT1C5upT
	 DzWw5pnxrGwTCMu5E71KF0pAo2agBWPgE3YwRr1HTGMhOw/plRwmMSPvB23/6buVUS
	 ucUkjcncr6Kx3fz1y5rR4ktkYxTxjZQF5CKsYfeYCo34JMxSMEBxkoxO+TLVz674sR
	 Jtel4tA4v9mAyIKD9ikz0H7BeB7XOiJMM44GWaqZ1Xm5XrSHdw1n6+Ar4DmIryY1SR
	 PwMOkmljK73RsUay8Q7iVRhY4FnwXInOmlCrj/ogAyl0D9Fss2iaUztg2dUbDLM6V0
	 SnJ5MdMTydsIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE5BE7718D
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173485835370.32553.7872149529147100047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 572d7d799e4373b263ec462cc44c0f79a9948593ad1fb65120fa4d395b91b789
Date: Sun, 22 Dec 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734858353
