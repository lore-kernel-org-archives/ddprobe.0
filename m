Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFF61E869
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 20:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719175343; cv=none; b=r5KK3fQdJ3cWcvl30EQpLLLdVPfdpSVkdRm6fL7ItireWVecojkUctVCMrH6hTkD+JBhbkvdl9t4Fx7c0QquW3fV07KG2oEoyJcHJAGbv8fXBZrdVnQR+nD+XRaOK3vUrLuTu1hi7ENM2N1oSbosNzNQEBsK5PlTnnrfXX517Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719175343; c=relaxed/simple;
	bh=fw0BIDJq3hM8gnDuMeDdAmp79PBZpXbol6cIwhVV9n8=;
	h=To:Subject:From:Message-Id:Date; b=MojXCJrxTYLlw3xGQwmdRq3DOoOiFYloWnTlMTeqqEx+t89pyRh/4P0I/oL/EfPeOELNxFQVJtLkZ6lV3e1+O4nAJ+qGmJRgzoOYkI8QqZS2xB1C3cKeI+IwvXEpIa/Qb3rOVhMzCk4kJMQ3Fu2AzQHI6Ex9d1Wbhpwm0+3fXi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxfGgM8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxfGgM8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14ADC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 20:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719175342;
	bh=fw0BIDJq3hM8gnDuMeDdAmp79PBZpXbol6cIwhVV9n8=;
	h=To:Subject:From:Date:From;
	b=qxfGgM8zaXaKJmw1J6+yjveJzZr8mdDIZ+0DSpigGm2XAh9CKc7VwllDqm6kXSNbU
	 /mhM/JXP4h7TRJjgUtDcqUTE+qP4Z8/C67xs7hHT7wkNe7sfRHLldE7F9SmWMvR87K
	 434jE+a7MayDeQHlw5vVTHAsJIprCfdro1HBEqjbaxnu5R35ljzPqm5eMRONXEvBO7
	 V8KePoPPGJ5UtUzedhly8Ishz/PmgmL7X46e4i7wilsvU/MOMlT3M0H+ZPc7+OaVNM
	 igXCQsY70L+3hffSxLSD3qfdXj7tSjnu+cgmipcyvoNrzihGGj8QXchX8R66A/5hDA
	 L/eLKX8ckfPDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9E7C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 20:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171917534277.8116.12009345448934089337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ee9649cbd8a6e4f46717800e21b56d1a672efdd3ee683a96e99ddf7106cde5
Date: Sun, 23 Jun 2024 20:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719175342
