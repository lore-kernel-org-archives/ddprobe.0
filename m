Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDCD2F0673
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789792234; cv=none; b=e3ia96YuIiG5c7TtwtEXbjwMh28ChXHV4s4iMY34B/XzRuy2uuyPvicBTd3aX2I3XlUZe+bnhKepcW7ZbV4KqZ+OP44lY/mSEqUhqqv//Uakz5EyYvcx5GvmWVmeyea0GtPN2IodDYd2Knfhl3en2d77SLa2CY7ID8aBskW9MpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789792234; c=relaxed/simple;
	bh=G97nPh1V3VpeqARBMeF1ZTOEHetd4VqbbEt8US+prM8=;
	h=To:Subject:From:Message-Id:Date; b=Qt+TlEvFGRNGXsE8TjJG4wx8X1w1CBrYlvFWPywZTI4W2xkVYBGUlLnEcIT9Eygt/V/CVV9evv0NVaZ/eZVMXOx4wnowkT+yeZ0nUE/b3+cs4g4w5CdwERSO13JRy2DY4337Fbo7G3KhpNhP6b8/DvCKFU6LuhDeb8S/jRfo08s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZM3Yfg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZM3Yfg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A88C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789792233;
	bh=G97nPh1V3VpeqARBMeF1ZTOEHetd4VqbbEt8US+prM8=;
	h=To:Subject:From:Date:From;
	b=pZM3Yfg6wWHum/Ie1MBPTw+EXC13Fzy3t1bLvSXFXZLL4n55eA/V1bnNPNvKjBEgl
	 N/pbUPhNzCHu7SbhirZNGZYsAITal5n09rdEbkKY9N1OBM3bORmBHwVi0tOyu6B/tg
	 HXWidThr9RnBYOo39LEzh81eoTaWk0idshHXtZ8oRisakqcfdyTys+oqaxuTecDBHv
	 zKfDUBLucFuiUFYmvUtAyWgI4/8rjve0QMyv/EqexkxIlsie1h19jyzs9GV5LF0nLY
	 dTN10qXXBHtLuNnywscVLgwM0bZ20iQDxJnMBCqLUWNDGjXyjAbM0kVY66EakKHpus
	 ZlYOvUO+PiqnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E6FC982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178979223370.19832.15576590883521571299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 630052b0b25ef6c8b3f4c99497858fc9e4231ef6b76310cd8e6a1fc6b201a9ca
Date: Sat, 19 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789792233
