Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B47014265
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 10:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717928843; cv=none; b=TI4WvhvLYvE07MBofLA6zvz6URpr8pmitxMU2BB8keIgHgdDnTeorDiNNhQCVP537o+6OSXNI/lmol+v6sir6FeRkbvFTPxNcLMQd1/b3pxiRQinvm0ml4ihgHZ42vA3PlND5YYN2hbSJbTbii5QeXy1tpYX/j8m8j5RapreIWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717928843; c=relaxed/simple;
	bh=pggnWcIfEyQYENC8hqs2qaWiQtqWpUHrFVivvJgLAr0=;
	h=To:Subject:From:Message-Id:Date; b=X0ZlsGnoooHFDRksV1f+KRmUeEyn+Vq/1+aJaQ5YgCb6HNNAypgN7+DUSLwbEqU6c868Oz6MzzqCtyLxyMqpvbDg2dV7CsJsG1z7XEOfg0zi2ajndCn5miwOwWCSOWTX95f6dlld5SPwThDLB/60es9oMdilq4PQWQJpGEKS6qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5AUmgGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5AUmgGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E17C6C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 10:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717928842;
	bh=pggnWcIfEyQYENC8hqs2qaWiQtqWpUHrFVivvJgLAr0=;
	h=To:Subject:From:Date:From;
	b=U5AUmgGcn+PfQFQygDhOPpxIztxbjo+n6STrz1OI/WzEsdmQkwbyNbFIQ/8p18Fy8
	 TyzWjAwFg1nyq58V22/+nLm2ZTvbxQSfGx0IIwCplGkC5cbIlNxZ+LmAZFSf94O8HC
	 U4bP2YjRcJ6AsBPCNt+5lhOYv31e3jgC35hrWIzdSkaDeypbpj/DihyrkLdpeu9wrN
	 zr5GvWQVKcM6rU6Ky+NyZzQNHpW/myr1nro5aNTyUxWktNp5Z4QcEjtn6tpAgr+YHt
	 j+3kVLVmOxAKYOCbTQ/dhnsoubjeNfY3vhDYmk8s1Jwi1bUF/2p5ahtn9J8Qq32ufx
	 Q/JAvVtLME6nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCC4DC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 10:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171792884277.7710.5687715136200693352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e6768de6f4f1144055e2806b5be9ce409960ff9c4c43277fd8b5cebdec0e2d0
Date: Sun, 09 Jun 2024 10:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717928842
