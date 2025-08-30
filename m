Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACA721D00A
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756515594; cv=none; b=O/TrkDIEftbsJ0jdh9HcHinNZAC232YTPbnRZwiSOWviejXCRzqvfZQuDv5n2OAgRcmmgNnJTWjXgZwiwP3BFapg4PXU0ANdKD/bqyihS+fvvZaO8I5aWTfqDQ716sQ+RBp32FItXyNbH6bhXcZQ0Ti1fBX0C3cwY8BNN+4bzwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756515594; c=relaxed/simple;
	bh=6FxZhBzd0kcNezTN8jWUb14P4obx02dOovFwSC+hP+k=;
	h=To:Subject:From:Message-Id:Date; b=p1ScFFeOip4jfPJMpOM/14sGVasxKs8bryuBYxr1i/L2UMS5AF+wwUsZ4N3uVOwsIOlWp00l2RqfCXBhyK2rHhfaqIBDnzvFvc+hW25YRNUJmivtxPsoEug+TFdGHyTo2X9PvearL1Iie4CJHUrp2TRshA81ru9Iy17tj1OtP7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pn4n/PUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pn4n/PUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EACEC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756515593;
	bh=6FxZhBzd0kcNezTN8jWUb14P4obx02dOovFwSC+hP+k=;
	h=To:Subject:From:Date:From;
	b=Pn4n/PUmGwDyQ8d2iX8HQgEosKNTWDtvn18kh+E8nyXOsnCmZahTA8FtaJ2d9A962
	 KFsPrQK/+QwPQ6MPtvAwgX2PV2S2FWyIRj5RHdeksIH7xP6Yt6X982+yb7VtVDRIrx
	 56DdGq0bDzAjHMSH6iWNWiUqm5IduO4r/2G2yfDLMupN9VziMQh3XpxYCndQHxVawc
	 IDsConbje3t7+tC/aQvMULeDdSEhxxSjGje0m/309J7qgGtDVEXuLNIslS4pqEjCNx
	 Kb4xLS8zJ8FTQ+VOkrzWBq2Oh57dtU3Y/uvxerDWa4yWYoxmmdcP7XL5W5tTuIDfaT
	 wprY/dFV3aTCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED5CA0FF9
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175651559358.30174.15923537708327604830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faa892e324e602366f41230b15a277378b85624d8d3d9e1aa7f89de97b8806af
Date: Sat, 30 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756515593
