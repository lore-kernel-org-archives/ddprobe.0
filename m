Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4545717A31A
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 21:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740776934; cv=none; b=ZqW7/biKwZ+JJWG5176y1ZO3RGrt8NtvQDduUIkwshzPc7k0PJxhNNCAKVrsIWZo+EYDfcArQ9tJflKltAwIuB81wHe5bFgqP2iwD0VK3hcvIOpdGSMcjofBOdrJCAsHoDFpV3DOIXInUdgcfs9/PMF2zumfk+ZGcJeV5xc4vbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740776934; c=relaxed/simple;
	bh=cY0ChIh6wh5vRfOXqX3gG3Puz/MJMRiteI60ROz9IrI=;
	h=To:Subject:From:Message-Id:Date; b=m9eKXkOnyLYy7D8r4d32JobMzl3YEJhtCPhe6/nZJiw+mpePbYbPv80XoeocplATaS8C7+qU6p8UXNgNQmA1kImwBCtKgTCoZO9n0P5QYT/WUD3Jsu5S2AcS5/bU7+Bi7J7fpNYNrWNOWASc9P7EKUN/EoWUMHRaiePTn4TWpA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ln0zjmJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ln0zjmJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B66C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 21:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740776933;
	bh=cY0ChIh6wh5vRfOXqX3gG3Puz/MJMRiteI60ROz9IrI=;
	h=To:Subject:From:Date:From;
	b=ln0zjmJg7sGpOsh8bburOb5zIFXpavdAYaRQ8bmI8TsO4O2KAA29zJWUBL9dP/ZHL
	 TLOofhpkLs8vjfyFbDrTOPOKYWjG1w2XD/3UXTjMyGTk/xcHyCxfET227HEBTkb+Fx
	 vfic4rsSx/TJFVSZ2moG4K6Cl2/aJMpHkOrsHWiCKTot9n7tFiIv8K7/Lb7t/7701J
	 qjZWtBKs8eOyO7CsyJ4Je3AohN2DO0JcNKtjZNojOBXKOrxwRPS8VQ38KBE6OaRBGH
	 yvRDPzB1WIBEa5VUqJFzI2YAvoZ7M8Yi1eUiyOsSPFQjZToSCoi6LMiyngGtUqbDIx
	 gNP9tImNXqIfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB91C282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 21:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174077693357.29709.5731493529161566648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1847bdf269dc30045c2b825ab9031e10315e058439752d5fd79e512bb9e0c8d5
Date: Fri, 28 Feb 2025 21:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740776933
