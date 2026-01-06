Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142122989B7
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767698034; cv=none; b=hzMi7V41hSESlaM7HPGt05NObVTes34eOas8mTI1wYbRiZwc00eyWwHKHS6VlQCypwm8BhnCfK6l7kZuXAtEuvQfxJafm0eUkRBicat7N5WB6epotHVHR9/LyQMDFdSr6h76mn2xGkKL965xvB4Pat+2PstFdiLeqyeK+nxiWOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767698034; c=relaxed/simple;
	bh=W+borKdprmJUsXBtTTeO+ImVpF9mzkfeuwlL54Lci4Y=;
	h=To:Subject:From:Message-Id:Date; b=odGyzGjyfkvhNAls6yMUR6YPAdWfWa04/4RppuV2dnq4uIHLFrOASwZWQ/93kGgSFhqMOMWcOCprfN/8NqC2IpPOp/BTwFHldTLBFGlEfStnqUPCsZ9dIoPNrp96yrdP9Pw8010qDGJOGsWu5k57BppdXp0+UtKIHcY8O5zI+O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCon9jtX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCon9jtX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E36C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767698033;
	bh=W+borKdprmJUsXBtTTeO+ImVpF9mzkfeuwlL54Lci4Y=;
	h=To:Subject:From:Date:From;
	b=PCon9jtXrrw5MTNBC9VyWomZXrZXxywZnGnHBovW/KqU3fl/dz7Ku1uwSuk41zYPy
	 TdKqKw4UoZSTl0MKmDlGDSIKG8St8YPgGS9HvU96k4rr7Kvo1cwXMTM1f/rEKmOLPA
	 oRI+Tp1Z3/+e78GI+OMpmMz4ZK5X65+OI02/rFKjzSqVwEEXtHvC3F599H+KQTSGC8
	 mCIEVKczx5Xz4gfHjwJbPvwijk3trlOE1R9KGPklhlAW3bjmZbDBqIW4s420vctOee
	 XY3IgVexCVNmoSnTmjLuqsQdlSdYSz5XHNhxsibbL/CpUqAAnHhbcmmXFMJO+LhJmu
	 KqKHVQBXDjf4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916A6C47BE2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176769803357.8461.17574766639884549429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf6ea72cc97d805ac7c137628fc94648401987def07188e14d8e6d0910ddb8d
Date: Tue, 06 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767698033
