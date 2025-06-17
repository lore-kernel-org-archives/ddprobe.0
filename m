Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E722BF001
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750133994; cv=none; b=UtuOrWTRQz8hJVzSPDqUhEoMPjJAUBxuThHzpQ2icrpxEqb4hizY3SjNre32kaI7Bnm2qpjY929oIEXYohNDzLiXbeLyK25tzfxUzpLIhi2GxnwCLsf5WSl0CmovyH+mn6WNyFPtjGn4hvVRSZLxHZpJyTjplGZQVkwPFP0NVgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750133994; c=relaxed/simple;
	bh=cktkFVdks1fclKN1ymr34UtzsXYUhAS/3DJPvOvicac=;
	h=To:Subject:From:Message-Id:Date; b=dGgGMFbenMGijYJP4SwbuvCIrXtM9Xz1dO2ApdYoZhK7ZS7XP8THmbAVFhfI27fHrHaMkuROzUKF04TtVxV/zVRwyDbooMLReVxdVu6QHdder0uYHn45gCA7Nor+MFLrqqS7qL6Suo8GCxoLeOfZ/TitichD7kUE3+5Q8pFr0f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRE3PfrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRE3PfrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD35BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750133993;
	bh=cktkFVdks1fclKN1ymr34UtzsXYUhAS/3DJPvOvicac=;
	h=To:Subject:From:Date:From;
	b=NRE3PfrBosnPL5jqyyQSMZ427aAFpxygr/fNcjTE1B52uxuue/+UUz9lE6rj3TdlW
	 cXIma6fYnHqEa8eE6WHHjfHMY7Ug+gnZrluOdbUfePtg+taA+bDTa7baJQdYIdAWoV
	 vw8GxPYe5ti33BkQknXRN+r3SBH01+2Gqt5gIWSJL4ZF/iKgpZie/Bb2xctbexi3uf
	 vbI+rgdE2PoxcJQBjhTQV9PTeCIyqg+a8+M5OvcAAFClsG84lxkJY3QN8/nrccT+RD
	 kuqCAI9d6rM6QdyxXgsidB+eq5pyI1MW/VEzvwUCnGccFiJS7yMlGC7F7yK2UCbFNm
	 dE1t80+hgBYXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969C0C71155
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175013399360.13672.3779414817268204560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9310754aef1a261a43f50ad12af665d70a77a26ceb16ceec8e728195bd7179a2
Date: Tue, 17 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750133993
