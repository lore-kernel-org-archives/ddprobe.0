Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428C222098
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737866754; cv=none; b=kEVIZ0PdYJZ3HOrw9ZKhaT+GI2LV54qixvExQo0V4kURyKFmgbAY4SmLFZdXdBu2q/7bpNHtA1e0uxTivk5oq+u9WAoFEfNdngeEKCtmXkNyUn3WNHA9dVA6TKi0Y7oD55LRs/1HhJ8qT606MOQMDAOA+fOUZ/WPd07PSOj9NMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737866754; c=relaxed/simple;
	bh=iTLPaSan6iwLHQUQ316JxjBb3MhsRBJiVz/83ZE5DLI=;
	h=To:Subject:From:Message-Id:Date; b=IxOjqJAgawKOskrly9tY5uVRAPPKKbn2brgW1i85L7LZx1mn0VV0iR2ILu6opZbAJ9nZlewQ2kwhBtrL0GHP12pD6V6ym9G5EKArCN4T4Du1AS6ibBHFpAq7s09SLQB+9xyVfjRWQTHq7JGfmkMCRDAHc2scH9RlAs9uNUU5o/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XN4YZiMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XN4YZiMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4850C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737866753;
	bh=iTLPaSan6iwLHQUQ316JxjBb3MhsRBJiVz/83ZE5DLI=;
	h=To:Subject:From:Date:From;
	b=XN4YZiMimTwN1pDcgZiXFN6230rXRVM8vV7zS+LkPKJCAyMIxXAM89roegzFlm5mn
	 gg/mxgKCv8twIv0AM9VQkvZGu8tZjM+85672d2gJFLF2uX9nfUOQBUUqtAIQpVHjc1
	 gNuBYuoTBg9ZK26pmF+pd77hAlX1PRvsAnqPpETRFsGa/AKxqctehtk51fpO1jnHnO
	 4CuyTqIuG9FhFwZ6winPddm5OrFjmyjSkxtF477KXIN1+lR9dtr+Gxp25THSNfKM6n
	 z3cx+lt+6uebNsWMUHr8zHWUdreVoKeTgN9bo4YObvuoEVsbmX5qirNAG/JpBIoG8S
	 /zWozqOleUTTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C0DC0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173786675358.19710.7731338919100536688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc2dfed8de190474fe431559c8d7f6952234befec8aecc5c799f0529e80bcd6
Date: Sun, 26 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737866753
