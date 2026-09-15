Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA26B372ECD
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789506634; cv=none; b=gcntXz0aoGLEaNwMhq9PkOakHN2r7Yf0w0OShoojCsDiDCtc+SkwTopZjFFQyJnLxRfE6emgSBDyN1IDOW6BAdplcsMHc2gxJrCEnd8o58sBnkJR8F07l6pfhnlYcQN5nVYgukraroeIT7tS+rNeCnB3spGSawgs5tFfV9U2qxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789506634; c=relaxed/simple;
	bh=7bvo/P+VxN4OYmbyZ5Ld9iR4hsr1cX62bSl/GU7IFD4=;
	h=To:Subject:From:Message-Id:Date; b=of27//3x645COrsXm2b2kzDbWetPt2R0IvdcxlyDsRKVg7+igl+VR2fbt6jbIGcJXuU6BB/IQ+cd0lDdOmpF36RD+nepbyV5okhhNeHka9671zRufaNIZ69dg7sWb0rtDsq0ZU5jBv2OsXnvmbL5g1k2mKZu6GVrLyLazPlgdew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuQDKBzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuQDKBzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A21C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789506633;
	bh=7bvo/P+VxN4OYmbyZ5Ld9iR4hsr1cX62bSl/GU7IFD4=;
	h=To:Subject:From:Date:From;
	b=QuQDKBzNCDcTzUhlXT0OgtscVZrib3e6QEypXuqefeRyuphwCBfBXLqgdWPn4463E
	 S6x/bmH47EMkTpF68XvKcNsfCS0urwEWujS+ZXfmrpGF2v8Fz7mWrr7VauoeRJ1DZy
	 0C5NRZgXPHiJY70WVUuc3lt2m+AGBvUL9iZdRr1EhvYT6QY+OmGT1P6G9aeQvpXUN3
	 ZV2kdUuPyqrN6LRMuHOXxJ9XDfbrCIz8rP+fblvb4Q2Wbk7AfY4YtiQrObF0VF0bRw
	 79pFZ0f1UwK63i8vserYmJHyLv7JY0HpaHJlpvvU/piRQIcSS94iyZh62o5Ush6bpu
	 VPs7ET/VrhF/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF80C88E77
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178950663370.4273.11129152279080337904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d96b1c2aa8b66694c4f97bf3843287629f71efca5112bfe76cd667f6eba5d2
Date: Tue, 15 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789506633
