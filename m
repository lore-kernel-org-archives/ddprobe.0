Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459851F3B87
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781938594; cv=none; b=QqZzgU929eP3X3/pChQBU2S2O7+DkrZPA8C4Wm62SyV3l9sAy1gS4dQQIpXVNtMTSaoTAE53QV7Dw7+2qOlIPBmd/avMIkTWSJIjxbq6lfi8dSlvkOQL/fuhYTHdz0aCoJkVaEodXFSjUUp83mQX1rOiM04qy8xU6udRsXAAyQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781938594; c=relaxed/simple;
	bh=2wwQjr+wy8jzDpIBQf0LMSaAVy/v8wi78W7e9BJzj9s=;
	h=To:Subject:From:Message-Id:Date; b=Zm39AekIREQmfTNAAh5CsEho0h/5iIp8pA7KDuHjcbU99ebbUJ7tt2qO/b33cEVfu7qgA1cDn1cG08Xd07JPGm0G+LeFRjOelO0vllqwH67knSsB5loxXVcRZY1k/TqBjTBX4+n/BC8j8inY9qEUwTE0JWbtQsLouzAOfkOmlSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boSz3Ff6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boSz3Ff6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA808C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781938594;
	bh=2wwQjr+wy8jzDpIBQf0LMSaAVy/v8wi78W7e9BJzj9s=;
	h=To:Subject:From:Date:From;
	b=boSz3Ff6gZwbTJJRW+FP0xp2gRbENKqA3Az12BLLt7uXOhBm54G9W75sJccmpOYwE
	 KPd9QYD8IjuORAqjXOMKCBNzhzpwKuY+tlpcMe5Ay3N4yHfYWYGz+0kQw/tA/zcpxm
	 FDPMEHfMVO/bPE3638g+PLp4duEMk0spJ9KvVTUOu0jHQiJyXywTTp38XBp/k90V7a
	 L+54A+8eVSQL6Av8E3mZ9dB2NKrivgrKunTMKrtqekvPUNifBpExKfUzzZ81UaR3n2
	 9N58/RdeckWCNNpZnXscqYpnaWVawwaxuz+rSuK4pP18MtfDqX0xmsE0001uz7cGR4
	 TmQ6uRvHLloWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6874CDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178193859377.14549.14139445666431710758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d500b528af5d0d2ba03155a25728859f0f2f13dafffa0762e58504dda6a564c8
Date: Sat, 20 Jun 2026 06:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781938593
