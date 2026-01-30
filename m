Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D50342C98
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769789034; cv=none; b=lGnhhIs2yST1VuDailGQQbSvx8yFLcpeqksh26ZkMz6R2jx2/1+NHnFIBsBYItJqpR+4g7/tzosyY3eoT92aHONQengo9FyYxgJwxteuZZ8t/Jc9rC/Dek7wryXOybv0DMObe7aoT1hXvDRh2SmTIVMtVBgxVLwST/ootHzG3FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769789034; c=relaxed/simple;
	bh=zSnqZ7TYEQRjG9firOW1hZq/Leh+2XBfYbV3DfGG8h4=;
	h=To:Subject:From:Message-Id:Date; b=EaDNbStgTBtbg835W52udII4zzaN7J1j0n5S2/9cXSdloX65FDASIfDOIRToNsHCxOZeVkGk8ZHpAnyqTpSyCcdrOMtvBw5a0ISaCAfS/jJVIU9Et8076vcG1NsuarmpqFy73JMP+bD3uQ1ayoYq9artC9l8qKTdJPhOnQGm4fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTYQ+9oX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTYQ+9oX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5C1C116C6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769789033;
	bh=zSnqZ7TYEQRjG9firOW1hZq/Leh+2XBfYbV3DfGG8h4=;
	h=To:Subject:From:Date:From;
	b=cTYQ+9oXJpgp5yD+LacfomydDRAX0MGzdtB9xy5P9Pf2wCJzy2gijdmnWBIddozZb
	 lwoqAfOArVgTAh6Tta2JCdMnscNQqkUTCqjQq8Nvlx/si51cbI9jLvKQbdD/XJCicU
	 jrxNuD3qNAqtyBBWYvHjycCLfCBNYLyi67nQk0KkJ6FZzTIyWbibUWn24U0eXJEqD6
	 u14WGo9ZRTuFG4bSROawQHalr5S7yNzJ1khg+4PWibwrv45jtkUVFHD3cCNoWZQWvm
	 ml8yipjfPpZzHqfiuMvjDg9bBJA1v8aKCXB3dgg+Srl9SEX+4wBu22MNT82ggD4ddc
	 Ph1tLsvbuaIDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A8FE6BF22
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176978903359.19685.13787056653293474138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad8e63d3b298e35f790bcc3082a4b11120a61b610ad6675283f56a6d9b865324
Date: Fri, 30 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769789033
