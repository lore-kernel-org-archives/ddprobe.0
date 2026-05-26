Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249D93CEBAA
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779783154; cv=none; b=IRvOVlKb15icvy999KpMXYtydDHrto/ysSqdk5KBftFXTyHSoBsCwGMJkrOcF8qZvzWWMtcMztISu8/FwdooISiC2hdidDmfBVQw9DyyGFAPI7x94JvV+UEJjWo+HBolkQJQ2JFFGtJHgnYh1o8qCaO4KpEci1cYbyr5jLRIGWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779783154; c=relaxed/simple;
	bh=EL0IhEM/+RdmTF76k+mYtf5QIaemo+ZBrrH+kDFMQB4=;
	h=To:Subject:From:Message-Id:Date; b=MOEeAaYDmQHBI6/4vQ6DnO4G/C6MuxuC8neptrDurvLVlB3ksW5FpMvJJNOewF7qS/JrZAy24leAG5vx8o586EVIRHGJGDO9yQs6vNNrtGVhI4PPnYxNzFHf08fPASWSgKexrzXhL2jZBXqRzFFe2ikf6KWNXfmevByceM91pWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lr0VEF3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lr0VEF3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68FCC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779783153;
	bh=EL0IhEM/+RdmTF76k+mYtf5QIaemo+ZBrrH+kDFMQB4=;
	h=To:Subject:From:Date:From;
	b=Lr0VEF3ktG2R9tFZ7axYRCvkR63kSqsdQroDPVmPdwRNAriRtLjHdJlYu21jiCJDV
	 gqc97l0K5eFKSt8awYOABJFRXcSqXOwKwkPeqKzBj/QKfyN1G+Q66Y6C+L2TcSvRId
	 EqXZpx1G6/zhn2uecjt2Md08xVbzeCH6AjB4keToNi5gIWRX1bL5NjbNLMFz24E35e
	 4hO91UIMUN7D6TtaxNr+kv//NIeQQ9jgsjOGWNFnnPZXZND/RuigaOUOj7s5RXwjzL
	 oQqPrwoMVaLnGM+2VDk9ghxbKXT+WTIlbBEjRA7OLXLd9yRJF2vhDfuHLTn6PRpDm0
	 /yqUZTJC2odPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA04CD5BB4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177978315369.25522.5063708233153462383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 127aefc0c02e235db1e7af5d2f7039923a6f03587dcfc6fa0d2eae674e373732
Date: Tue, 26 May 2026 08:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779783153
