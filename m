Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0941D1DE2A7
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749498594; cv=none; b=STYXBpGcaUTFvcTTcQR3blhD05++Q5vHDseu49runpwdZI2bRfIX/OX+XKolWuhoJi3BKA0sNPHub7E7xKv5DuAlmSPfgVV//IjL8ESEDo4UvYq9nJukWCVUgVK9BPpPqnuAbZ5qICbrkBv26n1sI83UUvfBWYhcYnAR46WAjKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749498594; c=relaxed/simple;
	bh=cKrYjDH3MeC9PtbiUPysJh903lAajseg9fUWCv6jc7c=;
	h=To:Subject:From:Message-Id:Date; b=A/vbt41sOAT0+xTvZHjVrT6UwcniDsOWvx9kt31OFiqjrES+qA4AkNMxBjKEwnoE3gpWUJ1cdfDp7JonjDP2gSLzwVe+jajzec+2uHI2+tXgoqJry866f5JMVJNFVDFYOCvJW4K7E0mMUFpXZqOCMbugCLdOSZixOPaIxaLDSoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skXDxgDZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skXDxgDZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFC7C4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749498593;
	bh=cKrYjDH3MeC9PtbiUPysJh903lAajseg9fUWCv6jc7c=;
	h=To:Subject:From:Date:From;
	b=skXDxgDZgWPtY11zgE6+dt9NdkKC0LybhyLkU//Wz2l4IhPsSBI5BtKuj03AeEpx+
	 pZNdhI1M2kbMnnxY5DK5950iEI051mt0r6F/DPtFYcm7+eR5VnXflFvjkHdGiziB+E
	 uHIqaJTdk7y1zHs2lz81YdaGO+a6rPSC8dNyrgtgDFWR1eIvvuDvonkJGC7nk/+PUN
	 Q/DK111+270vtS8BOp1JBr4NyskZ9bnEaL9gcQoare64Dp/zxIW9U+fz9jSgT/ZJj/
	 tlf1Ik+XN5aVQj2yaHPrGA0LcIVejyzGHmqD8jFdQFjpPEoH6Ab9ttiJmIT8glT3d1
	 VLVcFLuREUcnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB28C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174949859357.14278.16020389958282069232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 594b3eba778868183d6d4dc28b3fcda65582d33f42296bf7afa60d94c82747ba
Date: Mon, 09 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749498593
