Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EAB21D3E8
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752129594; cv=none; b=OwXuwUH8DUXQckkLeQi0SJA5b78vzqn2qetS0LgROh/JEXZZoXf4RkJhkGgEsokkpb4Y++K9uc0u7hEutawlvj2xIAF26Vej4fDlRrp8D5zLCORGw5fvcDr3qbnodv1gDAIf6N86vgqvrhkJEudu8FB0j1N5Mb1JcFd8ojixVRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752129594; c=relaxed/simple;
	bh=OV6Ru2bLbUncYVLFf6h5vImR2pa/L8WplrWtoyg6VDw=;
	h=To:Subject:From:Message-Id:Date; b=OCNepUyc8QGnsSkO+supcF1NubkkvQbxL6/H2BP2VlsGQ8VQbnewGN6yuZgvVBO4TIijVqvNu4Zem5l1acKIuVIWP0rqhiIpSdzihWKaIpNFAktyGoz1WU99J1l1goLdHDnj5TkrP/Tk/HFqvsA61EOsfqDk6PDTtiGB98Hg3bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgvZvShZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgvZvShZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22DCC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752129593;
	bh=OV6Ru2bLbUncYVLFf6h5vImR2pa/L8WplrWtoyg6VDw=;
	h=To:Subject:From:Date:From;
	b=JgvZvShZdEYz8Ks8cO9QJyKD3v7mq6cYifaXM4Giub5gadgxq8v7P6KIMc0rwfI6a
	 b9KrUVzYrkPAK/7c3XZAsMFx9VOzYYuvA9FSr379kUtU3IZTro7aXaVrFoWBiOtjkN
	 D1XaIU86xVnAhOdw4tAKaTFfPIoxCSQmvbJUXbr20ObsJrPA2QwRm2Ck5nUCtSP7fb
	 OK83GGvMIvX98QmnVq0SB15ywj5jvFcLv/cz1wG+cDenvGV3/djQe0MgOMo7rFOzyN
	 zYQRUewEgtliFoiCPRAl+V4HOgYVNP3YiIz/0WFUyUjhreOgsTL6yXB8yuefTkKpzX
	 BRMI4hhOqvuqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90667C83F09
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175212959358.13149.16200860602849170357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b533365a3babeaad094a22f3c83c4871fc235ab51fc123c1879a5fc8e44bc47
Date: Thu, 10 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752129593
