Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0EC214A79
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759816794; cv=none; b=uSeTYbQOaNYvtVkhh6+7mQ/s9FEXIqnMQDfq2xpFrT1j87+2OUqSln2HtaaP87aaUrRzXGgIQZvrC/G8v7Qg7YVbjxYyPwVwA3aIaZSJJc6ODXJNHeCVgfZZE0dmOOBd1sc0O51mHyKpxTsJCjxGdSEl7r9A4ADPNd6S6/SqYpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759816794; c=relaxed/simple;
	bh=TCWRckRXFt59oJ/Sz2wBYUbirz+1NJY7pPl+oE6Pvfk=;
	h=To:Subject:From:Message-Id:Date; b=fHgLBDwZZD7MA1K50I2k2McivSlNrHYVaxaNsJYTybYw7sK7d1YcEu2q2Vus2lL4KeD5qFyyrp5XPPIwqui3WNj/yefewOAx4TpRxxkGbG+8rLT9mkaYTe7ieB39o8K2uFJzgOfBW9uTX0BaqDal5YAKS09VdRLawvBJTOs6YEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q70XA2CD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q70XA2CD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0459C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759816793;
	bh=TCWRckRXFt59oJ/Sz2wBYUbirz+1NJY7pPl+oE6Pvfk=;
	h=To:Subject:From:Date:From;
	b=Q70XA2CD0C2RrhUEmYHmfwiUzI2GcXBObAsy7r3oO6/S4DRdxWzjgRSaHL4FRwat7
	 r6td4uHkhOGVZi9Ix5jdg2eELJ1AKpQbuWCezZt2JAL/hHEe97bomePF15IyZrzUTG
	 XdfW/u/UE48MZdwtsvaqrjcORE1IdmlUg7z9URlrVOnDMLVbZl7DxEl2InX37gfJZD
	 f/mwmxJYFTujb9r0Q/BiilrVIVQts13/p1NMK8SQGTwhPOXz7hzhoXcGJ6NldX+dWn
	 oFEmSoEGh736pW9MA0a7V2l9n/WL4cH2iuQTZCOVIZQ0YQAGiFVv5giGDgA+UFUlTX
	 4WMhQwQTNX6vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F22DCAC5B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175981679357.28232.4137296062416736494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a16fb6fe7a5be26e935b700bd3af9a92d72700dd649d0ceb88d894839ac66a
Date: Tue, 07 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759816793
