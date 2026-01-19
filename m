Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154E229B76F
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768806834; cv=none; b=Lpk4CvTayhAYyFfxmR1PuOZJpulwjNcpbxaC7c0aFPTxJFamNZrqOvZ2ARlbzPwHhjY4gZxqlkXTa+UtmTrfy8SI7deXTFvseG5h+r4gQYJlJHDrzhBtBydOAG/JaER40igXcf4pqtZqX9eEogpgWoqeUwJjb/4svea52nlqr3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768806834; c=relaxed/simple;
	bh=80Bzld5vwqfo0lna39X2B5NASA6i95SbmdFM5adlxhk=;
	h=To:Subject:From:Message-Id:Date; b=RIonsPozeNP0NJsOBwxTUJlUHYLP3rKTjkfTpGATf/Bn3lnE0Atl0WR6xFXXVUUxNmsLv8ToN5Z8d777asym8uXAAynXVXj8lhZhfCHjddsQrqtzyyK54ibyckV4s6n57iHo8j1L/l7J6fD9+TozIfF397CS/W3hhwrQSeEZA3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AF6W8Y7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AF6W8Y7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DACC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768806833;
	bh=80Bzld5vwqfo0lna39X2B5NASA6i95SbmdFM5adlxhk=;
	h=To:Subject:From:Date:From;
	b=AF6W8Y7OLLf0/sS3/6fu263h130FB7heIo60UilzWyFkG5Pr/m5q1lkrSbU6xW2It
	 KmWUrYq4NxKyIFX4YN9hYPQ7SevxFDmPTeQJTKQhqHEwaoq32+6UAw3xn9B2hGkyKl
	 s18CX4JPG/NxE5ZTAetN6FpgtBD4PS70RMT5d/ZBKQA1aSfEO47MqC5BqcOpir9hsZ
	 fC9EJ6jI5euACe1VYyrmMXs+5zTrPPrxl2lLkkGqpfM+93eIfI0qq0diV5AwWLS6mb
	 XclGfNhaOvYS7id0lOipEdAnaOgfmB3G5gXRcPGeKCFDKZN7/bKG2MP5iiNfnyYSdX
	 vqz9ljVY35bkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D78CA5FE4
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176880683358.5022.14436181317527274808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8b2faafd2422438b0101337e1798c50500eaf7176a778765825b2daf084bfe4
Date: Mon, 19 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768806833
