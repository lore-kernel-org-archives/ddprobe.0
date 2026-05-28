Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F8734389C
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779927754; cv=none; b=Ccg0xG2Q7gR8OMORy1gnZk6+TSsh8xTzdIYoEnmVdh3EOJzOkt9MOglOkyGwbAF1/37wD2i8MnvhJsv1ADiJ9ivMX9R9AqrOQGIK3EwB5i/SJEhnmtHniIO6hkYGR1yf+wuXGNHexMg6BTAUBAC6QY4ArgRpPZNAGnb/kBIkm/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779927754; c=relaxed/simple;
	bh=wE/xIDZfscqirxrtjyYzc8MLfq3joGUrcm7mWsnPEbo=;
	h=To:Subject:From:Message-Id:Date; b=lZO/xSALYdXMINred2NIunaqkwz8Lu5mhvNleoDoXHRGCCZpag5VuD/1YBvCObZUKc1NJarWDKf9sJTkYHTCBIfqEgakwLrDUGqeX0iDkLycW7I8mMXOeW6sR4JoS1ZlwhoUC3xDtYb5f0ACIl84nbH5EwIHq4YE4WbejbKWraY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qK46at94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qK46at94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C790FC19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779927753;
	bh=wE/xIDZfscqirxrtjyYzc8MLfq3joGUrcm7mWsnPEbo=;
	h=To:Subject:From:Date:From;
	b=qK46at94vcPu1f27WnluKdFswT1vtOsSrYJjnmVRFT9/faZAN2XZdoxp2oRmP6q3n
	 x/9I6EPhdYlF9tiDtfpDyo2tE3eqbluCEocKD3XYbj6wYl2qdmOhAg2N3FgBLy+ooo
	 kr3rZIR6ZangdiXxfv3PsuTSM5MUljr/pQDgfPhZabAlmNfIG/wmR4Sd1NBTQYuET8
	 tdMNTQlo6B6TnSLZPbNMG/H3JoMslpm77vzvge39LV9AJ9/Y1hCaFIsy5Ldyns5xN7
	 drNZ9+uXQLCTv3oGsU+Fm+En5T6s0DJOlD+DP5+ogMe6BRKQubHM3aCZe8jhElCH3d
	 G8eWOef9RBi5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB025CD5BC9
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177992775368.6708.14380629639483661913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b638b8a93f75ded6d4c35737e0f012cfa1e585a303208a3b1a73ca724cc6b49
Date: Thu, 28 May 2026 00:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779927753
