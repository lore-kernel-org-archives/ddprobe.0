Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55ED37F
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720143923; cv=none; b=tbRhXMZpTnzvOb3Q1nGhAuJ65lGKRwqTHbKBGjtgbfceUDDdX+TkAaOqBg0kwToTThE8rkwh5s3YS0M9LMBZ/R4X4+Kex8QF8r5gsP31GMNLlH3ppfUxtS1pBM4NMy96kQn1CM52v2omE7HuqHKlASs+tUsNUXGq2psAXRb9AAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720143923; c=relaxed/simple;
	bh=0+6iSeH1d/tAJoKhXsDvMflDGiMAn7/q5aavReJO+eg=;
	h=To:Subject:From:Message-Id:Date; b=tRzknocJs4AFccAv2N56Pi6lj61woTX4R9A3I64bAVDXsKxoknxvlKQc8ki8xqTQHewnkiu71ZVJ1WsS7js2R1XUP1mDegnrEXsP+oZ2r8nBx/6n/VZq+YpdKkYDLjs/SIlMxX3oHmbkTjrCUm/izsfd2WgNhMaFKG1I5OeJJwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVW/QPOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVW/QPOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B3EC3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720143922;
	bh=0+6iSeH1d/tAJoKhXsDvMflDGiMAn7/q5aavReJO+eg=;
	h=To:Subject:From:Date:From;
	b=qVW/QPOKf16nYHlbiZx+yR51UIAk+99lDNriFoZ37NoLKT6/JoOprNeSAp2917fWx
	 Ma4N3d6HNhw7tG0XtOPiOKil7PLjyKGpuTMDz+9lg6rk9A2Wl8Ur7AGXLEZx/F+eTH
	 eRNmJcNn0NyNpzYbOECGnuPQ7XgO7HIdSyEghExS8e6vEgZQcBed6W6lZw3xRlpaDs
	 DTBJPu2OE5UIDYrbJwOF/6CDbIq9R1GG3PXrc3fgj1yegXlgvoHP7GMwDNKxKKl6XY
	 nU44xkJCz1Xe/i++pGY2XeAAbV1oVKk/0kL9VG8Eu669aVUEutUzFWbYNhhqIDf9fX
	 nc10vdFaSSV7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDEF6C30653
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172014392277.26523.543373023375017914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd636229e713fb8973cc56f264dd89a6b10302d3a15565bc26205cf5dfaa4806
Date: Fri, 05 Jul 2024 01:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720143922
