Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF37139F
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720503983; cv=none; b=dxXI7a7kFETRKey4k5BTTYd+Eh2mOkAnkFEtIEskjkixAFHcLS6BNm3qumdY3Uz0XV9DiQ+gzwEnGBiXA/J9vJEFbhSt3y5ZG9Yj5Uf4aQ/hoFuhc0jICnsAVUttbns0KWu90mNtoezqYwqujIsCWE1YgOjW/4KtshRFNt+CXLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720503983; c=relaxed/simple;
	bh=h6+qZYyxM5hchLbaTzPDWkc6EDW8aAScROCokled5d4=;
	h=To:Subject:From:Message-Id:Date; b=lqnyMic9urA0tHEMrkuwsAKZYdp3Xk2CTLsyW3QQ3tlNga4u/nK5lBxc2z4fbB8BO0zWwC/XsFOYXDXl4NXcsOKohqhSZgfExaGKoe+ruFYm5exWhX1m3X+hUSnF8z3XWOPiPMt1vqCK4vwtWEpcV+BLUpeBdW+UjuXDrKxosjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOk9Q8qB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOk9Q8qB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C9CC4AF07
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720503982;
	bh=h6+qZYyxM5hchLbaTzPDWkc6EDW8aAScROCokled5d4=;
	h=To:Subject:From:Date:From;
	b=IOk9Q8qBAvB4ZSzBNQ64Ij6GInoHwpSZBeFwIfevjtOnMFVvMEgbp/FcPSYmIj1ie
	 ZiJiM/gmC4wR6vjRnzcpIhYcYt2UoWQCPWR/WazFF1tzHDck3qu8TGKouMp9lpwZ86
	 8tbLXXOSslHKctwbS2DlkfIuOylpuC86vZshpaw38npuMklHlkJu5wcGzwbPeuYpLq
	 3sLKYNbQXxpX/r26h4vja8iDFWKgGHLHr6v99o1/Oya3CbMcbv2zw5XbScBF8Hapr7
	 uY3uuoEnfuyNQuWVKpQ/mv3eSqhMlQ9NJLi09coyx42rUJ4b7kkh4egRJy2cBEmnx7
	 yJUe+be2P303Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4214C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172050398279.25460.12844534244274545182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3ea424c29fad5985eda57e8c811bb708b8ff1ef41cfecb0cc0f238211ee8ef
Date: Tue, 09 Jul 2024 05:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720503982
