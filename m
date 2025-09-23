Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB23324B08
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758632995; cv=none; b=Ul3r+TBoD475oZ9aRTS8fJgN4cRlAwdkbdzvxGcNAn0s9Q4Lz6D2YjqrWEyf5gBdA+EaVtUMuUQW+KNWu1FtBoy/u707E5nmTrow18RYnW+dy2pauJZsAfKrJpJMC9mYJxoLMwiWsboJydxW+HuYt9o2YDtVJpKUOtYuLnLY9MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758632995; c=relaxed/simple;
	bh=fupybJWjUYBla7oLg4tDsjLM6YD2oQsXfaz9JPD2mbk=;
	h=To:Subject:From:Message-Id:Date; b=W7XKRJZALWRtTz5cyyjteG3rhMH1r3/SAo5W16u6NqFkq3J5Feru/02LT8+cC3gmjB2N9J+OCO1ao2ZNC03H9dX8sOLs/rUmkFEQ6M7+keyWi2rkX7d+RHYvLMkkqE8idaBJmLoQmgiUxn4IlZoKrcLAWGg7AVfzpAzULHmMPn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOde56dM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOde56dM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA789C113CF
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758632993;
	bh=fupybJWjUYBla7oLg4tDsjLM6YD2oQsXfaz9JPD2mbk=;
	h=To:Subject:From:Date:From;
	b=UOde56dM1S97Y0sJAvG3Nvz4kAUOlwNb7lyF03BV/2r0pxMJdo0H3bsppNhpdDenr
	 u/GH+BYhma9ba9JJPe97gUbtGc4ngsG51FGXASVRiVkolPNyeew6L5QP+BGoe1oGB/
	 n9t9CDSn/BkSoMe4aiowJGKdTjUDPVEy40NIx1D0HdvsFpfZcQCAsjcMCD9LKAduNB
	 CLwQGmyV+o93puhm+oGneIcJvNn3JO1Iv648wNi8nN4BKS+f5hKkGrjwGsKbEaPcLM
	 e7Rxwhl+Tq8/KO92dUxGl+tSN6/VRElsrt3SSo5P9dlh1RG7kcTh8aFYfGHkRfVYVr
	 km4VXk5zC1dAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A53BCAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175863299362.15930.17864498103768133875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b001a94ef44381a542319a37ebecb721aeba2f70481630ec3d25a1bde945e6ae
Date: Tue, 23 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758632993
