Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2429EDDD2
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757770194; cv=none; b=A5t1K6cjmotDWd9FGNH892ACEH4SqB3FntxOxOyJzqVNZ0a+bnRA6owv9eeYFjcB2thyKlMiGMP/XfhJ7pv3Vr98RWz1MRYZR3O4KBH+oeI0VN3TCah2Dr5hwloqQffujfI/M64lMzIWrP5RWBHcot0gfj3sCubIoos3FM4TwXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757770194; c=relaxed/simple;
	bh=y7QoM/3zsoesyE25Iecfq8iX/tNRQnfSBAO6E9sUqa8=;
	h=To:Subject:From:Message-Id:Date; b=b3MF0zTWZh/k/w9+bkQaaYTiU+FMzf2YSUgCHDEcwCntc2Cxv8Fi7Nuh5QSJhYuFQQRwO08mxYO1ix75RQtjZMBN8dr6JmjyWzaZlOaAYI7UzPodDPOvspyv/fSjhaWHHEHY5CJ30uoqF81YsxZ+igRJwRsLk4MokvvYZx7j3D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLasB0E/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLasB0E/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A720BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757770193;
	bh=y7QoM/3zsoesyE25Iecfq8iX/tNRQnfSBAO6E9sUqa8=;
	h=To:Subject:From:Date:From;
	b=FLasB0E/eeadq5qildJdgsYl/ix8PpH/aFO9h6StP7Lbv3r/1tZRZw7beamkzLP1B
	 53az7t3EwgDSB6EqOfi45ItAeuAimSLvgpCtKLVEzh/ORUNuoQwnmQ+VOAAohrTzbv
	 f9VWlsHaMR8ilZAFrejxvQ0CAqF5UomjGwrRS0QHdACMBCiIYV/DakpQUTg61z/Qaw
	 qa2z8mX2Ir8PaJBYkOhvI229QzT/ffw7nI2OZebx1/MCI493FbOxc18P16vuuii5J7
	 TV9AXtpqkRXJk/ggDtlpm6mCZ9EhhYcZgwmCng5It2qoWV3ux/pL9j262xlwHohsuH
	 dz2uK9efH23YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E44CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175777019357.5318.8611574545848962142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b358e67272cfcb68d8dc130982030c1da00b83ba0b8559050889808272f47f1b
Date: Sat, 13 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757770193
