Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAE3205E16
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736531754; cv=none; b=LEGH3C7tTLG1IM2zckfNVrNJxJ2nXyWn+9B5LbBnvwsq8qZeOkyI2+DQe52MkcFVMrCTdfltTJgpoEkXZADwEZkQVo54jfJYw4hWFRafVmPYXHjjY8nINX+nqd8R7wsNcUiFs8XqeDvbhl/IPKsM87dykFmnI1/2gvb25sDnlTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736531754; c=relaxed/simple;
	bh=hPuF2VXJgUtNDhp842GGP5f9iIZcCPGjfsHL16FKuCw=;
	h=To:Subject:From:Message-Id:Date; b=FXuYLsBb1IWvQeAl3n1tk4WQb+798hllXwG4M1U8pLCVZCfALC6IEvpIVxhP1Wi0D1xrarXOx5sVt0//stLrAHCpxug9bHE3RUD+na43eEW7sNzyXFf9zRke/A7v8hC6TlVmoXeEyahet4NcLlG90y956vZY+SxdNggyQvXkjIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWdJUh42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWdJUh42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB291C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736531753;
	bh=hPuF2VXJgUtNDhp842GGP5f9iIZcCPGjfsHL16FKuCw=;
	h=To:Subject:From:Date:From;
	b=sWdJUh42XcgurRCLixlhCaejVOR1cCodPSmQuFpnnoCOmksdXAzu2BaMPnm6pveFG
	 wGHAuCOg9ufYCL+VsA5T1QMcWl7H8W4cIPFt6brOj3HHpQkOumRfFsJqTK97blLF3S
	 DaX33p+heusstJLvU/hqQbt2aii0lwZzUw55qjNQyFkYaZmnWehM3K6aGjOUbmH5al
	 CjsIzzze66p2RBNckW0SG1MeuBczKJO/gmxxCy5Tgtid3sdRmwt2OI7CL2XYUBEp3P
	 r0x49ow96Ph4q7pwNSIAED0X5l2ljidtxyt3Xq3eXIzmaZZimmkfAclYJNA+HBD41Z
	 z2XAuPlYIV1oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B65E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173653175361.27987.12915192101687475892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9dbe1ccc0dd01eaa6fcd1783c69c761288f798b7524b838ff6652b5b1a56fb
Date: Fri, 10 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736531753
