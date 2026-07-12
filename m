Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2172459E1
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783847314; cv=none; b=ad7kF8SDEVRhagZj91HnpQDBfdWJ/bP5s0AJN+/vfEb7u2RxyzWSs7LMG0j/9JWiCIXsf7mHYlGFylrkDpPH8v2X76bgr2w9kx/wB/mC6zjz04Y/m1v+Or/br1MXbIHOEq72k31Z+IM17VIbSut+iYadZF8KHr6e9jrs+t/b1Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783847314; c=relaxed/simple;
	bh=W3w2L/X3xE6TnHsiAD02kxEhyLFQafkUEJH+l83AByY=;
	h=To:Subject:From:Message-Id:Date; b=cM08BLinoGEMaswMtwqwnXDxQY8Fqg72WI6JI/eDoULmRF+EvQ19BS/sWU1Q24vt6eOAJaTnk4HWt6rIJJ/aiOp/LZLVQZ1O+irjN4ClKolNfmD7OMzvCnnN8KcVmndxK4uzJD0KAH7sTduHDaksuhh0H7eBZpwCG99thVQT8iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyu3oOK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyu3oOK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA825C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783847313;
	bh=W3w2L/X3xE6TnHsiAD02kxEhyLFQafkUEJH+l83AByY=;
	h=To:Subject:From:Date:From;
	b=tyu3oOK8TjddWP1uWLUPQg1lfdbjf+oaiRPM3joWwIP6nntqcYOggs4RgbgoKuv0v
	 f7T3QFxmwK4zSrcLPzjBq22gVdJ8dcAa+GG+Yjmnaw1c4Lma+k9yPNZRqMri0alivM
	 wxDXsrgrPgRlS6SmUU9TpNx4SUcaqhKlXpMKOXCt1Vbsky117mMBYG7IVLK5n1mjZF
	 DgJ0EefosOwYxCKoE9vVh8kbr6UEF/d8Qfp+H6e5qrszTT0BeXFV8vsjwaJV82T+hd
	 KNjCKlAJu+7UfS4DSB9xyNByCdWlDItsyMoFXduKpVZ881G4kwlTAvRgOscXaXU+t2
	 Zr/Uwr+v9GKzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E79C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178384731368.6357.18277636726236478876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700c5b6188f89b114a86043665f4e88d8a85e06250be8ad62ba5cd2073d7beeb
Date: Sun, 12 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783847313
