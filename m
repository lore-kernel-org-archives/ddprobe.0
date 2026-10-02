Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6047947F3A3
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790941234; cv=none; b=lB6ShMzPJVY8iYqUFWvYMhdxB5B2WnAuDTgSGuYRCQCDVmPa2dxs++83e5w7X3YXG07kBVxowtPqScsMAqSqgm/5xrRiqz8w7Mh+bG1DT1RSnYzHzuPprMbCreLlaSe65toTJRwwoB379WyPtC/AY/IojX47+Bzy8lA3vYZ5DK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790941234; c=relaxed/simple;
	bh=YBwsMgfH6vmD+FfiYWKZTEDFidWnQSXN1i5+igvo3Mg=;
	h=To:Subject:From:Message-Id:Date; b=RodoDGyFqBF+pTouMLrITp16P32eMzbt54SLTmYZWInz19RBxpV3AGUKl8uHBjDaiFm0OTA3X4u1z41xZ4FM99t+xY/NMH0/Urj4ZLz/Lp6+MCloXNW9ZD5KqVKmxqO13BcSmpleXQQXYjfV4oYGZLP5Uv8No7FNkYaVwEass4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccIsfefO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccIsfefO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED3DC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790941233;
	bh=YBwsMgfH6vmD+FfiYWKZTEDFidWnQSXN1i5+igvo3Mg=;
	h=To:Subject:From:Date:From;
	b=ccIsfefO0B/qmtTx152OjFAMmPqOIPHI+k/E7kFw5jSAjakOYJX2VfuPULpVXd2rK
	 ne0jCtxR7qaas/yDr7dnjkWauWtAKJMzl58R8BzlwOUdW5jc5rrwkB/w59Hrn9C6g2
	 OMNMaajdL3U2ybqGfOj9JeYG/e2pkuooch+xz5bFAIVo/TUjuetPLzTR3dwQgRODzx
	 hwCtyWvpaZchBr/S4hkKr5UxKNLHHfJB2OFpeZvXU5+9U/suferg/C915TFswOIOyt
	 IPyPrPA6VwAo0tLDcZdVFZCiTmF2wcdxnPUZeH5yI6jWa6kYCpHnplGuo+sGFwGMLc
	 IUcvcjOEWDa7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE2FCA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179094123369.13409.14197235482356848897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7aa61cb5128b6d0ee42cb4d834cfdc2010b13c8259c96a028ab4fc3ae22624
Date: Fri, 02 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790941233
