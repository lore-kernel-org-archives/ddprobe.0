Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDDD27464F
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759593594; cv=none; b=VzEGTANwicS3D0/ogzCndQjqSM7Ea6E6NDk0HiSQ4r8hrDXOaQtf0xd+6Ml0plpwx33uGMQOlW2vABvRxTHIlexossr0lEl4Rt5nUc9a62LmANy7SNsVIfLraAPrgxj09lZEepMjh3Dkx59pnQpAZ9A+rT5cnN/nVtPccDQUV08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759593594; c=relaxed/simple;
	bh=SIJ9fR+9wHwVqBH40C1RtMKe9LnX24kUndLIVWijIvo=;
	h=To:Subject:From:Message-Id:Date; b=q7mT24DrrhEI2vU8Ek9dWh6cR8qP19ihvbvHEVD9/03yKNLY0UoYuMLQ3yEapNpGFQ8lYPSyrF/r3uw73Xi1hELNrO0m1AB6LjbUbBvz1oQxJrdrB5DJswKSNTvHhw45iSC3EkLrCUZBmjNn2jqpyr3kp/5Dd9nVKsGhx6hISRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcFnZr8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcFnZr8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEA6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759593593;
	bh=SIJ9fR+9wHwVqBH40C1RtMKe9LnX24kUndLIVWijIvo=;
	h=To:Subject:From:Date:From;
	b=TcFnZr8zScfrcuWytJP9qrBr642uk+Q3ShZKEhdrtiypaEMGLaLH5Zj6b/kesZ1zX
	 vmIOjy4b2SrNDx3C7jQ0sHT5u1ypQ6VIYY0pm6Wh9IgWefN4IB3sjJLamQU4Dbgoes
	 VEfYQZUBJMa6Kw8EPMlnRXTIEBSHFZXGkpHlcMcrHJ7mduubYVBrAf0KK3v7ExOzKH
	 zHoKi6iJDJsmbcuRI02N98hk/B5gDgrCvET4S5ZYdRs/QOQxjkyuHrmIkGRdJAlnfh
	 WUtrJMTdpAnUJPrBomyQG4X/Xi0kIxypJ+TYceYo9SRrfe6gUSvg6oGbi+kE/iqACI
	 eqAHhqRFx3lKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5D7CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175959359357.30935.1401071392986844548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c317f5e4cdfb5fa1e241b2c1a9c0a055e37b92175ed6b78bde570cd6cd1036b
Date: Sat, 04 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759593593
