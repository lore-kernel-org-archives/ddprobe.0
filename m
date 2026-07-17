Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4A4231832
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784248714; cv=none; b=dHyfsn4S/UpIWBXXZKJIUN+/JzDkPgjbu1CgmPlP+IqUNuEtlMHEg/Ncf6a1M7LneiqOz+GzmDp/9BGvd48Sx6bcD2AAfLPsL572E2uwJrdq/Jj7knfvtVc+4tZDF30uQhT8xggvS46/nxLeSmBdxvO0VLRafQQxCBVEUnxhx4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784248714; c=relaxed/simple;
	bh=lbMbtCHkg+pUPAEyXc0wD1ld1k38vLiEmtTnTHdivQQ=;
	h=To:Subject:From:Message-Id:Date; b=b/3C2wunZJWMaHWefWnNbgIdtthtvnf9tRH04USwQzUL/9Q55z2tIdPSnYCT6eUfQLcsSfockG7jCelWiukTZErmerGipb0MYNBuerIKmk+i3FGKfF3Io3AfvchoUQbcMEqrtbz+w5cvs40pgYXKIvsIKgw164Yi958BgZmoOOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ds4GZWV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ds4GZWV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2CDC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784248713;
	bh=lbMbtCHkg+pUPAEyXc0wD1ld1k38vLiEmtTnTHdivQQ=;
	h=To:Subject:From:Date:From;
	b=Ds4GZWV+a9XGrBZHM1vq9cT/E+94Kgv6D1/Cmg88YuzKrr69B9PBx+gnL4AmAfH4v
	 ka091Xpplavyg1xi73ugyCr9g0HM/SrfH20uhHL7jerY59Nzss3BgsgM2zX10/qUl6
	 3G70E5NckdeSRh58hssrVRhxzt7snn/d+nDW+uLOKJ4GOiCLhkYiOBVDTOYE8tkU1j
	 o9m+FdvhDW5ETP78tNjWxomTPD1CGpjQqLlC0Gc/S14CyWifpm+AR5E1OatN9NgCli
	 A0jfsTiRKUlDgnRn7r80bjwSWih8Ceg916vfPE8QZ7HK22pOuGDm604xk0hIRka4/c
	 ri4zXswUuJY1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD981C4450A
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178424871368.29027.8904847620475852105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1637b3b5564a5630618f785b5bc9909fbcfb8da896aea21998340fd0df5518
Date: Fri, 17 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784248713
