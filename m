Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5674625771
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786657234; cv=none; b=n11V2SIxvDsz+03Ceif5YLvjclEJjiy6Lehxcyw41Tkdbtq2xL2hh/sRmJseVXZ56hCNDNSb2jl71CQW5cdS1WYvFunTE1P71woD3tXGPQoiWZqHpdKrx3at/Ry4dfHF4JJcYgzmNsaxJCPlmbsSu9CsWUzft7rPOqcOlTafbpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786657234; c=relaxed/simple;
	bh=MlB3Y0iz978lMnh6hrmNa3r60l2ET9+Kp+TxcFO6nmA=;
	h=To:Subject:From:Message-Id:Date; b=hOnfPWSkpOw/muXFJ9XkxBFrgpClsCw4jPkAt6bTpCCEOqtnQuT/tIQSP9EUL7XILXz+LKPlPBCRbrq3mXmcZBbNVmDVLpuZknDtnrUB0URHWNXnTJIzVeKp9Chsp8iDJadwHK8PfvsNicN6+9ZCEe8ypb4f5AmduvfKZZHOfNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaexMq2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaexMq2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE345C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786657233;
	bh=MlB3Y0iz978lMnh6hrmNa3r60l2ET9+Kp+TxcFO6nmA=;
	h=To:Subject:From:Date:From;
	b=DaexMq2Y1uNlNZdBsMRzDSylaMHnNr9KU8S4483VQdPKXcrFagGn3+eZqOCo4TbeB
	 xfMp9T2iGPfyF5pSKiVHthKkyAA8NXn873mXNXOvqEvXNovX5P9QaRwGncbI4J7iSA
	 /L/+cTrl5FtcaKSMxoef1T9n62HJrL11yc02asEochFd/RvinrsgKPpCwZ8ZgCWihJ
	 6vFhL2cay4khLSt4KVhcbxmWDoWsQg/Cqqhmd2bLprIxs29LcqEYfcx68jS8deMV3p
	 udPAkV/1lU8IG1xDKFMg5aJXTs/BCEbN/FPpyh60TNy8UbjidNSNOP/J5N1LtMiY7+
	 NwHTCCvp5tgug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9149C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178665723368.14186.14727014187372714819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f7e450074f124cf4675525d9e2a08a1c01eae4045c63d91b3e661de5f9a42bc
Date: Thu, 13 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786657233
