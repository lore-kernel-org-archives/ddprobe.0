Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06FA928A702
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751646594; cv=none; b=aIi1V7r72zpptZimD7l3iuckBYhAQDPijvV1uyUW/aDNxUGy0sBNzeXrF9kSJeSVUIqJw2PBLsh4a5s6LOsd3y1GU+iNlLaBm6LWYOI170II+kx+IL0Pv89lF+7LLEa8/IrMhyzi5OSROjtACH3Inmdys/a3ni0yQ4v+MW8aIew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751646594; c=relaxed/simple;
	bh=KvIRSO7OzUBcgcVdGZmJX9BRYD9S4KXceYNc46ftBLA=;
	h=To:Subject:From:Message-Id:Date; b=HT0G4EkNcg5nLgBsNcssOCkXlRi3I8AAMgDZ/8rL66m0rLjweblZoYuLsoF3mu6KlGoAaImJ38naYmh8b2L7jniF/87plWsJ9b3rJG7OHn0V6Bom1nHIy/xitBF1iEJW9B4dLsfv+38IUFXH3X/DO99ak6UYPFZdIPLypOaUjo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kva6VRCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kva6VRCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F00C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751646593;
	bh=KvIRSO7OzUBcgcVdGZmJX9BRYD9S4KXceYNc46ftBLA=;
	h=To:Subject:From:Date:From;
	b=kva6VRCpP7Y1Qz7hjdN1OonYJTx9YJYiM3uu9XAtdSjcSkzm59m5O1EjqTG8XGlCy
	 +wz9IIcSSp7mCsqfJBvxYPyVmbdT6qD4x6gwhVGtEnxv6lMP2N1kIx3oSBD879bQf/
	 r9P/I6rPQYYkMfvKb6OaoUl8YW8opYYCsAQW5fU/uzeAyLKwWD7reD7ko60LL9yj4m
	 oIauTy2Pek5KhNMTLzQg2Cuw2+Xpbmx07mQWC/aVFUhsapoq3xUz7C4iLn/PUzO+4F
	 N2PZFGs6FEeaSUXVY5unSyeYUkSi9hVjf2IMqDZ+pzDRSoun860K+/aKIWnwLHpt4j
	 oONSyJ4uZO1DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE33C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175164659358.16391.370754645970454025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8881232a3d789e9887331363acb16da8e5c49b7abbb023fa11e1ecf7dfe73d0e
Date: Fri, 04 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751646593
