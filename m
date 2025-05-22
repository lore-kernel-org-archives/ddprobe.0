Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381221632CA
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747886395; cv=none; b=F8LHM5/89dXnuikbHlJXz16jqB/MFjDcPIaGlSz3iNtsKhGQEDsLUo6oW8ciDpx/cg29VmjflObZEZv1BK7GhxBVQiaUqAJHsiWvou7CBNW6UDrJGrhmuNxBdP+WwmP+1VoOOc2m/9PiRcSc+evaBBj8Gez9/qXABMgrSueHtwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747886395; c=relaxed/simple;
	bh=kfcKPE5XTGrRYLsZbGLs+9Zz0KqXTSxbfvPhdKHJHAM=;
	h=To:Subject:From:Message-Id:Date; b=TmsRZF1FdlL13LuRnngAjnvfMoY+S9tDAHyN4trLfFuqrUq4u2A4u6EcbGAQ7nfA/Y+OOlePZ6jbdFwE40hh/I0Zd/gywsYdm2T58G3VqdNhxJ9OutSHUm1GN01jYXrVYxBlQuLsmgNtvmFaLcfVkazz+xtA5DjOOI2gyy/rT+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLHtHk39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLHtHk39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59EFC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747886393;
	bh=kfcKPE5XTGrRYLsZbGLs+9Zz0KqXTSxbfvPhdKHJHAM=;
	h=To:Subject:From:Date:From;
	b=eLHtHk39ypeybcr4oQp+nU7zNda/ETGUTcf3c7nDOWFtXOeLMgfjPJzA1UE6iV/R1
	 vGa3AJqJOo+QHPg1x5geMJbe8jxdnzST5K+CBjupVm8RN4UEfqTQrBQXE11FmaZ3jH
	 Gm7gweKQsl2ELSMoTBqJ0a3Ck+ao4cXEqw/sWnwcRhwpSe2d1UzcizZT2cWONWqG2i
	 szUSKR0tB9GZOqm55UUzzttZ6UwX3ccgXtvF4GnzsZrfHEeHDyfB33B0T8BqCzebaU
	 T75RMkOXzt3aF1xUhlWgMZqOPVvsasfZsvDpsf3eVPSVuqmb76zCGJaNU1m/91agea
	 fKK3NeNQ8SIoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ACAC54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174788639357.11466.17601830652879610478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2a434ec28f0d557b9c98c0ca5b0194dcfc7b227495b70e133adb8c674fc900
Date: Thu, 22 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747886393
