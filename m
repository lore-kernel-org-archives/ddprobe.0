Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268003C0C
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767147234; cv=none; b=OViUzXBZMWONnx7m+XsSJILS+BU4ygGlgRp1wSkj0mE2AdePrKDv+dab3riLQEgFmDeWfGCMKKQC9bhUHdpFUPUaJnyL4rfDOEhJ32C2PPeAXfG/k/nmUdVXUa+dH8L/26Od1aGaclCd4QdgRqdSUh3r5AAbiEH82pYpun6KW3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767147234; c=relaxed/simple;
	bh=blJ1PduWQyfOVCxT0WgJzVY3NgCgcrreylTZ3L9UQjM=;
	h=To:Subject:From:Message-Id:Date; b=Kb+QQvMMnZBpuilguyfifPlyhchmmrGpphLJ5xsHf3j4JjYXjkgKyfA8fXDJhA1QdOSnkElxBp49pd/Gj7o0Uu7JQ2mporbgH3hAbW/x7F0B2DrTyEcWuZoExv+QrLsA1c/x43+VAIMUB9gN+ng1hzdHSzWcFBhGbCMXbF1KXRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZqij4Fr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZqij4Fr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E50BC116C6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767147233;
	bh=blJ1PduWQyfOVCxT0WgJzVY3NgCgcrreylTZ3L9UQjM=;
	h=To:Subject:From:Date:From;
	b=CZqij4Fr8DMMgC7MpPsMjjzz4Ox/PcfP4JhPlCfv62CDeL9ER9bsT4V4tCM7OvLEo
	 2tbxCM/OKZQ0CSm2vHUAjqjkwK9my74ryNQezwkIoenrkJecpSv0aWF+UOaNb1CSJd
	 i4RWTDQS/XPkvkghejwD1d6m9udV/xV7Z6vs8fOPnYJffYQByK7m60+sh0zCYKe3mj
	 3mh7g4xIdNr2xr3BxiF2kxUFCBofI7U8FskM+8h6l4dfW534pg8Tp0yVQCOnPLf55Y
	 hRI0RXHPuYeodil5FqdlQ/hMIxDxJN6BhEw11dqy6KXMGhOOvrVCbqN0ZMedkLHEb7
	 D2FNQr+k0k1AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E91BEE499C
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176714723357.3941.12202827538084654861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f157b22eb61ac06d2f5127bf96f02efc1a2647eb5276bc523dabc4e0b400fc
Date: Wed, 31 Dec 2025 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767147233
