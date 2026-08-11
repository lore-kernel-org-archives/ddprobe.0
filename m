Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0EF46DFFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786480834; cv=none; b=mNtvO/r6U8K0vYEURIWrtgB625C0v1hLw3o9nI9gU3sj4pIeTodLJ8P6u0Opw0b793/LSN5fHPNIHoq1GvfEbB12gNDhgabiJZUdpzM3BVAYGd0KUf3/lLeDzy0pBvKME++tGlPHmV65JLvF9Ve8sf0hHUigDJ61IJ2t/pvtOhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786480834; c=relaxed/simple;
	bh=8Ck9CRachxDws79ZxG2pzrJJdGEkrEzosj32SDdoFeY=;
	h=To:Subject:From:Message-Id:Date; b=AIoZy7j++GcQsmQHXr31BGy3Hcb7bmm/Hl3t0Ne/5KnTZ4EDI8xWjyyvIFluj0g2TFpjIymqR5BFyF8GDQsQgPxohVajan+PcIERsrbKXgrzQqpfGmagAXNt5Uq4x+VR4jhICkpWGHyyOdNeRDVJCJ3q1x0K5unUI9BEyWMtqdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PF9QeMsI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PF9QeMsI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEFBC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786480833;
	bh=8Ck9CRachxDws79ZxG2pzrJJdGEkrEzosj32SDdoFeY=;
	h=To:Subject:From:Date:From;
	b=PF9QeMsI/a6ug9lRahQqGiR13d9nBDv2v0uaEBnoy32TfqhGV8DYP1Y9HRkhdPFli
	 hVN66s0T/KKaMJNj9/LQ4PbuZzw62/Tr1LB2fPmlxlDlep4zsAPebdvfPv3TLU++Q5
	 7mRoUvF38Ril40oBvQ2ET4qTTIHMr4jjDE/oK5+ElpcxiCItlIKzjhEvZeiR3TsEAP
	 10M63LhOIa1eFM51VZi41kwMJfXKjtJIxdrr2+eSrvhQUGKqL6SF16sYN+uH+0g7q3
	 sOPgTApb2MXceFbNB9GgCU5B95+q6FHF00cZ764c/N0jo9Dm73/gCY1/gKvWSoZlyh
	 ZXymJq2ImJkvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9219C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178648083368.18055.5081348124774920361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff279c3b8bf9a0726b907ad60c348cb2f1dff0c59e7bd2e7d9d36a0b41b87de8
Date: Tue, 11 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786480833
