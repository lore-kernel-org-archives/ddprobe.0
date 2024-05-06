Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7177638DC8
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 03:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714964543; cv=none; b=e0n7BzAnhs/fHdS6Cka4WlhSAqXq1DrD0XzcikrrOCnHmYlM60oGI78VR7sRIb6OSi6TuwN26SGRF6PbYT/3o/I061hieHQTx46WmYM/rVH/gPlZkNK61urikGfLW5PVCrIeYsXFFU4NNwdNi00NWy15XvVPiqc+VFJQqNxozIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714964543; c=relaxed/simple;
	bh=pVDtxZZaehj0E7A0dJ+mzSWgCHwCGGb5H5SDIdTjj7I=;
	h=To:Subject:From:Message-Id:Date; b=e4b18XCkL4Fm4HCXYHudck9CrYMhXvuJGTLh26/GnKg6B0fvfTHb0UhLOlIthJFUWLUqsQocdzITkC9HVTwTGx5pLYYKD1/hdU7pPLpkqCvhuAM6DvYbTcjRdCBUaMF+UwQW/SiAaOpKHY6tyJOcoYxp9r5fLdgVT0fhabAHHhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtyWmXiP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtyWmXiP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA7CAC2BBFC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 03:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714964543;
	bh=pVDtxZZaehj0E7A0dJ+mzSWgCHwCGGb5H5SDIdTjj7I=;
	h=To:Subject:From:Date:From;
	b=qtyWmXiPzBt5cHzq89u9Lb2x5CXB8b7kZqKIfQ5BVaO4e+0zRJY6juZ+eap3eD/UW
	 oCmR18F4vIVfOtw6frCLU1qOROIXfcJZDOu3RmJrbg2k46a44yWkP/fJwsM91TCSDE
	 h0sLuLdvVox4gXYBm8Y+EKGOboPiHgUyo6B9sQdjoxQi8k7TD3N7dtq52/fMeg+KRY
	 xcy67uyioFQvSHPPopsfsPDaCCx9QPYD7L5OlzheYAosXDpKW1SuSrp0P8hIRUy133
	 tWZVrQjsbpb7UEooBZb3ywaLLBNxtzX5bM4XCYvA66j+NEsejsYOpneGhJSFIwcgYY
	 OR0GrDTUhUI4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFE75C4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171496454281.15994.3787515071943356695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59ecec3da6f15dc53523cf8fa30d6fc7c6fad28287f848bc3e9f0909b8c6f441
Date: Mon, 06 May 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714964542
