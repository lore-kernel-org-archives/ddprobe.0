Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF3D1D7E35
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746864594; cv=none; b=npJLPHbawLaruHLe70Px6zvBxFz6Az1rkWS1g4TOXg6ruQ3MssXGmOsb+4vkViig2Acxf7XkUkGMmSHcYFrSv/SvWJnXl1EMT16xu8PwdOk9dZ1IGJ44Xm0KHMYZXnZlySSVs3Ak2GK3z18tSFijLeq308z+592PlLZT2i3PsOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746864594; c=relaxed/simple;
	bh=7SVwD8msKYxkCSW19ccPki4IJyMjygW+n7Npm8WjVB0=;
	h=To:Subject:From:Message-Id:Date; b=eluPyp/HIf0bLT5yeOFYXJ0Y0mc0QLVS/lxEqrTN4mz528lO5FdtkXkt6q1jSUeocQ64pWZy6AqD9IDBqQCA5CA9LhZQClWbdRAFMWjN2BEHIhVgBH6jaqiXN+3UDCAYmb2TS6Tgkctexh4WYKLljj/dN8C526k1t2OEB0V2DwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNBhginn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNBhginn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB9AC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746864593;
	bh=7SVwD8msKYxkCSW19ccPki4IJyMjygW+n7Npm8WjVB0=;
	h=To:Subject:From:Date:From;
	b=dNBhginnZdwSPSJug1KbiotMtEoXH/pnAZ5fFL/O64GOuJzXMuwRDXHGWKPJWB2Ub
	 hL2J7qZwaX9myaao6+1Q5yAuZEVAs4YVhezk5YmPN6+y8q4L+qzVdyRc7UxB1eBZiF
	 ia2BuU1GCitSRlLeVipF13VFF7zHo5x3OXHUpKqO/+arD1eQurZDZ67zeL0TVUFwBG
	 cTCweo3fkrXRVGhTgS3Igjtop3uY1WsJwP5h439Jnv2pvsCOwgUBWRFXSvYriPB/1J
	 3iW0KFR7XvY4gpg+yZMseu4FAfMuKQVIWd0e9fktxLDq6wcNgThq7XmviHUNUOUqXR
	 J1LJmzHAW4/tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F096C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174686459357.8270.14444038233867077443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f718cad08546a576505d845a5b2923cc260ff869f9cdc271245ca78a4f36a4e6
Date: Sat, 10 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746864593
