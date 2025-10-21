Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9F21A9F88
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761029994; cv=none; b=dM7L1KnKu8dTVZOLcZsGTWuMYHcUcmeIPjjaUGox0eEg69Nm9yPFE3YADiUvrRsPuIFSgG3/IZvgPwu9mG6JRhA4XU/BRJEjoKKIecPTYtW0FfzM5QH5LH1O+oOwsmJrHcKzZNCqgulmTgu/rr39oucEMrjnUPKl+Dsh34C4qNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761029994; c=relaxed/simple;
	bh=/x6rz1QrIfffpyuIZ6Vo97UYvgaHuOAcUwe2KU/pMlc=;
	h=To:Subject:From:Message-Id:Date; b=ZJkNtAFt9jEOHWdN8JyYXmeFKSPm4VaFWTyDNjrs2kYPNU/s3Kw0+l5v0cGjv1QJLxpIcO12l/Ki/ek/kS/yKAM20JS8xFiIyJxMnQDVWGpHEdltm992dw76lk18B1yFUJTdecd43Is6jobAn4NWyaWHUpeF/s14zXVd5rsXqIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHPP2e6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHPP2e6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74E9C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761029993;
	bh=/x6rz1QrIfffpyuIZ6Vo97UYvgaHuOAcUwe2KU/pMlc=;
	h=To:Subject:From:Date:From;
	b=lHPP2e6+JE1179HOru42OaW5CmtceLV4brM5kV7h3ObXii/7W/SHnzhtZfN2YB67X
	 dwn9sqyaucbTJuBXLT2Df7rUOP/rNInNnMus4g0/jx+52zav4r4S6cyqTakqS0Ejyc
	 O3++f9gQiq1L7CqZP3kg60PAmX+1D+w0lE5k1ijporj5jEzJDli8wMoImYjbXHbkR8
	 I8Rr5zEh7xz6SW8R9HJVRdXzaxL5Fo6GDPljOTkFOBIPT5XMR3DcBCDGVirmnd1oTL
	 LOdOeJP62BB0QQzKLDoljPhvQLw6H3FgOr6CBHffqGgb50gyUhAk/9OWKvWec48n/x
	 LsOkd0bJ9jpow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C44CCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176102999357.16590.9511303553644370145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42cfb3ce1d09f4e3b023667e189af5a2b52ccde6747f8b0419dd206d86ea6366
Date: Tue, 21 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761029993
