Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D02F1990D9
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748716794; cv=none; b=MZOidnD8G16xa+rLdO8/ZDUvSjA1GDKGmVZe7GXxNT3XrODioitb+uIJioxN1mNAEn/lT7j/iys5zl2Kz+QRWaRSZeXm+jxyNARXuk+7FWQJlfcCmHQHHGX1MkhEKDnzATilDm+5imyfYUadOhKk41DuoTi/EVbrTN9pLB3hJGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748716794; c=relaxed/simple;
	bh=fOWeF62KhLsu8DlTgOV2K030TuNwGtmtDIwMszj288k=;
	h=To:Subject:From:Message-Id:Date; b=RE+LEAxr4zPbQGABsK8yUsJAfJ8C5gp4/Ul19UNcu3XughCERCc/+upbUEMJVj5LGL0MItHXX8bCJoniFtoB8oqqwfcmecbkJRNAmPIE5AJ6SZySR3vUKmIVjABxRVWTzPaiAttZl3x15H69uiotep15RmnhZ789FWVT6HN5B9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aT6MK+sG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aT6MK+sG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BEAC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748716793;
	bh=fOWeF62KhLsu8DlTgOV2K030TuNwGtmtDIwMszj288k=;
	h=To:Subject:From:Date:From;
	b=aT6MK+sGJkKHEEizMuapnrkt9XZIurz/cW+d3QVXSOlZGvPAAeHMzpJrqVxsVG5lm
	 Sz+2DAnmu6T5n+RkLcMAe5wETs8qlJ2yraBtLwNQJdo9Ad4Pw9orTph/+zI7lmFkSZ
	 3JDvPa++79iktOH7HMMr5lpjtGSIawx+vJr4If98iz4YzCP711bCZ91mJyiBQaOYbY
	 plyEDM9ZdZXgmA+54qFmz670t9AvGKCbdYaf0/qyz0D0QYKJH79KYIFSRBanGAwxky
	 9AfsN8rIm2NNmWc0wC+fuzIGWA7sQuKqCb7RbH76EXMhfxKSVmgz6ExQ4DsABNhStE
	 qoWyCRqAADLTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A3DC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174871679357.791.9754276845359291090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e4c494399f5fb29337292e55cef50deffe8a99d6950996a1505de6be553754d
Date: Sat, 31 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748716793
