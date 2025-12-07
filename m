Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158DC23D7D2
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765123374; cv=none; b=HQqIN97VMqCBKG0hrGRClUaqS28mcIS6kfI48j5bNOgq0Nylw7NdwCHstrLqpKMqPVXbQQtqFRBv8RlBmLMu3AlNkqBBXBmNCyFCEBPHDp6yCw8TM/1Zo9/9jwGuJJoVy6oDC6tu+KSboZqfXLZlygmhvdqkwy0OvRaRe8Y7Qpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765123374; c=relaxed/simple;
	bh=XCtKxv/M8cRdN67BSaOYSDY+2C1G8KhDbyc7hisXir4=;
	h=To:Subject:From:Message-Id:Date; b=bK6Q6HGeLqDP7f1py2b2M/FzSi0xan0g1FdNYTR6z1QgZN4sU3aHGJY5UwpznQ9DyGkJwo5mGQzTe3KO/B4tbB355nEYQxMT6PfOaG28g+OYjc6kqobKWUO75KktpHDeqDiiQYIICBgeee1Ku+Qr8ejhoV4MehoUt1gejJQv28s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvBQ5OYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvBQ5OYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03B9C113D0
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765123373;
	bh=XCtKxv/M8cRdN67BSaOYSDY+2C1G8KhDbyc7hisXir4=;
	h=To:Subject:From:Date:From;
	b=PvBQ5OYp3lT9Djjlvq5T4O4AkQ0TkKGK1jVyWcdyjxy36dFrRQ3XdTPTmfIdDWqHC
	 zLOxXfpYhT72TphoEklEUdULemjNmSwKZxvyR6ochzodK0+0OfFJKaXHNuKrcmwlBj
	 Q0M0T6XGmskfuuk8yU8DjmN6Wm+yorY0BwtW186p8dXOiDgjwY+KMysXbZm6RQxBKX
	 JOdR8GyiriDWUF2xQ5QD4hTNebQhYrPIzWLO+OWokErHSvQQhCKPX/0cgRC6rrC8Of
	 ovaqsqutQaZ6/9X4J3DM0DnfUtgJspnjkaLWANAaBLwwraHFGtbmw0OhR4z3dyrj4u
	 lk+R/v9ilhyzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D53D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176512337358.32640.11375832037231742409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c89a29dcd880564d09f554f301283b63d1237cd1c1c604d419e4abf0a8d271
Date: Sun, 07 Dec 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765123373
