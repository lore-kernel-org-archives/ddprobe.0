Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD45E318EDC
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772024093; cv=none; b=te8iIdDUFI8NEo/t5N/TuLy9ZZWQQgoMWhfFmw9fDHO9Ke8b12/JrRp4WP6c2w3LuZ0CXHppyPPs9REaqOoLalk1xhcSqcntXISESl3AEGkT0GW6TO8JSQKIVbvy5TXcaBbOIzpyMqTbGCX9KXEhyXXBiSTB/Vpci3qMnP4ZWz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772024093; c=relaxed/simple;
	bh=y4YxZgG/39czZWblBbh6BV362LZZmOcaqV1wt5VjVcA=;
	h=To:Subject:From:Message-Id:Date; b=sNXvTfhQIsl1+maU5L0rEUCU6cGkyigH0VVJ+12BuuKdwvhk3UMqJd3uVTQLK1HbOsV8nrpYVe7WUS+BtFK+5MDcZLmoSl2m2a3O0Rqw/spdSw/vrITGD7EiywqeM/OETcJwFMifKE167UXHQWj+N5xcqvcSJGSCP/68dvaj4qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkYqQVns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkYqQVns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A653BC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772024093;
	bh=y4YxZgG/39czZWblBbh6BV362LZZmOcaqV1wt5VjVcA=;
	h=To:Subject:From:Date:From;
	b=pkYqQVnspDraCWsMRyB+gDupHwk+w3OqaNKnGgZ2Jf/Bbj6Pl2KBeABI/i0q7LXZ8
	 ps7Y0GZXWNxPbCNQ4OEQZxJq/1FxgoHASyKlnoS3HhMTLporwXxtFPMXn3hZmXW1Zv
	 qZUtGhYSaWXyxGa9wuCQOtGaRJlQbVnAceYBRuXBIERaQRiHI6JQnOesOQ8kf7UdWW
	 avh+/T0dC1Vzp4Pu2IOMfr/+cRYdPIHpdI1PEjPZeFyr/wcNXnJoLG3YGF/eiPbGPU
	 tLpD+GCjpP/NaWX767Z0xh0u0gRTGTaW/rYGpDOaYjPJJMi9eimkDWZ0jjh+b+wk8Z
	 N/q0HGswz8/sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939CCFD374E
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177202409359.15666.3647645041947962563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb4a16ec8709c9c818c54cef1a463aa4f7662b12ac76f6fcdd3ad1ec73d9b373
Date: Wed, 25 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772024093
