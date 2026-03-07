Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1085F28852B
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772864694; cv=none; b=hafT3NzyjgiopZnNN3lauuj1fdlQrb0LXlbBpK3Q4AGpl/JczRy0/e7Nmm9HvQgqMZ1O21Y8gfXQ34xQg6nf6Eiz5obwp+eHjkLe/JP76RmMp4t2tOsn+bqBw+0PTvSh01TYq5DiDOBiFMv5CYQk9vqt3jgLzctuHzas/5lHZ8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772864694; c=relaxed/simple;
	bh=lYOyiljtLypBBzkgduYZsgK/PyVF95/tnpoBFzBpPI4=;
	h=To:Subject:From:Message-Id:Date; b=FyVqzSmrgIE2rjDkI7m10EoiU0yk/2mV7lDFA/s9t0xsz9OL6ijKHQOlumeh7CZ2D4Jchsv/YXqNwCXZO3YYbcMVhfLoYt1I4FTYH140zGq1u0rX8AhMaRch7Xg1NeKjbwE3gs6pa61OqoHO79MMnyZzlG8kMJ91MydkwDvHtQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amBvB/q3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amBvB/q3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A61C19425
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772864693;
	bh=lYOyiljtLypBBzkgduYZsgK/PyVF95/tnpoBFzBpPI4=;
	h=To:Subject:From:Date:From;
	b=amBvB/q33xzRaEqhIph6KGtyDRSEvoCYaL2qZY2c/NI1HQLwG4fzbds8O6/opmZ/H
	 au/Y851NfzzSWSo6xMBBntjZX6urhW4LgrwwwLVxFCv+8K3AsPOdpCSZla9+0YMixq
	 8WFuWjMkzWqk6BXr2jYS7+0lQbmgyOZfZ3GT7nVMNklcbvhAdCCcqedLi54Jaf42pJ
	 YPXYB+AOk7pZWndlrKhCEekLNdJtI93QmXbqmfHBCcT8rNYjfGu9Y6VuEsE/VwrDxW
	 Fg0UIbZ7lKWAnEzVJrKuknfVLJT1Jy5XL1j7VkuJDlbgPREqpmR3A4qg/npcMm3SU5
	 pjgwnRvq30oKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915CDFC9ED1
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177286469358.13762.11168711753841826141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0abadfeba29858690c3a297629f96ba6be0103f72e632b18a51c6bff9c4c2f2f
Date: Sat, 07 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772864693
