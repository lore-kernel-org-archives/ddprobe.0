Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F5A2AE6F
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747406394; cv=none; b=naKv2ff/J0mSy4ZUt1844HQh4EQcHs3kgcjTIqBjgAt2ZfVhzPCmzYhZtS7vgAMVPgvPGD61OueMRhkYlL7IZgjIBOxvLmJoSSZEoXIbAdC70MnZEzJHCuGHLVPRy0uFi3pPA888niyhnCTJDaveT+FAISLIM643C5zdaAtXOyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747406394; c=relaxed/simple;
	bh=zSa+2DhZWKKUHM044OJSDOGodbuADTyl8GKGZnWGggA=;
	h=To:Subject:From:Message-Id:Date; b=aKaBFUeha8MX+eZnHA+sA/ZA2TEWV/qUFpP0rNvpeFBcMgoSz39R4L80LLobCHrngYV5349EQNE97j2p/zYlDil2ffcT67Jbfb0VmTIyZtamjwvYyIwixWTyu+YDD1BIqkDkf0Aud2qO2jNSKfwVBFlqKYKn9E7PG+QLl98XKh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N21/C3MK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N21/C3MK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0537C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747406393;
	bh=zSa+2DhZWKKUHM044OJSDOGodbuADTyl8GKGZnWGggA=;
	h=To:Subject:From:Date:From;
	b=N21/C3MKACPpqqaL/FsiVFOmh2nYDhfu+Y0zFE2FgCTqAA/irByFOptouh418CMbi
	 3M3enrsnf9XYX7NDeL40e3cugAHoAE4QkYJrkFs15VMVi320lAXVFf28zPDwzUAiU2
	 5byaEbWv2v3iR5jQ+QcCGiqnqsZS/rpVFGsB6aCHecTK26nQrcDjsxuXPSFD+jYX6y
	 LLVOzOWk0gNWHqU8qntUq8Cv6985/AEG8wHr2P0yNDnL5BILoagfk1C3GF9l1492eR
	 o/2iIBW8Wn3nJSnu6tzdjaUt3ArnjrBBLhioILm2PMd2rC7JIzffQdCY0h3s9xrRRe
	 A5i/3ouxcqoog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCA5C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174740639358.25384.3738551816341991202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9399653946224242861713f08897d4f4e7c9a89e33b1c895f06ac481595360c3
Date: Fri, 16 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747406393
