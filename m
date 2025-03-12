Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C8B23A9BA
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 11:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741780134; cv=none; b=tIG3PAGSt5+mmG1AurcjIgrsfECTQk/yn2HERSZ4GSL3K+joAADP4TvX70dE/MVcRsPXJYTc05OLfIkYpAn1s/cRiIuz8VqJ3DNyTsEK4Xs53XEI+BCcxj0AspIEizVC7hEOXCMoYupYUpUfIcu+YD5hs7ic6tWQzzRoUdRUc6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741780134; c=relaxed/simple;
	bh=dwN2luhPuWlj9xCtYI9SrybHK/tZkv3C+nk+DoILmqA=;
	h=To:Subject:From:Message-Id:Date; b=B+zN/6x06BCtZEGzLD/RFJaBNyC1Sib/Zzc0USvq7PHaZX/P20Nvs4KkF6TiFJ+kIQFq5ll8tHbS+/6t5QwUikrn8TTA3w6syzFXyeubJtWxw+4YntcrG4CX7ot7O/5QhMwvpciapxCTkRucanfOk0DDYSuiuFxD4tBLpvxPoRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAdJlrVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAdJlrVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97A5C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 11:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741780133;
	bh=dwN2luhPuWlj9xCtYI9SrybHK/tZkv3C+nk+DoILmqA=;
	h=To:Subject:From:Date:From;
	b=aAdJlrVYSXf6z9bb0gCcfwY2d7cjoXiloFmt9Fft+skkkks+RAYd70Zv1hWbVOAsO
	 Nof24BqAgGPbPl3C0WZVyYfN5rWerX/JYDr9S+opa9VsuQrK3XBy7i1ARUY531M4N3
	 GRAKbOjJCJToLXRXEX0xJoFBVFL77w/7Ks12g9traFbl3co2ZJKU5WApqk00WJUjrt
	 s2omG9Hoy4bBXopQIO09gvHYvqM86Ws2E859ewLVwwsIXcJja2bLaQQNkjvkkcQNpQ
	 UqO9S8r456htvi0s5w3bHDwGzSHteNXkf3IVwVdmsYVypejLhARwH5S95dM1SJetSe
	 grRYzWLJkSKvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F7EC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 11:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174178013361.13437.170745079400417266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b008bccc50f4e7021c9505cf79c28b324986b55cd433292da4d05ce0e1b238c6
Date: Wed, 12 Mar 2025 11:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741780133
