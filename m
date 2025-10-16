Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB68304BDF
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760602793; cv=none; b=kyVCoNi2RYw6hDzKkl496FhoyDSUKmJVaRPi4WayTxWj44dCzLoWLHUQ0e2hY++ijGdNQkWuJPzqXBmgp2LVTmK0/Z1ty3fB4Bhirx0Q4jmw7QPYCMFVQg1Jvk4kV6VnPHst/9WECY5qTXye8xsECDbGekaFgikK5uy4o28nWRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760602793; c=relaxed/simple;
	bh=FC8vy/9x4mrUazdNzOw6EKAB9LSt74D1d78c4q8geCg=;
	h=To:Subject:From:Message-Id:Date; b=nHyZltXlZVhfgm9N/JvqQOmQ+SpvFBiMxM9XoSAVoLvHInSe7pMZTw0SlXqcFQ5rvDkp5/iqBzsPcRXuR+NXMUVH5WZghrGYpLcoTAXXJwgwFK/+57z5SeV5tyyEx4Trg3CHQcDUQLxvPXtwESLXx1RcoZs/mxZZj2sasGfikvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p47niP8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p47niP8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2547C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760602793;
	bh=FC8vy/9x4mrUazdNzOw6EKAB9LSt74D1d78c4q8geCg=;
	h=To:Subject:From:Date:From;
	b=p47niP8pp9xw9NzCLgP6eRVlsja75wyGVCbOBzbf1VsJw7aK7P8aaRBdrpfi/98kw
	 n5c7/aPs5JOo58oBNJY9QRG1V9CRzczkR3BFKc0zKxktnfZ3XodVWebIATbnPhZz+V
	 f5Lq4Izo4RZebRGQ4E+gDTfdzzkR/KVBdCl2DREkBWgpavwfk+HaGimkhWie8VKVCy
	 bWh6XntC10ff0ta1prb1GcJ9p2+7ZxqRgxGhQEtdPxyOjNASVdQ7hykjOvbS0f9X0l
	 tpUWakmpACAtUXdoS8g3UZwXQTq8RUWj2cachZZea8q3FF2w2ocsFMPV+4VbNDbyN8
	 Wn2LVlDkpA69w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9042CCCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176060279358.31761.17100225260806978873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12dc44e527ba12e75f58baf70e29246871276b6c79dd9f44a1fde4cf158d2932
Date: Thu, 16 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760602793
