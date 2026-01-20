Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E463644DA
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768898634; cv=none; b=ohXkSVhEQ83AHL1FnYCnScXz8XCgo/KnoxcUo2dlGLnAGAJsLhFjFc3y0g5RbXdIdMcqIF6XRdPfjYKrO2no1wp762ALCgCxXJtzlTW4Tcd6ceXO6mrAGEHTYt0DN6iTyFw5LpDlGhvpMK8Uo2U2RSBlf2wBmh7vED3KVinHtt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768898634; c=relaxed/simple;
	bh=Yo9l7e7AAyLewySL+cZ8KI79QtPFE9lbv/GBDZJ4tns=;
	h=To:Subject:From:Message-Id:Date; b=s0SOofvXqyH+v7WSIn3SZSiaw9SUd0Ol0KJq4dQTeM/q8RJEjDIsAqwIWXfulx6Tm9ODD9c4odyRy3vTdpC9sqQ+hoMebdwH+O7HgFqvoMumiQXZ0TNvMRRZVDfrV0hcxOk/OR3IyY+RE/XzHDLfVL3T7IrXxM85nyivj1rXIAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMywtE6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMywtE6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F2DC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768898633;
	bh=Yo9l7e7AAyLewySL+cZ8KI79QtPFE9lbv/GBDZJ4tns=;
	h=To:Subject:From:Date:From;
	b=cMywtE6FJ17F2Uu1MuZFCjNwl+4GbF0QKEzQmmcLILMAw8092yECPg/x21w7jEbYf
	 h5cTFaUh0Q1M41lsTUYh5WrA0gXvnJz21JMSY3vK6rPdqZoXKFj64RzCyu64X8/eex
	 WOYNmuXdZZwysXCsGhMiBetOljPzXRfp+JYedSu8QK2LmRRlHDl/hUeziXq8glw8kd
	 TEdnBy5XXBL6bZ4m5Gtm9PfDTZDxSSHAofLwg7xiwT4Au2ItdRbArVPUxg2SD+H0TP
	 L9YzYNPj6U9qL9nvWLaX2hGBlrcxL8fuZmaKOsD/qzDKKO0S5THTVLHs3H39AkuTgF
	 eGXKyZty8QuiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F711D2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176889863357.31135.10026934673659747133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 635afb83555bc184676ab67a344fc56ac397b3fc2c041e6548585a24b5536651
Date: Tue, 20 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768898633
