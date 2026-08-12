Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA6A46EF71
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786555234; cv=none; b=Q/1ljALFhyK8ydgNVxvU/rDPxQnFOp557yaxIr93XlrPBR4LHNCPDg3SGtajUl2XV+N5MvpjqVrmtpdjEygS58CRZ1Qw9wOt6CIgHHZfADjZ+CJhn1hxRcIxPk/dteZ0N3k6tGkkqESYaL9QWoxN5nlmL92jCvy3OcNd0P5R2PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786555234; c=relaxed/simple;
	bh=2SOVTks4jrAZDg0XM+zL14teUrZ617l9S6ZN1d723JM=;
	h=To:Subject:From:Message-Id:Date; b=S84v+WtxV7TX9cvQ5l8IhpmWwPID/nns2hJYP2eFRE+C9wjqt95pnqLRTxlWcx6UiiOsS0PN7g2DuASaJ/83yfBIFmQANVyoO1Kq2lyL/RmjioLIRBKBkUZs+oiyes8ib2/r8vK88EdDG62NBlubTCJ6pHl50XtcAK/W+RwtZrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxfmWjbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxfmWjbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D06C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786555233;
	bh=2SOVTks4jrAZDg0XM+zL14teUrZ617l9S6ZN1d723JM=;
	h=To:Subject:From:Date:From;
	b=CxfmWjbMCY0LBa+oBZIwpKeiER24mVnLYj7uFY/3Sb0q4cmX+aEf0GhOmEMR70OgW
	 B6k5E39IoBQOb344wUGwWPMm4GS0E/9zy8ns4zx2ZGxkWavo+V3QPe1KIItwK05xg1
	 B5lbCW1k1o2eCyURbYMekoSrnroggn1IOnPCVLteqkkyhY5foGa/frASLUn81d+s54
	 DxsAjtZyK+m1w3TAOi42xQZ09J5Ez5opPuo9F2okm/rC7UxWDCwPwDSH5nuLE84DIE
	 5LykS4q7JsJJCIuNJOkBpgPh/JOhU9Ss5A8oCwGYZNiXGA4TLxAqJDqfVlEGNL9RGR
	 anbATHJ6PV3mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF51CC5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178655523370.1949.651332747330839873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2864477bc973c4d2274d950f87a74a2e5b4d96769b49429fd49943ab870a691a
Date: Wed, 12 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786555233
