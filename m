Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D8E2673B0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781229394; cv=none; b=fFoLudwomGtPrTiOhn1yqOBv9jWY9CIcym4rPuo+JNjuSEMDwmDRtFNrL9Dy3nn4yr//kTcvQGKNnhhpjZ0tTXnqG+Mdb8d1QikUx5EF4MN14cUO27ez+d9qfqzN2A1sJOtlCigViOjI5vOQs+VxzhGJrJOYPU1VjPEWwKiDoU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781229394; c=relaxed/simple;
	bh=7HH5bT5DdklaYtK03vue7PfKlIDA+WSw7DxAPKPJ8wc=;
	h=To:Subject:From:Message-Id:Date; b=b4rANkxaW6qpPksVijrG+6wiHXREjj2UNxmWGl47+zNRtuh4rgUu0DW9b01nyPh7GEedw+wS5RaBRjGN5Pbxd3LoN5kPt0UGkHAojiCPd/rEcX9YmTd3uyvZGtwApgCu6GDeR/qqF/TlAAfnihTl7JQn03gmm7zBBpnDEJ80e+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8uqTF4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8uqTF4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9F2C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781229393;
	bh=7HH5bT5DdklaYtK03vue7PfKlIDA+WSw7DxAPKPJ8wc=;
	h=To:Subject:From:Date:From;
	b=i8uqTF4mGcYqBEMHg9xXZKlWggVZqYqs/Ksl/QhrValmNeONpW8gHoUCA0aDAzD0c
	 Lv6ublR9BOEZUGB+o5WvJAZulQ+xPFXa+ByRqAQkQAFGeZ6gGMkJ/PsjEEHjUZZ0w+
	 ZWnLtgQRUXLIxkhl7VKlneMJanj8KfooMSF9Ks943GGktHRLfOieSyuHYP3K/g9jry
	 Zcu5xdjiQsm8aaFTAYGHcEJYcuQ2Ifzg+7f74YoVadV+QiDi0xKi3gSHIimkG08aGT
	 H2UordHJ/QE1ZhXpmn+6jnI6plRPcQ+s4iZuEYSAc6XFEpRcA8h0RgAWRQOK7v7C48
	 Hk5l1vjGyDmYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B151BCD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178122939368.10662.11432241701624247705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ea0c9e36fe1128a390f649173b1a3dcc3e5261b1f48222d627d5f1fd96075d
Date: Fri, 12 Jun 2026 01:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781229393
