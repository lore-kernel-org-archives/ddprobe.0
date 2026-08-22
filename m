Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A671FCF41
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787373034; cv=none; b=mKtTUPGob/2otnqnYjG44/7aH/XK8/lN2QaRD1d/f3j12iep9jaaCZqMVaRQzDIYusNRoKM4bxvC7v+MTl/uTn76MK71DqG49apM09ImJty5t/mndkQEkjUV/4Ns/s3A0ztdDjtJzJabhpdowXsPfKQoGfc2WKm4whVzBhT0Jqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787373034; c=relaxed/simple;
	bh=aq0TLvSpMlAro8XhOflegW2NfDydnkYV0w8iwdKYzUA=;
	h=To:Subject:From:Message-Id:Date; b=d08wiE53aE5/ucj6HKXD2xl1YYe+g5Ee+FIo1b1UrcpZTKDq5B/uReQUGgjuBYkL2hd3E2iaADjnfYhPrM16egzkcxLhvWmrli8YjW1Ja57/6VI+4MgbMSnLR222Xp+2EM05tus3BDTEi2iOK2GymeT2CY1j4w5S2HheZUKEhvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiuA96eL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiuA96eL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00284C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787373034;
	bh=aq0TLvSpMlAro8XhOflegW2NfDydnkYV0w8iwdKYzUA=;
	h=To:Subject:From:Date:From;
	b=MiuA96eLD8EVeXrFs+H1epo1nTXKisj44dBJakYSA+DMyuhTgMJa7O6FOQFZjiCfn
	 RLZET8MNE/m7DIc+P6SyksnTud/XOVstmkIkGtsKjmfaMCregCpFp1k2pIPVXOSrT7
	 XSKrEUfLe4Bb28MaXif4GXMezncBbHYM1propCWWa+R3yJik0S/1g22VUyx4VVPoqj
	 7yVj3b/ZRD6kUA62z9qlhJjSok5l/VzUA7xufYEFsbvmLhHvBixPjZcKdkR2C/AJoQ
	 Gr0pwxdZSucMt8jaM9KGJjwGN54Ek7JVV++AK9LmVfkcf7zMPxi5RGVKQVcsYx34RV
	 32NThOmGpD72A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C146DC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178737303376.5619.8082327779751016296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7896360ce255867825f43c6770ac7d4b6815687f27a15401b7fe90aedc1c58b0
Date: Sat, 22 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787373033
