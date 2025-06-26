Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0391459FA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750981796; cv=none; b=UgRdpOsUA9DhBs8ZvRPagIrisTQHLDWRf3OQxHkvRKCoDHpOqpqi0vR3fZEGEFW8rKXuDqpXxgz84obuHPgz8n45RBdXvBjVI49UCKzcdgNlqx+KO4B93asCKJHoGczYI0inVKvbwFv0h0zSMKkfaVg88DJFWX9/G4kTZPBkN9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750981796; c=relaxed/simple;
	bh=Lk+cH/sx+l+NhWhqnV+swIvsvwnIStLvfxeMIesKrIQ=;
	h=To:Subject:From:Message-Id:Date; b=Ks7iESqTFB4p5at4CtKeCZp5j5VzNG9gwUyMSonToS6138qGr23pzKaxQnOaM1bpObCWBuQbNpBqnQ+rbCvsLLUQ47jAfDOuQGLsd8veZrGgezZAgulMzoy09FTTzbHHZmFyx1Tm4sbEMpnshgKDrkKeJ2QdxXwPZbraO/Y19zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qT9mdFw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qT9mdFw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C71C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750981793;
	bh=Lk+cH/sx+l+NhWhqnV+swIvsvwnIStLvfxeMIesKrIQ=;
	h=To:Subject:From:Date:From;
	b=qT9mdFw6JdkPq0KXz1WmYsNBY8FvQsFbkoJA6Sub0q07qZPLnsEcxCUEV2164ezOz
	 KG1XcQZSAVoRYa6LPM77YvJJRhiOpahLoof1h99h380jS+ANkRf/taalxLNfedbaG6
	 w8vU7lbZr/ZP1MuE0AAYTR75IX/oYMLoCM//kBR9nvggPJKrb1qloblCkEVq/rHVRF
	 PP2cflbCGReLQLhHFghSn+FAYpuUO6wOjh6cuWt1xjLxcxrjjtkXtIPm1aBn2dcg1F
	 lsIOrJd1Bhn6vuPqpUWitDZi/ewiNn0eY4CtJpYdOxmAAS9yUsUf8bkLVAeFGwEMX0
	 oXUkzztBop0ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CB1C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175098179359.8807.9301669970995616008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed6716350d7fa666eb2d084e12f0f864b4016c71f0cc64ca6da2d346493bf59a
Date: Thu, 26 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750981793
