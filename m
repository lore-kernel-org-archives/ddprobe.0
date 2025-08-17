Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC2528B50A
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755438593; cv=none; b=mQfK1H4TVuM1i1X5z2+sUgrC0BUD9De90AXL7trj3Ux5E8zwEWDZW9+yXFgbfTCCM0R0kZ0JFeFBfCElnD8WTP7lhhXlcpaiKV0r6Sl7JIkL6i8KOvg4hpYjBU323mcNknwoXNCxIn+UC3YAKK5HLSe6fdGgMPnRW+KAm27LDA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755438593; c=relaxed/simple;
	bh=uo4ws8frUGI2Ja8mEyCOMKRtzITQe5IpWpwu6fJXFV8=;
	h=To:Subject:From:Message-Id:Date; b=gItLhtwL5Fa1JCmtDIZFNEpy9AR1+kOMO+qrlmrkIZkPg/tJKHacI/ITUe4nT64Up+ooSUj/k5y/98HyPDMmDuxnj+hfBsJqAdLTXvktX4i7viLQ7K8Nepnh3rYFKtdfaBgE2d33LfFHuhH4pHJhP+oy8NUq3TRNdT24llOWGn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKI2OODC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKI2OODC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB1DC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755438593;
	bh=uo4ws8frUGI2Ja8mEyCOMKRtzITQe5IpWpwu6fJXFV8=;
	h=To:Subject:From:Date:From;
	b=kKI2OODC/1LKQVA8EVr7mwYGQdzekBL9D5N0A4tDVv/fjg1dbXEouKOB+1bV7hShV
	 16pm+Ea6SBUP9PTEC/XW88b+NLToZNs/LnEtG6/PZjRBF0b1VmqYIrNMQaAqQcxOQC
	 of+jhvYhZD7FXo7V2XX3IiMZWLyA90VP6OwsVGcc91aaHYVshtMRtaNCKQ5sg9xmOu
	 gC/a7jrbJeK84V/qFkJm0j1G+FiGEdJI7rEqzg5O65NFy9WfMTEljJSjxSS368OXBE
	 7IoIKDrjL2xHZK9L596kkhvb0t2tmmyEOVfYBz5eDObIuCqU5KvM4qIgflFwANgrse
	 NnTsTLBBR8nbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91352CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175543859357.1992.10983096334030859094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e06bae18ddd8234634275d866eb2c9ad98ba705a249ea4dabbb4ff218f38788
Date: Sun, 17 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755438593
