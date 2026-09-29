Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E55532572F
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790641234; cv=none; b=NKnRJ/JE44TY1DFbFrBPIId9oWYM+OKUo3cG/AzP33v3KKDfu8xVt+lP1P11dowiF2XXe+i3/8F6NJz+mg+mBbJC1ptdKg0Dk8aYoOk/2LoeFeAwLC4IriW267c9s2RpY3edkqKLzbvsG9t6RIB/lRIZLH2lU7FF8LPTSZVuPgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790641234; c=relaxed/simple;
	bh=aaMLhYybfRFGS/zOWZtop84MZAZFwwH/JkL5DAAo57U=;
	h=To:Subject:From:Message-Id:Date; b=nraLts1QIOKHliq5+FQEqpA007+6Ay5Lf9OPMw8ncmPY4EtGzIkepwhAYubt0IFReze/dCs+lB52IiusNwwhw+orwzb5ZbHVN8bkRoq6HJg/Z4jTZST/yUlTOve9Hlm/TCOST+bvTWPFLEZH1XEbPaqthR1Dhj8OjNBf8P/wlc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MuWUNDBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MuWUNDBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3DBC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790641233;
	bh=aaMLhYybfRFGS/zOWZtop84MZAZFwwH/JkL5DAAo57U=;
	h=To:Subject:From:Date:From;
	b=MuWUNDBmdnhnbrLal/k8aCdMk9+rsNlANM+rcdV2dGp4TqdVxBs2n02oORBsK3c3B
	 YeuBkZPeaYFbX2S5lNdUpu399+nykecAM6aqJ7chn62Qoz1ksf/irN1mHfmvM5hYDl
	 aRtEgnTiWgtHUBoR+MVD6/KbviRaAKTvkkJApKUBvtd+P5K9z176VJg67+Xx3XhnfE
	 QSPsQAHYO4CB2Jyrr3T4yq1s7VPasisZ898FbPaHKriJsjjZDBMYOgfvdlGJfEpnjV
	 srASuYnudel2xY9hZjiOKZtOIFOCH5ddiFILouhfCCcmmGaJcLCd3XW8aZ6HNEdau/
	 +jukuVRgltX6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3ACCA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179064123369.5878.12570544518815755563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9aa967a1237a2784274e63352c1177488507a59982c8111e5bec128a8552ae7
Date: Tue, 29 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790641233
