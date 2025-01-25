Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BFF1D6DA8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737779754; cv=none; b=mQ5yMVLwnTmM2vyJZE9f1rutimAEppZzeVNKg/pPmv59alJE3bxVQ3GTmJPrmCAQzF1hvWVHEceb8LDNyzsO9M2on8GAgNbo01DyXx7RizOc8/3Z0l5ibFCqIpZzKi8V5XCdjG0chgSWXi7dRUgbH9ZLaT3Ick3up40CCTn4pKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737779754; c=relaxed/simple;
	bh=USOdBIIbsLzEspu+JDxAq1p+kMkuxgJsKE4EOcW5C2Q=;
	h=To:Subject:From:Message-Id:Date; b=TT6awNsY32ou2fLZ57moeB+vruheXCpjuY9xl7aH0/DirOSvkgkX7yPxuMxMSnB72aYCDQOM/w74sAxqijd5aUpAVMeGudRcEtlUOTWwyc2HLhNtQgC+BWoUyoZWvAfHyGFMEqtzG7uwe2AHQFVNaK7VyUBdg/wFP/4iddvyBTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7flokkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7flokkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA6BC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737779753;
	bh=USOdBIIbsLzEspu+JDxAq1p+kMkuxgJsKE4EOcW5C2Q=;
	h=To:Subject:From:Date:From;
	b=F7flokktqOwClhsEJ2CTOhVFN8X1kATm76f0DzMMIA/HqzKCjWfQ92ElAy8kKQ1qJ
	 rWQ4ezkZMbtiK1EvLTE/clA5KalgIafEuQHGZMy/hQcDpyU1hPxkbOuScX1x3guxtU
	 S1PxmdasGFxSe8zv586iGKlqlMyWX0ClCGuQDgIb8KJ4I7T/Rcagl+T175oLZ4CXO4
	 NKF2CSpNCYDDc+eK0JsA0jHW9p9ECyRBTN4x7PO9kTGS6FMIsac69pP+fKfVaoKgik
	 QsHn2bxlaTYxhsHTzkL1cjDlr8wzPgFeaBB1g8TRIb7NPhoQrZqpcp6AZ+J3ocm9jq
	 6T/ya06D898Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AA7C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173777975359.15840.3790253303381835818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b12cbc34e47842ae0e67baa25e2736301d03eaac58ddf370ab13d46ff968183
Date: Sat, 25 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737779753
