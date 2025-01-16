Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF93E1482E8
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737047753; cv=none; b=vAEVRKTgCGCwNNAHvsyetH3X4dxTKNoXBndLw/5d8wuSfN7ua7JUmgxmdOSadUNZ7XSlk5A3zQrzeN60YQHIqw8gIkiwn04qThl92kg3/Gm+oRqW/N917Ca/L0nhSahncDqMsX0jyRseU+gM30LwmiiXFELt8fVFvRGNklYQBq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737047753; c=relaxed/simple;
	bh=2wpMfYk9oNlePLYmJF6+QPbi3ahdD2hfFwBBlPq/naA=;
	h=To:Subject:From:Message-Id:Date; b=f14SiXKBleu/agmO7ft6MfUCoL/vOLFqmuGdqOL/ezLT9aQ+Nq/83+GaGCVWSfG76OCZsHGSOvLMIJPVx07bUELgBANwpdG0pXx5B9IDmSNumg0z4vthW8Tq8uBWlFvTmND4PrLnxY3wOMVjAFRONg0HJrwYVXrfR0lKwY1GUtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUOUGK+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUOUGK+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE69CC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737047753;
	bh=2wpMfYk9oNlePLYmJF6+QPbi3ahdD2hfFwBBlPq/naA=;
	h=To:Subject:From:Date:From;
	b=CUOUGK+IgLuUi//czYYAmitWEw/2tDstAJmM7tC99HdcWEgufyBRocYIW+2wsnpVP
	 n6bBrg6v54OZjQM3Ut5OIIR3uDjCJixcPTL1qUSxVrSoPPMilIBWD7SuOIpXeUeEEq
	 p5JPJ905LmHw8NdfhAAAqc8owpp0KZ9AMEvpx4rF0kZ+p0tLVjtZGa8DzBHF/FVNQ9
	 GZ8WHhgXLcCRGuFjzAsQGpqh+ZoIMZqqHFb+jBgMGj2u2eYOTYX41c80VI9knDDe5x
	 d21v24bDH7J61NVfyXpjQdtw/5iiuhEgRnF6sQ9BddkFz4yMnsmbmFsAhp83+8QXyk
	 5WholXQyDYd7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC98C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173704775362.15029.14534102208418554258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a863ecc187657a1bc7a15aed35edffc92d8c126139c33ac5fafae778c44274
Date: Thu, 16 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737047753
