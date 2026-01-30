Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFFD20DE3
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769780034; cv=none; b=ZbzsFW/1AhXiRA7r43/Ac8Zp7n3bKiDVFjHaDBBo4bDATgbtrlK6beXLIfL0qjT6nm7je+hLO+L+ms4I+JWC+bZxrXxlawC20xFdSijms7x51lCNkplzT4QdsOPvkKDcw95p14jkkoOfaZJKPO20EAGd4tap3qxEyPQdIedRsS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769780034; c=relaxed/simple;
	bh=WgPEnZyK0bIpn7MJKSdWce8ML4bR47vPsb+Ea94Oco0=;
	h=To:Subject:From:Message-Id:Date; b=HefSHadew6PvZJwLgA4PV7/Uyko8ORIRtHdQ9gY4fO0bs5MuJo4v6nWmeYAwrneMNcv58GIVO6B8yyxrYMr4+nI9XLrym2MLD1zLGw8fgV9Cw08lfl32DpXV2xOXZWZ2XJKYGRit+wzFzc/+ap7Cmw8TsEhz3mAWCKJ1H/rLt/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2Bh2deC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2Bh2deC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37B2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769780033;
	bh=WgPEnZyK0bIpn7MJKSdWce8ML4bR47vPsb+Ea94Oco0=;
	h=To:Subject:From:Date:From;
	b=s2Bh2deCpbGZiOPoRAoattBUlBYMtjOoWZvcS0SGZx9IUkuy3ppnSaN88vKg1N5pp
	 bZvLG+UOD1uGOWUjNUaKGEHYkzyux0qzMuij0ljpeCUkBsVAgw7K3ligMTpI8JULa3
	 xNpPFdxVTTGvx3PB+KPDCTIwVBazOF4DNdDQFHymiDO0/Ulren/B+relwBmu4o4l3I
	 8nib48UEWtDGfq+XKpf6V0wvz+NiJRDuF3p1rEpfPMrbA8HcRs7j+6Sw5XZtNhLuyl
	 uf3k+jZkJs4BqZSWkkIINWSzXfLWHXCz4bdWt6K8aGUWnmWLN21/S6GgPbtgmcwdPd
	 rT9pkTiZKIjFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9025AE6BF0E
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176978003358.15828.4039093939069533154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2fb58e8055feefb9c6dc82fcfb1a2c7ee246951aa29031e735a7c028ccb4f78
Date: Fri, 30 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769780033
