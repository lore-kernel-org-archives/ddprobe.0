Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388113A545E
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788269434; cv=none; b=DzMdZat5Asr040zFvYuUfKHWG3KoSzHBT1LSLOBvIeCPSZ8q/ICKr3Bgc8MvmT5ngVCDAtMU0CJAVYTc2uxslomSKXemcFHNDNhJfqiQfzi/usYWkbHBCn9vwKQxeRDKM/YF+A2n9MHY1t6sphiL1FM7riO1J/yCE/njDlw7F20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788269434; c=relaxed/simple;
	bh=ZJPAR3W+kNgS/vpYSxZCuojOT/oqEIDsPz6QBvZ3Ots=;
	h=To:Subject:From:Message-Id:Date; b=G28z4J9CfPeFO5eIaI+uz5+mVrIEX42UL2LdcPZd5IKiGljyhP7KBQHoE/Q+ofl6iMAhrt/DiFK8o5FVsNn7m2XU4dPXM/k/5Z0kYkPR+25wL9QlJtTSD41juVrk/8aulMLnc9osVjMglBxDgOODiTScHjJLNlvYgtsITMX0DbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnoHVqFP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnoHVqFP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD695C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788269433;
	bh=ZJPAR3W+kNgS/vpYSxZCuojOT/oqEIDsPz6QBvZ3Ots=;
	h=To:Subject:From:Date:From;
	b=ZnoHVqFPi/NnSGeQ8DGIlwt6yszWe+EDsCpfoStgxwWGyVOZS00egEgIrosG4ORFb
	 WWJEQzt3RAaTqZrpI0JxCGjtaRXk9a5Rr/KpnckdMkYXOf2Yk9NvJJja6RhoXxRaLB
	 xx2vT75OMbA14fNyANsM8pToaRNsI7fiajTKarmYGnKs0Pr/KT4dKZCzoIR9jaxqtb
	 sehm2lYl8CtLjFCJwyrDN2E3X+ADgGzbVIiSyc1MA6TyV5GTEuNWgzbZlpJSScQrlb
	 zZ2ZlOCbKdTr0hnUiN23z8IbEYJbTYj6bBItgX1veXoq56T5Y+1acJ+HWMLLW8nVgM
	 We6SlTYyys1gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB80C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178826943369.19541.1159094904938726216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38816172805d29bb7bff3acc04c0690c6a432fcc0c494289c0ea2880a4e9a5bc
Date: Tue, 01 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788269433
