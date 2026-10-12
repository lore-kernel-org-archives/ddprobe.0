Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED514322F1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791796834; cv=none; b=RyafW6JXzxDql1Sz6hjskwRgqaPAQeSLZUqxAbgZgrp7myptAHfocJYhvB94FakUeyUj+5Cn3AICvXngLQAmE60hBDdNRSNMPvCAk+tuj/dsUykzJFdB+Qe5VYD2F2oIZuIs2RKbfwkPyr7Ok2VXcOa8Kxlt3zFbnjEnJo+dsq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791796834; c=relaxed/simple;
	bh=khupQqn97blWiaaqY4ty2g97PZSsXVix+t2EWQHjzkE=;
	h=To:Subject:From:Message-Id:Date; b=a7XbxDEIMw2vsTBgWk7/udxmOrbb8+RRGEUvPAcLj3ZOD+PJoa26fLOeZzi3iErpHljeRavqaErTJ0XPMNQJ1R+rHEAAN8rA5TplkPAvQgOBHO4813CVLPi9uvQej3krkkNr0wQW8cP/TM35G3x82Ckta4tUsg8hUb+emKRtoe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJMM/uLK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJMM/uLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDCCC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791796833;
	bh=khupQqn97blWiaaqY4ty2g97PZSsXVix+t2EWQHjzkE=;
	h=To:Subject:From:Date:From;
	b=kJMM/uLK0RRQvKQFFVGWhS4OHp4BcL6XUpc4v/1sUWJOLBeDH7ViVuKv1CGgI8fT/
	 wu1ouAojOy9TpgcUCrnNZJDHc3HFJzcGp2om3jgwTnTO9vsQC3BWd7q9lL5OjVOUwv
	 VHMho5HMl8E0qlXsZVbfphbXXk59GG1pSt9fZ2gtaqeeKXpaIFYD5MQeAWYPuTChlb
	 c4OUjRT1QAlaih+nIquGDSPZMZ0OVMoafyBVA5kZvyecXn02iGyLrO4X4C+aTzFw4g
	 8Imd7eL4LO7+s7EbTseuotOuXP46IKqmZInRZ8Kbo9QrZXoIoxW+ftI04eU4WOhg7R
	 ncJy4goQJoaLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDA7CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179179683369.3991.2108732814104802481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b98bb0075e60ef4199a61967b84e11e700379d43ecb9632d2bdaf742710cfb08
Date: Mon, 12 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791796833
