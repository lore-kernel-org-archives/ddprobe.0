Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343CD182AE
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 08:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722759955; cv=none; b=QX9dAXX8TAJtR2xO1XV4j4uKxifRnFCEIAv0JPpG1br2BvdNKGJA27Zo14svSTY4DlOo78m7dbmYK6xE/Rt4AkQl3e97f/8h/D913nc9jfGUDtieBU8Vq75a0aA12wlMjDwe3yMeYgB/fa7/66BvcTuXR6p+hX7RmZem5dsRhC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722759955; c=relaxed/simple;
	bh=pUT9SaLU1/Ywq7lVbzTKTGJNhaENwYiN58EcCNQFbEc=;
	h=To:Subject:From:Message-Id:Date; b=h1fuU8Jm1Vx9OTXPfHJjrg3WGJ8hjzxTfx1kwPuO2avROi9o7BLg4CXQZzaFPh/mJ7pgx4/eKVABIVuuWoGkT1HioacsmgfsfwaYNNVZYx9wW/iXguxz8VyUY7kXBM2BmaB7pvFTfBDDyY7CuueWt0cZyHU6C5+yWn2QwAOT10U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAknCSiT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAknCSiT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4444C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722759954;
	bh=pUT9SaLU1/Ywq7lVbzTKTGJNhaENwYiN58EcCNQFbEc=;
	h=To:Subject:From:Date:From;
	b=qAknCSiTncSheRvTnLZoBHIfP4KK+aOQO9W6OSAlAU4j84j1UTfkBd3by/mju7Qnj
	 4QioGH85aV324SfGc1xftSAXNZ58Z4jyfrT/KNYwJQc+NhDv/uH9ehoOO2frAkfoFD
	 ipWh1EvTt5csXaKxG/XdATlGmEF3GvMMaK+zWt1GP6vZWrdbcMVBmxXEqKFe2DxLpw
	 LODnhYsqGfR1lVleUtgaF5mS4TcH1PEMML5+D/KsQZn3iubmPDGbu6RbDL1Y1Gojoo
	 LM2/B1EjyFHn4n3MY0DLNo8lIMX/z1G6z9zzwi4vQPlIb7Dqnb9JwoaVTdGFAjMRw1
	 qJ/G2MgwD/7+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E123C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172275995362.14451.16739202355346358120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d5515c1f1bbf4f786560f6548048138f90a629b45d976e0c8da3f82973fd5a
Date: Sun, 04 Aug 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722759953
