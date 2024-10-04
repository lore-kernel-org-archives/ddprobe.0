Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BED513F43B
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728033354; cv=none; b=XOu2GenaRa7QpH4IYvxgSNl3XUvAOSXJA+ieoWv6q1uB0FoKQIuE6JRZt3obdcY034cGvWI21wS/rXEZvlas+B+6YsCB/z6wnizm2GKCiGpHGsPweyJ0hznSSufAkKFVpkO0Si3fvKYbyIOwLYemhr9NjSJiNNJgp5ZYsvxHhuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728033354; c=relaxed/simple;
	bh=FbnqdfRjOP1n2BbFrR19gFP17MMmrIxwBYo+RTdD38w=;
	h=To:Subject:From:Message-Id:Date; b=tkvB1uakaZZkMMt+1sqm/Q8Tx4jaTvMwMuaWLXW24RP6+q8aQdYcc78RWRG59o9thJol+lj8Dxf/9/wTvLijrfQTizHwsBPn6PenpHwtRZcP+PoYF2d1yFTnYTYVAhupZVqm2efmY0Jszf0lXp9XLcDs+fiR8g3BuuLv28xmF/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDn3CZoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDn3CZoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7479C4CECC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728033353;
	bh=FbnqdfRjOP1n2BbFrR19gFP17MMmrIxwBYo+RTdD38w=;
	h=To:Subject:From:Date:From;
	b=pDn3CZoVaiiAij9+MPyxgCAKSZAVKtT+JwE+LurEeYQ94te3m/GE4stZhxBG4sjAH
	 gx93YiXJ4K2W/R/gZuikiqZSKgvF4cJ3dPUkJoSCL5pCov+IkYEGq5MQY3Hb9mfQxg
	 ROpkUNUTQgFgyUTYFDxXFonfIygEfP04d979b4ZbVISjukGg1rgvk4SvhRMmbBDyQj
	 uydMYfcDcoyzU/a6Mwwve6WoXk8G1AHBEjm3Y3x2hYLEiGB/yANZq0/baraXnaPwqN
	 9h5QSctx0yGhh00FVo1Z5zzhoeIALK8V606S55p7viw8dvnYhOP0sfVL3D+tmx0tVR
	 IMSDh4ZZjNq3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97656CFA754
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172803335361.25899.3723761403396094260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74b5f9ad6fa4f540b5ec685123c9e036e87cba5eec8c73810322d74a66c318d7
Date: Fri, 04 Oct 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728033353
