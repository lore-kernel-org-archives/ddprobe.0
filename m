Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F12745198D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787137838; cv=none; b=VriTAFqcsxxK3xyUwoMKKSr8fpoeUTMftJphm0Z/nXa6o+iz3rbPluL1To0TKL7obtntR8sCgpGzYolsRW9YSK2esUsC3VJlm09bWPRyYPCqu6hna2KHIsGTyFeTwcjvM7Yo3kA5SbCByPs6l7KrZj5OGgj88Kpa1j+vNkV5L2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787137838; c=relaxed/simple;
	bh=usjZiOFRA92r5qlCDeLp7Hsf7cYudqUyvBp3YtxiO1M=;
	h=To:Subject:From:Message-Id:Date; b=IvB9Q9NGagiCMlMHARdArtlqdao7+mUaKCApLUlekmS6HFg6AMKneQbqrD3Kw+mUPTkPnr2duE1cku/WPB/HpoAuU0SQ+l1d7MJ34emUcLfdCyptb0sxuAkFWS/67B1455m2eXneSZ4nqOewMyqutdJdy4Gwe29gKE+Sufevef4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShuUnxax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShuUnxax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3E0C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787137833;
	bh=usjZiOFRA92r5qlCDeLp7Hsf7cYudqUyvBp3YtxiO1M=;
	h=To:Subject:From:Date:From;
	b=ShuUnxaxqzBWIwv2OLGrGKOKgTkOVPKsiCbxDrILBDpZmH2VDhLodOkNRXXCIwMmz
	 spSjr27Gu/+2Wi/B6Ps2t7J4q9Z8pxXg2171kX6R5uYyIjCol6GdECy3gPuuIKaWdV
	 oxopAwA1z9FwFyhV2wmO7IU9Yu5bEWvdGHgnuJl9NrxW9/a+5/yPOikp4Lxp0UK/2x
	 B++3LM+vHgVU/3vJt+KyI4pY/2kKgwJ8uzy45/A32Pl2Tr7hTp19/nMiDWL6wacAoE
	 gbM/bOxDCis34/SBQAqxKBOF9vaTOYmkZklFKn79choYV7ZUjqjR2W47/v3BsWVQD2
	 EbYT8/zpBmjYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7520C5DF8A
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178713783374.5212.6761465906982852954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de5662dbfd959a6bab11f265b18cd9bd5d3c996a0bf0282fa58aca4688dcfe9
Date: Wed, 19 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787137833
