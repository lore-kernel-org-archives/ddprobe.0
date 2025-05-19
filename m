Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3110428E8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747630194; cv=none; b=RkZRSauk6tBs7wzj7bRNh8YplQ9wTuBD8j/0qL72CR1sm1KQFrM7UteugNCzeV6OWNsiUW/ES+kBjz9c3RmSobw/IO88IRoHXbLd7VX424qFWnvMukAfaElLtiBXNGF/JRl9/4mjF5Jy2mtCQi7Eh2UFL0QsDHoWAUwkLOqTPug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747630194; c=relaxed/simple;
	bh=VV6gp7862k5TGdRr42QrlwwjIVZFg9DcLRXrNictKlA=;
	h=To:Subject:From:Message-Id:Date; b=IFyz2OLVw6DVJ8YhOLw6x9LUbjKyedwhtp0uLxQK4u2Pa5FQsxVyfTjOb3Vzni+tr5U8UbXI7Y6Vq5Ohm4tr1rd9zytvZxHR9OrkGZVMZd9AYG6T/OEE0uMd2iknb7x9o82caYyeAF+d9E0xC9y1BlhH8trfcM6Ymd1huKZ3UIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qm1tsRp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qm1tsRp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90E0C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747630193;
	bh=VV6gp7862k5TGdRr42QrlwwjIVZFg9DcLRXrNictKlA=;
	h=To:Subject:From:Date:From;
	b=Qm1tsRp7zQrlg4kS2/6HLExLFgPn+iZ/Exej0QJXlpwQ4HCDauWY4hc3HNyOVVH7U
	 MXNc7PEl+R8Hs+Nnv3ZTUUOkoMMIvYyGyC58uRDMWCV3AwSqwoUzcqCHkiWgX/fjqY
	 Qm4d+2DqpN4SYGa8RLZ/IdAtZNYhrvA9qg18hVld/+CX+aIUqZPs2lJVPkHW+F+7pX
	 a1t3k03Bpm7gF8UORFwedy6teULrHcNRqnGX0ltesTcVs2bDx8djPU737jhdi4Y+3v
	 R7DSOeTK8GmpFHAvoFbjlrh40M6kflXhuNp6+NEmHKcovVijrVhEgcnf4k4iHFP2Ym
	 2dyWIvxRPDjug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C49C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174763019358.18519.4875595055140519889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b2e1e0b1b20b14cf637671406a6ed966962b08d6de06a0ae8bd41b524e9734f
Date: Mon, 19 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747630193
