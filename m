Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214531FB3
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752282594; cv=none; b=NSHWG9Msj/EJjxv71ItQbwU4mZRr+h47ayTc23FbVLkDTw+t4zeaTKHwEIqbD+Gar1TXQzNmjnaBXHZ4ntjCSPKGayP3fZ78/bYyJkkgO7Mp0ZPC1/tmxOpM4Z0adXZ3sk9eHxkua9A+CR2tWdv9kmn4JmssdTsIRdDuz5GQ+Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752282594; c=relaxed/simple;
	bh=/NJOMdBI6JmMBd9ZjItyFPn/33734ko2erb9EWYrgoc=;
	h=To:Subject:From:Message-Id:Date; b=mLyhvr5PjG9jZsw0aYGgscNE5xd8Hebq49prPAIFjVU1FI64nBC4+LaQfjSX5DBZ8jIPgEgzZSy28IpANgepBZvNSjqeQOVFaQ0ILu4wf3RJN0MF1DbUvQ0t03cDXE/CinlAfdIUew0YvkatkylUKKJFMvfBnqI+q9BGzjcun6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYQq3dU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYQq3dU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A293CC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752282593;
	bh=/NJOMdBI6JmMBd9ZjItyFPn/33734ko2erb9EWYrgoc=;
	h=To:Subject:From:Date:From;
	b=JYQq3dU7RvTSpjZjl8xuJYve6NAwg19JmZ+HFflA20Mz11bmRXDCJ3dK+KSx8N9KC
	 4RRHieHtodMeBHk+G7sZ/1WY9GvzKaFb6XGUIAnHiGnCeEi4IUEtqvtNB2L9Tpa7e3
	 NhGubes++m5cgj7jNUibAui1CM7n5tT8+y2eiH3Ddl464T81Ah0YoKGmXYWC9Ja4Yq
	 rXqTkwqf/XejT1xbyKW9Cl/wTN99XPHM2bYVG5TL+r0mAqlQhbIx2b7bDC6EAMBNP/
	 ZNqW78mn4A9KCVcqZaKvWJ4k4N8WJMGe03yeGSyBTLGfmq75iLRpGqN5/NjKGlpy4p
	 1pHfwUcHjKwbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92391C83F1B
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175228259357.9100.17575081978860102093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad261faabd88cf79ac360035f8cbd670d8535642301631a1e15c38b5f157767
Date: Sat, 12 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752282593
