Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB5532A1C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755956393; cv=none; b=iE4TEKCEEI1WsHhbs0VE9YYDgkuhsb5Z92ufc4XOTicX0v5o6V/AC68uMj2osrG3NiJz1Ni8PpHtyG2i58yNTg9wJk80JoGPHbr/SVyINPfPWBOsHVYI7+QEYf9iiIf3NbgKyorMoZrvIVetWsTXe16FOfzsXu70+bF8Q3LYDDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755956393; c=relaxed/simple;
	bh=mkHNIcM48VfsuX16027RowsTMU3l2DuwEb1hkFVEP5k=;
	h=To:Subject:From:Message-Id:Date; b=D+XodCb0lzANy6bdPqEWqf3uempclHfQGgYBZVJOQX23+Ef12dzZJQ9tb8lB12yo9x7S03ipumBNURQ5WzCATi0msVBceX7qsKgiS0Sp0/t4ka7wRovQDgE7dIdECHGYSvlJ6G9Zzht9GMNwpIzIo8mqx05f0OBg2vxwHdAJew4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ets/rYQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ets/rYQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01ACC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755956393;
	bh=mkHNIcM48VfsuX16027RowsTMU3l2DuwEb1hkFVEP5k=;
	h=To:Subject:From:Date:From;
	b=Ets/rYQ8xvbFtlT6Bp9RgF3QXFxtLDurKN/1zlczT82ZFpN97weJ7gSZTfr8/kNBT
	 Hnvk1SbK+8SA3KwaL1uJhJ3WHC3kZMPPakzPiYVEJL5+nwt3QEm5Z73boSvopSHNF9
	 YLG0Ovj1fRSioGoYjKF26ADhGE+fwCbdxwA4uvNwLukKPLdNQdFbSHVEeYQO0aVFeZ
	 5perEzaURryfWasRExZb2KfUWaxKReoYqsas4g6CjThSP/pedWr0g1LGO5ge2laa00
	 PznU2HudVQa+2FYPlIuY6Y4p/qhKLGDczcv+GWQuXDHh80L7TZya6p2aI8uSCocE66
	 4OTr02kOJQhhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5C1CA0EED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175595639357.25224.13706371115451463690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e484bacab0a3de824739c11bb886d22da546f206bf3cf4dba1dc94484c6480d
Date: Sat, 23 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755956393
