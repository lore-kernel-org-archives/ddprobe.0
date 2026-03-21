Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C014274FFD
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774082094; cv=none; b=LSjV3YB2WdJTyVKEw4k0dKLqKQ2nRTc9zmtV7vbxUUZv05Eo6JVbFzr6GGelrpUolpszYOhBqIZc5YAxpoE/uTKpxM+NlAaU7ymJzkOP1/1Gqe4bUAqKtYKOCe1cFjAdXV01WQIqs8OkS3i5NwUR4TJBhx8F1Qokf3tFuFLeoCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774082094; c=relaxed/simple;
	bh=MfoTjpUMLhelReKLivElxBm9+AydcHOCWTyqQTLNpjc=;
	h=To:Subject:From:Message-Id:Date; b=dsdGKMotx+bC85tipjkw62Rih0A+TrWUitTqNXE7yYKN/z94fZZIpBAZZz0G2Pl9C0CnkRYqmQAp5qOUH+tlRL5Uvlf+5zUOFG4AFpv8kOK14KZbBzRyII8sIxQt99MiVKDpXCYRNFyKJBzdxaBeWhKaFH24KwbQHfHjtEGLBcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9GcdhuZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9GcdhuZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A272CC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774082093;
	bh=MfoTjpUMLhelReKLivElxBm9+AydcHOCWTyqQTLNpjc=;
	h=To:Subject:From:Date:From;
	b=Q9GcdhuZQYlogWu40P3JV8RZ7I7KOlPOiIhCSc0FVUwPDMMn2VQZ8nJCz9gt9X5V+
	 NkyXTT3fXfyhnOGtvAPZ1waiVdBxFqwhYiAolGDY+AVSwJ7VdDMF2bTGQFDyZ8anbV
	 CrIyfRfsjNUM75v5QnWzpjOW1w+g4mIMkW+BOHwSRkWk8ZLt+t74RRFdfdv+kzO+j0
	 ilpUHrxOp2DVt8vgx+IztwktIMtBntTho2lpBO9PK2eyNZZ1SWHkKjVvE4ZrfDajCN
	 LB7Gj8esqdu3lXDzUpXtadY/CQFsyNXEC0CYSnXeTnryum8PRiWgCwJNna60zp2fE3
	 00CVOrf11dbCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FFA1094462
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177408209357.1166.17042496783592810016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529daff50fa4feade2a009842a2547af74c38cc737e8bc0d4ae71ab8ea7659b6
Date: Sat, 21 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774082093
