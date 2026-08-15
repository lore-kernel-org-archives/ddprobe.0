Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBDB287246
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786758634; cv=none; b=SWwELX35Ow7PyTWMhlKAJzBmiza2JNW1oSo9Gu4SPEFfqwKJAv3kLJZ6SKvcarAw1PoeUhdjp1Phya1yEjTYErKMpYW5e7va0+9johtOc/jQr+hTDciNYI4yuVx5l1o9YD04zke5ai5GOqUDqFh77yj27ZnhaMvQOs7/EdOHrOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786758634; c=relaxed/simple;
	bh=fqpP8FRk+NLe6nT5fwyx1hlQNn7uuUTfQOTV9pfCTeI=;
	h=To:Subject:From:Message-Id:Date; b=UGJyOBy6hT9vKyDkSG3tSbW01bjv1OY0bOuVJgWhj1z3gnBlH5te317OObhw2Q6KFsOu+UoJApdDaC4QKhUtPReqwKyRVyP0JwFZ/gc6JiFx1Jx8kN935JiiMJRKM17Df0hfW4yz/eq2AQlK0FMpEvAlNH+X/KhnRqWTA6P7BGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHE+2pz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHE+2pz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4608C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786758633;
	bh=fqpP8FRk+NLe6nT5fwyx1hlQNn7uuUTfQOTV9pfCTeI=;
	h=To:Subject:From:Date:From;
	b=eHE+2pz/RVRBwoVCAXTxE4Vmpr752YIT3UjCX8cXbJupp4XQ38Vsyha/IeSI2+HI1
	 CCWyULk2J6L3xPrMVPGxvsIhusw7+2z1ruFZlP9uvCobmV6k8gMF9ki2YyMI56/psi
	 U3ahByFTDH2n/LBvIH69TlQ/JK33FMTLCsWcEqquGJN8l3p/gMY++jvMhdG5nf21ay
	 55uE8ifIT6Mc6dA9t5pPzoOZhPEJX9UPjpcLf9qreW+W3dp9yrgncMKA4VEr5IRIsZ
	 uW5hAi8akENbbg6w2zJd1DUdlBepl4bH9b30BeM0hCR8HKojV2t1vKBMAyYBqYJ7RY
	 w+CS7NeXRIt2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8C1C5B572
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178675863369.20712.9427996009392433516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 823d99f146c385a048e15eeac9c30f8007bc1e310e99d004b5f6ba451f7c7d40
Date: Sat, 15 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786758633
