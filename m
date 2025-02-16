Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D003209
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 05:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739682534; cv=none; b=itXq+NgKIJez4MfJ++G2cqxYS0zVQElYlltWQTUbwP6iiCLSVs2SUam0HlaRkYSLeE1qQZRStYzPd7E6o+L3HcO0u18pvNf+5pj+On4yB8bp1ChofHjQMDxMilxU4JmJD0K6Aaj8D8hFq+2qjS4Xuz6k9YPGAIN+rttFU/0cfXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739682534; c=relaxed/simple;
	bh=UXuOo0bfJ9kCUi5xP6aTxlA33Oc5wvXgXDRtWLjK+2Q=;
	h=To:Subject:From:Message-Id:Date; b=h0Vm46OqYZ/A9MIoYfGIqONJouHAzSerYAgT52wbfyvmIC6tMJ+IZKp3+WwsSyGotr3RSGtd731ajYg+6Z+kFrXJzSy+wBq/ZbBLFk7p5cJV92RY785zzN7XFb7IF78hbfirSo7q1ZSa647RAB8SA5KBedKz8TltwpjVuHTk7hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6hmpmQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6hmpmQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CA4C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 05:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739682533;
	bh=UXuOo0bfJ9kCUi5xP6aTxlA33Oc5wvXgXDRtWLjK+2Q=;
	h=To:Subject:From:Date:From;
	b=r6hmpmQO4qGUFMN5SMpxh5Mn0K54c+FjMehGuNeYf2vkUkTGWip02AIFuqY7hy4HU
	 q8AfYY4rtm+R0g+Y+RblAK0fgpWW9dwlstFS62qIq27eitzFyKaPo873TRaKKRAf9a
	 083afZCGu7pMU/iD/ZAf+ud/XyNJZU81iPC4vW3SWVyv0xUobmo2CexOIhOFgbyLXE
	 PLH7eumQWDdrhuOmQFD3KztASo9/27yXAzzhUrpSFRJ4ZPU40HNBbIBd9V0vjXxTbZ
	 3HSN3iWsGd/CxDztVA74NIjRKdxzPDlVemmsQyAWB4Dk5FW2JbvhRWYrvVNsgUV8+F
	 OBHLEZc1k43rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92469C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 05:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173968253358.21625.5603696125544518754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf402d8d003772b6e2cf982b3b32b666660b70b79043c848ddaa2d2b430a1ee5
Date: Sun, 16 Feb 2025 05:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739682533
