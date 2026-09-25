Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4AE389115
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790326834; cv=none; b=Tn1OOFN+j4uKRb3vk8W3cJ/X/nXDoh5hE5oO4IUxih0gSGucS31I4aRPEvZ6BM3trlnY+LO62JbMEjLpsMG6fCDhynCdamykNDZ6kV3D3bcVEnCOx9COi7bojwq4ZfB7jMWw4CMI/ZiCUVt/9YPm55TaTUUN3dl7UDmDwhtQUf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790326834; c=relaxed/simple;
	bh=yLnPKqwU6t96OC2Vs986ZrOrnK4SpSmP7Lp2PFUBj6w=;
	h=To:Subject:From:Message-Id:Date; b=cJlEOrPVnpv+c/VNUtU+xkHzpiKVsUrINs8vxIlDe3wVMS/etLAgrZLxAGuIZzkFHTrnpGfO/5VAyvzCXel5TQ06Bek569+LUQbtduiWcsCHgvCX3VoA7jlHwn7U0ZMUzBn3gH6dNAEz9BoTK9kRVpANlyG6Fh5oa7QA6r4+frs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOB4XLUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOB4XLUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4463C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790326833;
	bh=yLnPKqwU6t96OC2Vs986ZrOrnK4SpSmP7Lp2PFUBj6w=;
	h=To:Subject:From:Date:From;
	b=UOB4XLUVwNknLJqUadki/wbQSjuKRmfSMXdRXmbCRpc1jGdCDj3YqvXz6isVpfREU
	 ZsguAtapksQB9NYNOk+q5v6RvgfYlfZdl7Pd980F9/5Qmb8UkIyOzyLLWkiE3S+a+a
	 1bOEMHwyum1+QEp0ptQUMUWOPFqdmI8QN5U/jWzNy3ueN/7u5EtsmrZgbyTjwumrex
	 2dZQ0nVDS8rMKkIMzAGkKxBVlFFYro1A+Ak9u8NHleDm1r/PSLaxnc2pw4hvfxwQjC
	 7/oTypmyBU1x7Tv/q/Ed0eK3IAV3P4hASArnmUUjun6qJDUVyblZLkAxXxwtri2jMx
	 R0Kv0wWBIrdZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0812C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179032683371.6099.15813248678563801039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb5a16738f0eb621bf1c5df6fc2d1fe015ea413278d1eca6be32acc551229456
Date: Fri, 25 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790326833
