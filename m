Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3BE1ABEB3
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722629754; cv=none; b=jgCzeJIWiiAbIYtTi8a6HHKPoPFvTirqP45OHPVYt0jUOA4ReQmSpkxe5VHNPuxltOYZ7htwItf7aFcqpjHK/bjfajIqj4s4vNyrTTkygk9b2/AvkwBYOApcGOcYNcGSq+7VNy/UECcEH4OyFWXHjWj0BIo+EWpnZYLWwAh9YlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722629754; c=relaxed/simple;
	bh=O/DO7QMkMGRz+JWiIVSKVdAUUkoaAMJwyfVFHuFCT4Y=;
	h=To:Subject:From:Message-Id:Date; b=CuwUE9vgP5q4KljvvVQA7ukxrk8+PF934MQFOREVY0p9mQ1JNsOYkzrRhnzegxS+zMZM9YjdSK/qdNzPGeQbcX2Iv4zAVTlEY7VLAKy8A0/0dXON5obHRtGtKeP12Ucx3hcPm2qdBU/53WDSt3aV3ckxNcba0XUtfOt8T6lq94w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNlIddNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNlIddNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BE0C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722629753;
	bh=O/DO7QMkMGRz+JWiIVSKVdAUUkoaAMJwyfVFHuFCT4Y=;
	h=To:Subject:From:Date:From;
	b=MNlIddNRnnkivgjiJn2dtCrzkznlDAuaErMNTXNO5xy3UxryEDTZIllPCaP8Iw0b5
	 TFdRku7vOJBFHMIn60RqOHi2aO8O5/Ah+HPyT0Z54J0+aa8h0IAbgvvzp3Bzap4ZBv
	 nTpv8YJY5YorocbuStuI7Bhx/yioqNbi/AilU6XZZxtfr5TTct9YmrTXytRJ+DKWDC
	 DxTVpQ1DFbG36/UMX9lJ3drcK97FUYASCQIBqLHJvrYh9Kv7rcj4jf6rkGf5qK416R
	 +5dRaI9qPOkEl9z4ox+hUTmtKR3naJUNlQi7uVRUiQxMmZ3163eHaLUW/D7/9q1fGn
	 SiH+5Ox6R/7sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD51C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172262975361.32641.15856224921044385787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f580177a86210b275e77fb4a40f57bd64a16c9247175ae475db36036514319
Date: Fri, 02 Aug 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722629753
