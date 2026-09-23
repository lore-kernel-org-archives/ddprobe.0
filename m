Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8A733F0744
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790187634; cv=none; b=MAM3TVddWiylPGLbWZoYSbxfOd/Ja3v+Ighuc/nH302Y3RDhH9IzHHDyQKwRy7giZLSl+wzD1IBAj+FwCA1fJHim4bg0j/cO84dhK3CCTyfbBcvh6oEZWWl4L/8S2ZZeDD0/0VngBrx9ZO3KPQdNO/vONOC75uPPefS9ILjnrmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790187634; c=relaxed/simple;
	bh=iVRsiQc7w9rvO5czxyggjwiGowSobrO90C/p5MetqZU=;
	h=To:Subject:From:Message-Id:Date; b=Gt/JuDSmcsuu4Zcx06DymtsPOUXbAzGVu27ZVQx5BxYlHSCb0doFC4z6p6D9OXeMSZfOsZfLs+XBLnA4BnP61HE2PUXhoz637JS8YsRlqO5+TpH71sWzOyXTg4YRPEp7r3wyBFHGQvPvQqREZeLzHVhgtJml23m453lQ+tL05NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puze3eVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puze3eVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BCEC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790187633;
	bh=iVRsiQc7w9rvO5czxyggjwiGowSobrO90C/p5MetqZU=;
	h=To:Subject:From:Date:From;
	b=puze3eVdB2ktk8Ww4/OR77Fa54ux1MSf9tGWHfZa0omcU1HLKMtMLvH8B9oHMIRYa
	 js+hVhjIdY6NplXiiTKD4nmX4RXh4BsihSESq/UCd9VfJdAV8sAMNqU/eLfy3Iw6NP
	 UoO7bc/Z2gggs+0H6kYeAVeg+8fALebMc+K4aksTo29V0d12e647vS+PFKQbagC8ga
	 pAtEDNvTlcm7eT9pv/wmzj53Y6sq6dSpLmals0TmDUFO5ehtMKhOMdyOCtS5HuUoKV
	 Xhs/r6C+X4fRwAsZrxJTZewC/wbJQUQbqdQpQgtHAU9FHSb09+drffaEqZOhabnqMF
	 ayxYwFrNnJ6Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4A6C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179018763370.24174.14732537453382097491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 127e23f2e4e7b40597a204085b27a714f9c0aee70cc5c808ba76e9ab11eb3da2
Date: Wed, 23 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790187633
