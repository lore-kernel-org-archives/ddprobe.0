Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112D910E4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706404697; cv=none; b=iI9qdodaPW4mr7LD4fDwQjC1JmyvldVb11LFzSfLC3YaEgP0QmVRYmVPnwEgE/dUY+v4EQGDLxfzOBbyzmgufcOoCRxKDEyXT/FwagoJZtcQg3adWfQCMK2iINokgFtZqo1sJ+IUU9ZyKThSmzFDSEu53YqQSKvYqYvFkekm3Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706404697; c=relaxed/simple;
	bh=Md9IyZLIBFIvxui7QctMRtglCrxar1hN4fi6m8k3a9U=;
	h=To:Subject:From:Message-Id:Date; b=YcGEzg5wRUpPcBSymX36IB5rJJYJQCZeXxfgEfEcxLKDmLQXtAB4CvHYijNh9znyr6CjsS8sOkVTwr+CSsisVuT5pu33JwecJRjcLmeIZ7vl5H/HzSSZDkhbyrXkSCczbVdceXN8O31ekWNxEMKFUWBfvs2cy28VBkXkCm5g/2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e53Fd21a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e53Fd21a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F6FEC433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706404696;
	bh=Md9IyZLIBFIvxui7QctMRtglCrxar1hN4fi6m8k3a9U=;
	h=To:Subject:From:Date:From;
	b=e53Fd21aPurHpWhlFRtMN8V6zeNTfcj4bXv5RUHWKmlUKuaK4kXRbIDWNIRjeGuCg
	 RyPB4Vh4E2QOB27rzvpqTNJ8VWCgIewFBJELAjYqXHhodwXeAXpThNMhfbeuB0l4Yj
	 dil302z4jxr1tTE1VnW6LX0xgckttJnSzA6D8uieqJY9MFBeTSJvUhV4nt5rzgO0BO
	 VwAR5vlOAImznepqzyp7hEgtIRY+9bx9+Zfu939YiHAF2VWrZl6Lxl+StsHYJeKzKh
	 1ydU05rhXcUhUzvTjEFMGtf2fG4Lfp7VUVwZxnZXZ4LYQBw6GMBiALuS5Oq18YfYrE
	 mgXOS45xmzp3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61CC1C46CD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170640469637.9914.5232360665645944905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ad85091b3c081e4eedf5bb9745d282f48b5cc39fc6ff149a7ae4eb527caeed
Date: Sun, 28 Jan 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706404696
