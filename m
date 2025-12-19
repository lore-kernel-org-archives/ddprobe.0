Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241C32B9B7
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766176434; cv=none; b=r4rs3wgCU9R661ScOaCSRylBkmNiTbbw1GS67Bp/3hVei9qYehHumvAvZEP4DY/LC/fW+WMat1xKj6qRJ/Z40aHLE8RBhNnfC6+KpxfhP+lHH5wWpohYN1PR+xukgaBifMZUqKyQEESumu8hCIRk/qP9evccrDBBgcuqTYaTbjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766176434; c=relaxed/simple;
	bh=tZPDCnKqpRGuGppcu95V3qhoGdEyjYiI75BFKgxcZ68=;
	h=To:Subject:From:Message-Id:Date; b=EkxvIZN4FYnDu7/dW6I11dF1K06fTF6xG4bMWgY3UoSECiSMMIpWNH4bTgfzbD/z3xv4JAQs5bYrvTyOqUirJOLq984IRQMXzcoURN/jIBRKCYRXOS5kmV1G1+BQHrSV/738RDhUPkqXGBdAPzxHlHC3z8tNeaaDEPLtCSwC0Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCEsjxrv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCEsjxrv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3636C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766176433;
	bh=tZPDCnKqpRGuGppcu95V3qhoGdEyjYiI75BFKgxcZ68=;
	h=To:Subject:From:Date:From;
	b=RCEsjxrv8SXdo+9IlNkjjlfaSKPVoImHbdlSQ0IL5FgwyNV0Grirodx57JbZeBJIw
	 3Qht+Z45iCwiUvwuvMNSzBNVOED9IL9r9+nam5etJPbQAgw+Gq2DwcyYcdjJp05UwR
	 C/ja4D1k24zVPGfHx/Zza4FF+Q9h/Lq7xqD/09q72hta7CUKggqW0nb+7VY9qDnyz/
	 YzdgPvwibpFtAFirGfNrfcsuc/R4cMCxnwGZYz1l6jJmxWtvVcMq9gr0LcsjwAqZBk
	 ygHGGWhNwyzpwZ0w3YFrHv8nfFZmFAuRYEZLqchaDNUZQI4h2u3RGW78GXghWTKENN
	 HSo2yg9uQ7Hvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916A1E66884
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176617643358.3091.9760448956907345616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002c14dc00db272677839739816283799f1392d09f08da0165bf5cbc2d46ef6a
Date: Fri, 19 Dec 2025 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766176433
