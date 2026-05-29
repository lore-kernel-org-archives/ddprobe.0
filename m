Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7BD3B2FDB
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780042354; cv=none; b=T3umrPPAtRZmClWIr36zruSePBPDI62ghVOJkCgEvw8FdxmKvmyHrlxyW1Mx1ELTWTq3QnIxkoEHtk7bKaEYBUKsdIuUVXEVWXGR1yLVthMF9ZBxp+QFdtiSzbtZX/1ghychVfXShWMqwKq6azz8VKDSwaALPa6Jn/E4pdB8LzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780042354; c=relaxed/simple;
	bh=RsaXseOOaIGraurucWZp7NDpDvKydE6dutGXqH1dMLg=;
	h=To:Subject:From:Message-Id:Date; b=Ovuyr7/RFuNp9onEgMSwdRM0kMsq12lT6O/KZhSgcdD6zdnKqCYu1e1HfwOAlw8m+PjOdTrPT6VnUpDcJdRWxUj4pMyVkEwlt9SoIA5VwXOICDx+AeQmtKwhbWzhwQlI9a2pbxXWUNIq6E7XPJB8osAJPHSmOgUdJzfHL//QWok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFk/4XpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFk/4XpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27ECC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780042353;
	bh=RsaXseOOaIGraurucWZp7NDpDvKydE6dutGXqH1dMLg=;
	h=To:Subject:From:Date:From;
	b=SFk/4XpCpXzQx42f2EZs8vYG7aIfdhFY+VYJiT7WMYXHQVmXRxYg7C5FSipDbJcns
	 mZzT+UMZ37WfDUcd+5w8q9ISze2fXjhkfopESEjAsJwr+CHaILZEYxchG0ESVuhakQ
	 h/5fHiesRMiv7dDVsP7BP9E8DS9Pul5nrWHmv0DSdHpCwLuN3B08uJDY17IPJfrnfs
	 zW305w8GivPqh3a20riQiAPDqUptf+QS6v2+NXcWUKnymx/sLGyyQq+nNRQplVr4w7
	 ErJsHnc8adVibYeMpuKof0zAmrM2Snahnk/BwXAd0hJt/FZbbjNYN8SWOGSz9wK/ef
	 s3MRijGAiZdjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8E0CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 08:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178004235368.6629.2590773544618508013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f8ead756baefeede61a3dd83a8cc0bd81d3589e1fb5a430828d487db8b42b6
Date: Fri, 29 May 2026 08:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780042353
