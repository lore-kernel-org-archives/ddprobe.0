Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289CE57CB6
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730047554; cv=none; b=Z67pNe1/NGbFfan7y3OaFYVLZohAdJbrTAyv1wmNpBVPaOWgYMwFYApMFyOWWmBvaGQAXC8oVracLUu1szTxuvhyKneSCTYxCePTnepomkWAFO1ux09LiHOrAvpmErPXsjmBIWO/LhMVaCHswBnaKmkhktk66H4n+W2xBA0yy84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730047554; c=relaxed/simple;
	bh=GJf2+LwWwr3zMHbWDKLENIdFqfHbn5yt1VWR0UnhMB4=;
	h=To:Subject:From:Message-Id:Date; b=c+Rmozhn/LiJkSTMTU/3N3pORI+YJzPnJtegp7Im+o91/cp2/PurQGeEsdrYQC0UtcMuAEnEW1hi4v3Yw4kGbUS2iVMrftdOSRrnCxUYvS6iYSoLgO3Y9m7JtzoEMCD2hF8kkTTy2rGDvr1MPfQWSSNVTG4Lg9kbKf+K1pUL5Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGljJh3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGljJh3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF53C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730047553;
	bh=GJf2+LwWwr3zMHbWDKLENIdFqfHbn5yt1VWR0UnhMB4=;
	h=To:Subject:From:Date:From;
	b=oGljJh3fTlbKqHGLD6ty+bMf8x5IcDuFGUIrZ7FolTOkkrnJbSUUWtLtcIdBAZIvy
	 bQzWlhydacFRKdiZGJ4xGwiJEGRg7pu3+M+pL2GzbHe+vxmAO3/RS7D5vV33LqDSkN
	 60ZFMDtpJkzlf9RhOr1rHeYQcnOQMz93y0Pb03I7tqC0B5CRajXVY2I0FBnNZ1rZut
	 CzXIUW/B+oKmqX7OcOD5EaYS16XRxK+X31MgTrKJxKLkGzxu4sUjR6iKXsgqTid+V8
	 aUHV81msO4m3zv0q0yOasMQuJOq1UGT0HLQOaPGUKTzKvbnYRElWPcNCZXu5rXjbRl
	 Rn6dPfWpq+4+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982A2D1356F
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173004755361.16748.14568696674594685777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cffe80732326dc96b5cdda501514bafa51fef79dbee49c9d118723becd8f9223
Date: Sun, 27 Oct 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730047553
