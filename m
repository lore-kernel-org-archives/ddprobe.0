Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB2DE556
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 05:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717910843; cv=none; b=uURfEm9iM/hFTKdWFmDDs0RaTS5o1zvFrwp+1/kjcOhxO/MIuz4UddhcQCCzcGvfyy3C+ZKRmon9SKhjD9N6MUNei3FDN2BckQxkJWQGaPHMV0USOZmZeboIynIB7Fm6Gsz5J3fWbCGZaM2BGQyqGtFgWttoHyh+WG8rNqjK8co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717910843; c=relaxed/simple;
	bh=U82v0nB3xVTB/EcN9Qz1m9sYjYPKYaViE0W+tFjiI9s=;
	h=To:Subject:From:Message-Id:Date; b=lfszjtURgp1VfAJAq/ksBTbMCmEmJ5rlaog4C64D5nE5vy2LSo2JTFimhyNkWPSBUutwVuu8GLQGC+Jh23XnbOUTsGLwq6wz01IrTokaZ4pGq7kvxVwyhB6UJCW5+KNM2oyG61JurRgnhe7m6KnJkZmCWQt4MIjQ/bPkIrElmOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gm8Aouus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gm8Aouus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECAA6C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 05:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717910843;
	bh=U82v0nB3xVTB/EcN9Qz1m9sYjYPKYaViE0W+tFjiI9s=;
	h=To:Subject:From:Date:From;
	b=gm8AouuspbyjPmjEpHwAHF4ArOButOtGbZj/TknKMwqlwmOr9O0o8tZspOfcCrvq5
	 J65IGR9m2TXLhwd3SmCi8bAkyLeHxxOfM84HKDpqGQLkZoSIb3nNSp1kLZ3hTToH5n
	 w66vFzxCnGUrljOfAqOuT2ZzrZnO6cY5swMBvLvBTHyAWx/wI2ttknXrazFXN7nGcK
	 FMcFMUu3/921UnM7UoLCWm5A22dwDifBJzg/+N35G21x+f6dwy5bXTJa95u4bz9I85
	 OjOCyG4lTGlRJSqBIB5IHBXxLhTNDMgbb/IjMIVZCVy47eSsqWgsyhjrG5yi1k36b3
	 VXeIC+84NomMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0F94C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 05:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171791084281.6346.14144669170211281164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9700a4649bf5b3cf9a2667341cec01228a05089ec0be656931e5f750e809282
Date: Sun, 09 Jun 2024 05:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717910842
