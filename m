Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15123770B
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759952993; cv=none; b=Iyo6OvV/uBC38DsuA+InjUNnFkZjeX3wfm6wxi42Vs5jMAwpO7wzLwfnXkao3/JhA5cS901d7UBZIoDm37zsVyNy2UJFDHQiAF8QIqonmlrDyFmpAJdM8fsADrUlmjv+sReuHjtOx5Pzi+eFUGXIcg7SS3mdw4Ou206R9Z+e1Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759952993; c=relaxed/simple;
	bh=WqeXwRooxSJ/q5b9yNVbi5h2WDAUf1IWBzkP3ETWNWM=;
	h=To:Subject:From:Message-Id:Date; b=VtJpeTQ/ux72Ku7c8VP7f4CZ/AHRP2H+MTfl08eqmqgeXOnM2S9TIwYe8IZFtIL6ABaR6F8gaNrLte8H6qJ5e77qdWLqB+27ijYXReVJrB/nSUW43zGDrCdr0x2LDH0VeSrXf+c8o4ePQn3DDhDhxMfvkBp0uLjAUwU8OTqSm3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9iz2u4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9iz2u4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A531AC4CEF9
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759952993;
	bh=WqeXwRooxSJ/q5b9yNVbi5h2WDAUf1IWBzkP3ETWNWM=;
	h=To:Subject:From:Date:From;
	b=W9iz2u4TtAyyMj6GdtXUpff5eKlkbxyPwTqx5TMPlPunW6mO3nXttJIKwTgCjpa83
	 +6A1Q7a1Bl5XUKTC7/yGVmpP2v+i96cbm9jtvszJzDICkttmYPFHepMLOVOqDtbIBZ
	 KCc1TrLqRHWNSX9LqXWUglLycTscxsHm53dbDqGAYWO7dI62jTdfBlIz+8qdLk640K
	 T0I3g5IbFZiRhCf5TqG+d69brlHkLQPgiPVuVpF5kQpgTjCGjTu18LODft2WU3SNyE
	 A6Db8Ca882RY5Tx9jQqWRJq1+PtnEXv6c8PCymMhm/wUY5N5QvE5ijsLZz9qdTEU3V
	 K3yY9y6TSOenA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C8FCCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175995299358.4239.13542111200654888347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f23b3f861e5a223129493970e0359c50ff910708845441cb3619855f1dcde45c
Date: Wed, 08 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759952993
