Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B62528F3
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 10:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715424143; cv=none; b=LAjrwDtnqre/Cl/6J5AVlzu7emkhM+CrDtkJCxpfLzJ+NoWZPDFzAdgV3zlyVAThT5ZglPOvp/2/2Bmz7cHLggiMj3hZ1m+ym9zpg0FLRJWSkPKn26vj6fkwAviIeyWWTwd6VXNsR8+cvLccmOANtJSe02e59NgvxOuncvhmJiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715424143; c=relaxed/simple;
	bh=uVRSB+PDww2W6PmV+Y0CX7EC6+/r7BOvBIenur+CuNg=;
	h=To:Subject:From:Message-Id:Date; b=PtdMQGs2Krl4iNpG28M69CSQpr0d1E9RaJOqvnkYeT6gnaqO+5gOxY9CBLwyyuo2i9POXg1j0efqOV42kIHMCuzc9WKsP8GlUDX+pn3QJPA5KanQRp2p3p/H6GZMeag++Dp9khp7xjtbnpbBK8W5DbTqaz3SM/RrFLpBRKbe8OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZ4yb5Xa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZ4yb5Xa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F2AC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715424142;
	bh=uVRSB+PDww2W6PmV+Y0CX7EC6+/r7BOvBIenur+CuNg=;
	h=To:Subject:From:Date:From;
	b=fZ4yb5XaS2uYAujJxdNmQ2cLTJIT98sXpzQ2oQaps4llCqY7E/2PG+YQ5m/gM7ysC
	 Xj3Wr0GFlRU9i8uMZSUWmNKyAyav9F9hz/a9ale0cKG7skgawGq4jZoFReSXs4kcVV
	 zEME6crhJMZPboGIlsIG6yvgDv6wlfV+dA9k7DWW3d67pkk619Vu/4dc748vPxVeYH
	 QKU6Z6QNcjkhysMC5iWQdoXsO6zEvBytF/nTWxDOZ0SiCQajFkAyo91VDMD52fHt1W
	 ouX0vuxR519479Jum2gKMCjtI1tWljJikA18ookEOVBP58e4C0zQO1Hw6QEpANHPse
	 n0p2X1PG5Ggsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07CBC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 10:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171542414276.22760.7155854982290473654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d32b9576c60f31a7e202ba07f4f118dc91366d7b66b9b09f728a2900cd9b84d
Date: Sat, 11 May 2024 10:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715424142
