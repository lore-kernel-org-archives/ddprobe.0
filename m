Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1B4363085
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777619854; cv=none; b=j582OrKMLWkZcwKVQ9BP57OvB5OOVO5ZL9WSsQrVWRTnjUAd7CcChPpxxwi49MhYmP6GjAtFzvOZEiV3D340fk55f4riq36oZPzNH12MgSPnmczZ7VG2sbiPEQoHFqRtGgVNaPkhF795XSu8cew0tJkZAgvSKjqlAo+D8sTGJd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777619854; c=relaxed/simple;
	bh=PZ62Ib268bpnTgpyp96dR48QmmeXGFL6v9eUB9mcCPc=;
	h=To:Subject:From:Message-Id:Date; b=OFmuPeYTP2unMYfd4qHYbFtRTyR9EQAGnz6lznxLFDpvVAM0qJUTy/OmQqT8oV7dFVO1q7hj+qpkWdJhO/vBBqLNi1QjIdrtq/33heyGWRhZnjtkbFWF4YmlMbwiokqBoQmKHYnWaJvubFea2BUuB38WCFDg1ZddxT/oCKGwORc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xg4uJAdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xg4uJAdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94CEC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777619853;
	bh=PZ62Ib268bpnTgpyp96dR48QmmeXGFL6v9eUB9mcCPc=;
	h=To:Subject:From:Date:From;
	b=Xg4uJAdboJeLWEIvZdvYtNGaXZh0tvUKvHIV70ctbzcsrsXu4OyEu9HEwTTB+iS72
	 1+kBuMoNL7oZCxCI47FrLZetHP0rbaScGljQUNJF3286Df/Su3ycbsujYnNMg6Nz5x
	 cSi+XYqf6PvTSsGFk1NQgHLsLE8dm6hIZ59KZ/Vw3q8lQU++O+xoXe0bIt0ZyEI877
	 YKwLty+Qs42QhciqW0dSFnAaktKQ8rrVlZus8kZiqTaMzs7vIqhxSQ+n06adoWyAoD
	 9gGn4SKIc2xCZPzPQdXU6l0qxoEF7y5U7UiHOhiVdXtTlDm/z3WXmehzSk7297ZF6X
	 4AvlGXGt3PLDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AC0FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177761985368.24756.5368020231726721000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e222a5bbd961607d660de7e0146ebc587ae2e0a070e31a7958108b3ed1aec3c7
Date: Fri, 01 May 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777619853
