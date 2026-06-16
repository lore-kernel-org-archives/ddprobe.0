Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CB8435A3A4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781609194; cv=none; b=B+O/SDjsej2vqrVRCbfJxlC71xJswUOCEjeibxTWBlVDurabc9jHlchl/2eBwapfI57/I7C2TDjNF9mnjdD8NVX8+vqnAowVLJ5fk8Ef8ePME1dHpBbmsEdRUsKd/qCbXqzLS4tlncTlLcSSbPpxsl+PqSeIn0eUJ8RiBS3r8M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781609194; c=relaxed/simple;
	bh=cC+5DYdCQ77DD759KomIASWcHIcGkypyIrK1DNdS3yM=;
	h=To:Subject:From:Message-Id:Date; b=COvq0QimpvbSIDbpXZ+cp0stfq9aUOUodz9fRZoGRPpnfCm1u2fhE1BBrBc7FQUOU/8O+I+QmFI4EYVIhqmqqePu+epeFPi9CK143ABs//iY3KYZn2HztcYql2WyXwjCWiqb84GgjF2rY3Ct6Bajn+csI3CQ5+fNDnE5NWXl1Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecakPbO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecakPbO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2C8A1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781609194;
	bh=cC+5DYdCQ77DD759KomIASWcHIcGkypyIrK1DNdS3yM=;
	h=To:Subject:From:Date:From;
	b=ecakPbO6rFJL4JqhCFdBJHpJkO0v7fJ70y91kwvFx0iloHJANlvm7b1+bbYP/T/M7
	 W4k03K7KAR7oLMGxYazrOV/mYnRIFmFgFANQJ5MDraoj/mM4KTawQ7CMKNbugDxIFe
	 EzYR8tT9z7WDWmoomCg43mUWZi//CslVDjsySmMEZXVw5m/1LdFMdCe7WsHZHy3ZxL
	 B+zwWsAzCO9CnEEdVGhNVBP757PkP1O1nab5aKyQZu3nwVc5ZM45GWOSuqg/w6YTjM
	 4bQjxC1DMVMEAm/bhvSpagdGy0mp7ZKy0cpHylpnSnJc5GTE5lrdM1wEGcOwf14LXi
	 L3YknMkjPN17w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEAFECD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178160919390.21091.14461751822472866640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56eebdb926b0bf08bf40825d4aedae58dfc846dbf1281c32c6e83930c4fe0777
Date: Tue, 16 Jun 2026 11:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781609193
