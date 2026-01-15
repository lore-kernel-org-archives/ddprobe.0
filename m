Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8949E30FC05
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768460034; cv=none; b=p7RPjDcDSiCGdQk2nK7GCIcSG4O3Iq1y1SksI7yxFehn+WVud/ciDOxF3eQePfxzUEHCv4coHMSYOtXmkzbqxZ35I1D8vqEAfNc3cg8efjaK/B9w7nwE2z+nTq7T9d9Jnlbxd9yMZz/HXXUmVODYhbBkcNBzPNbTBiNRwoyFKZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768460034; c=relaxed/simple;
	bh=AFzUgHUBEL3Akm/6pLlULfpbB5HJDXjc+02KKZRzt/4=;
	h=To:Subject:From:Message-Id:Date; b=BBJrZzQyWtW0zuwggy0KGA/WMyDEjt0ED3c44bfOHrbk02SvsskU+ebMmFBniyvaJrUcRap6rZPEZeGH+W8MmljOr9cMXBIsAC3hGnQQBUOYCF/MQDy+LZEwoeBnukEfIfsbjCBx8ZogrRo7IbcnU+3DjgYxnyKdclngoJIdDLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPgKLtOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPgKLtOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE2FC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768460033;
	bh=AFzUgHUBEL3Akm/6pLlULfpbB5HJDXjc+02KKZRzt/4=;
	h=To:Subject:From:Date:From;
	b=HPgKLtOFF23H4IRIQ1dTvrYlneCnB8F6CST8dHPtJgrxLEBJL5bxghjxlEKVQ4GFp
	 49gL29FTnml91uRMUv7UqcN57281hv8k/YsBMfqGGwi0j3ufJ5sFjGsAF3V8I35IG8
	 2Oq+vj9MjVvUAsPoiVdf1pAFt+KZaW2e/P++NgJenUhS0y/nT17bUMP1MFtL6KffJM
	 /umBm9cp3TTxMJitrpymmvMwILPQwoRYd33jVbDCA6g3hzAs14RKU1KBvZhNu8DY1W
	 Q+HMIM8pLH5u+q1Rp+hqPZDt7cWRgrgqXpIVElNmElrNBCuticjSiTlvs3ETzxHRHe
	 Z4tD+wUcnYluw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB8DD3CCB2
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176846003358.18109.2485651335578549392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa6d6b46108ff4d404b68c2c377a3549ffde5ca9cd3048def4f6c2375f407231
Date: Thu, 15 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768460033
