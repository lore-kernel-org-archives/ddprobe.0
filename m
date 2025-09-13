Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9AD277CAB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757800195; cv=none; b=Y8vvluJm7G3ozbgMI8AdelA4tYV5gIYqvyKokyGLqomcvdgzKk5Mwi1udncUXD+lyqURZyNfS1gMsGKaxKxPLpKgdDTVS0iJRv2fctYEZtinJmllvGDnnCvr3F2gjvUFPsbuJCjf/i9gnq7ebjtrwEbIEWm/GKFXQ+f20QrhL2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757800195; c=relaxed/simple;
	bh=wfBQDLViS4R9wHh/wZE1Sd0aRG92HTNrKIBnxq02LU0=;
	h=To:Subject:From:Message-Id:Date; b=Acpb0hJxmqnoc1LebO2Vc8sF6x7oWk5tSS/pCeto8UptEDlMTzBrh2kYSxdLLTzAQ+Y9OwWbVBFtrh6UXCL58KJB5n4GznvLE5RZIoL9CO68u+lMpqX/VmyxApomEDiHoBbC50M+6sJCrSqdAFAb9ZeJfun5Gh1a0wW/mYkkdcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IemD+x9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IemD+x9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A824FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757800193;
	bh=wfBQDLViS4R9wHh/wZE1Sd0aRG92HTNrKIBnxq02LU0=;
	h=To:Subject:From:Date:From;
	b=IemD+x9pTDqUrfRJ7UUSj6Cu9U4Ey0IJp9JAimdqEXXklsVUAuUd/smw8dc+ZKkl5
	 eCW75m9/7UY5zcBKie3AqYUIs7eihuSEbaWP6T+bd+sDz8qyZYfPXcUZaZxAIVITSf
	 GkdmH9UeJf9ahHGVjQ5Alk+2cIeoSe+l8427RCCAmv9Z72x123mEraPVUCAH2KaB6u
	 cSTmQYdpld2Pt5kOIMU8qDm+xakBbawMFwuKdgmuga/qdcLJBi7AvQFQWcNyfWbwwe
	 l/VF2L7QC4ItJCJlFA8ACu5TAcOxsvvWElXP+rkMiCmIayLl02otBw+NrczLKfDU9d
	 dtagoWLnJwbEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958F7CAC593
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175780019358.4201.2046114762865514415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92edf5491f1c571463701e3a7cdff368c8baa6a0672e09f124dbebc259de6d3c
Date: Sat, 13 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757800193
