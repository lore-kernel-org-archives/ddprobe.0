Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D256F1386C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727210153; cv=none; b=mmlTl9OfMQHCkYwCxGe0rFHutLwtN09YB2whcehOWIm3NU8qZ8fMVQ0Uut6wCeF32uY5syU9A1PO9eIrc4O9mikm+L01MznInspWGVVoN8ybFuA6qxeNoRpuOsyJEOLCcho/MiexTANM3vvrBE2smJ7rwSgaK4Q6p83ZRyvQ4Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727210153; c=relaxed/simple;
	bh=bPJ2/8cZH1KBo9EJYveWd6ioY5ea85ex+Lc4tSUPRBM=;
	h=To:Subject:From:Message-Id:Date; b=eE4W71flAfnOEcNlIFRWYdGy/QBeasu8ezt6Nc+Yza/+C3ch1T+tn7zE/inrU6IpdTMQQSW//AMGsEHsMnCoOkO3LLPdjjaE0f6SLEeS/xcyj5vf0zf1uLPHIIumOF1QNHdEeTjUumbDGHTo/XHpaF7CX73gCad3G8QNcSQZtFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnn+fliD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnn+fliD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B78C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727210153;
	bh=bPJ2/8cZH1KBo9EJYveWd6ioY5ea85ex+Lc4tSUPRBM=;
	h=To:Subject:From:Date:From;
	b=mnn+fliD6Tn4VH7bqY0NjzCrunh6F2TIHw5ckpJDBtyi+jGJVPymoQ6CZfrA1WCz2
	 blBYoe1J8nc/vU0C58usZFflO9Tk+UJhkbL6iVBsXCapDb/ZXQ+c57M8racL623xDl
	 Tx92h9XpcknQT1NH3CbGeRBg8mZe8dRHRn66mN9jVXKLgfvE2luR3aVVs4swMvX/sw
	 YCa63P+0CoIt0b/p/UphRzvPJn8yPeA+lFTvZ6JiXTyxmkGpc2qcVlm+psR+IZIO+p
	 5pHAarqO0KaPzf5IoImz75bPejiVD0P5V9LGPKFfp3qIT9S0/lUj6TiymQs4qfvkp2
	 qPiTXGlYfWJOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93428CF9C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172721015359.27557.7772602386413303509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d024c82deb85ed5f1954e3c2e9221610fc16b5302fcae918dc24c5f92c26b20
Date: Tue, 24 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727210153
