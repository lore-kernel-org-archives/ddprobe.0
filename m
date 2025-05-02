Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324A019E97B
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746195594; cv=none; b=pGFhHnFQdc1BJxr0JSWWNrJRMxeODXu464GruA+XW0LX3/ROmOk17IBR09REMtk2cdYDfHyov7F44RAhdAouPc2Ne9i3MY7F8D9gp09+j/6kx0f88+MN3kiakcIEwZTDP/NvRH1fMb7hiERn+K3jN/IV6qlXXk89Ash2l3BOx20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746195594; c=relaxed/simple;
	bh=9drv10v7tD6NC4RZe5Lwank16smyP3tRKvUTFdCGcjM=;
	h=To:Subject:From:Message-Id:Date; b=Py752D6Hwq80wjPRStNw9fyFnqMPsWfL+B+am++ov77wij9JZ7bRKuYjlh6aPtZQilJtPJ1+unLTbXDCcM2fvqzAzkZMtiAsaQS2cy0SuM3VHCBORY8/ZTk5ivmDGqGLnWAdxJPZFih6+YmpDRlJb3oBzeg05T1sqmqey1RPhqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zj7qkFTR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zj7qkFTR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25CBC4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746195593;
	bh=9drv10v7tD6NC4RZe5Lwank16smyP3tRKvUTFdCGcjM=;
	h=To:Subject:From:Date:From;
	b=Zj7qkFTRqRYwGJGiI+duII+z4FfO8HniFDNlhZD3ghfr4MPEx2+zN05TeOGwqC+Cl
	 YPb+g1U6Z/LSO9FFk8X7VGYk2E8VBWYQR2oBZRa2CTqb/wCJBFY1XmF5GbE39fS5Yz
	 JuiO8zNJuOEXAB5tD/0Xint4G1lBU06tX7t2PH5t2MkL3rUO1EJI0z5AM8JTE/EjtS
	 KKSdaZxb0y8mbmwRb3heKMG9rn+Hb1fRyTagM2XDH6cDC1O48AXVlYCEVBlIbvE/uq
	 v2eq3Q/riDFR0BcKJ8OBHSx7GEsTml9660vbKXRqYlSGbAA5s1hotfbGIBbjv1N6j/
	 zKjF0x4GNubVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D28C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174619559358.15411.5963802202036313292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8a0a751c6e62bd45d722f04264be0e65f015d3180449b3ff86d1673670f5e2
Date: Fri, 02 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746195593
