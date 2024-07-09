Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C33315539D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720526783; cv=none; b=KLd+dnHcSMfVcCwPfzCCmGLlHZYhHH0SBNHe1Gcfl6S8oHoFpHFlAldHfGrHpsk8DUUWGHRR9WI8xYDqix2W7bAT5XIbmGe0aQs8Cou6tQIOHtOFi4uoqOqXGaBFjofZMgKgXe8YLteyLdqXr06yciZApY4NH9GrR2pYeE53wuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720526783; c=relaxed/simple;
	bh=lLCnz+HXLZ5SKg7bERnpA1/t5PLwcjBousyeSVkhr64=;
	h=To:Subject:From:Message-Id:Date; b=XE41c+nC8hMjtWN4DPOPvVaJliC7jQ6Gfk3FduRR9+K/YQL0xpQ+Ndbqru7hzzjy5+r4ZVByFcn+shuvepjZ2kdTGJwcoLg/BDfOVXlVXsGj7WVIXgF7oRrwMU1D8Kyy7Sv6k9s8IfNe8g1JIWWp75vTI6LGYEDoUt3k4goIcT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGQwNhHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGQwNhHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4830C4AF0D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720526782;
	bh=lLCnz+HXLZ5SKg7bERnpA1/t5PLwcjBousyeSVkhr64=;
	h=To:Subject:From:Date:From;
	b=PGQwNhHA52azVo7f12B6d0KNXuWMBjBggwoQAOaCFuW7AszABwB1d32HSyNhNzvXt
	 moVdro/xsPxNYIwXkxEwTEIVM2GYtpzYjT2Z+judZ/G5nm6FHE6SJgwqTxnYfkPnfQ
	 LKBaqh8Nhg55r/gK9QsCrxDUVZ9MNJj2kqdhTAcYXYvxtGzlGYJT9b/+vpSE85wG/d
	 up4iHVCJKQ5g9f99fmLiiJhoJIYXXXHnn8kOLdaRos3C0O3LoQKCHVc5EQUSBsNm2S
	 lNYNpdCugJJouWpllWtKIEF556AyBw4NTyChH2cTR2TQWdANhVTax/04AXSISJoQ1P
	 rMmMP0yD7MsNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE95CC3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172052678277.30318.3891944456587250325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3201c62814b4df754cb2a36037f83e2ff48f7a087367f7b761db48d09ec8319e
Date: Tue, 09 Jul 2024 12:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720526782
