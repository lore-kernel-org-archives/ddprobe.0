Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED06D529
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750567794; cv=none; b=NS6xokCcZoFb3PwbSc+09ZrnZ/oWrvTjpSfFkeUjl4KEft5ZPsd6XBb3TdvVfBYTN9ar+i1TdbW3J6oZSWG8rzhMMay5voxXH5/SKqS8qn0rRXSYFxZSi151M2Yia8CEF+mhUDTgT9o5K2qq/VKeHO5xxaYpdWzG9pw3q1hgd54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750567794; c=relaxed/simple;
	bh=ymwG94FtgEPwyO6yMuVjEBLjWpzb+zsNL9oP+hewTUw=;
	h=To:Subject:From:Message-Id:Date; b=qTda/K9cHxd3RyYaiePJW5q3drm8ObUkh1vfJFszFowq7YRD8XSZvKJnFit320WI/AyqP09bbSlYWWzIBdnmycPxTqmQP8HFmST1fDXblDeXpkuMkwy2eH27DrAPWr7QlMmKjU8qofutf3P2ltZq+ly97ws0pgUDpdDjUCe6c7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TB5zKMk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TB5zKMk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4311C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750567793;
	bh=ymwG94FtgEPwyO6yMuVjEBLjWpzb+zsNL9oP+hewTUw=;
	h=To:Subject:From:Date:From;
	b=TB5zKMk/8sDgjQR846+t+Xu6EyCavzwItkhRcETrYjafJ0TptpusxymA0T26lsQsA
	 uPqpesdm1ICijmbefyxQWEhirq0umZdXFabh/NUE6x43qkUCQ7jpzo065ZfzYgYjhj
	 CgMxlS/TJkbzFz0WIBcuP+mhaMZw1Fu/0uvs3wWiqj7j6dpQb5mrtBvL9bKtVLZl+C
	 5WJHXlPzgPcQRENAsANXOYZr30UHoqXLZfqH5dfv0iN8UCvVEDn8BlOk4wlnXLS+y8
	 XOLPPcyvQ39YEy9d5PQZ2wx7pgKlj9MR1iw0cndVaTKRjLVebrzKH5spezIqlwsq9X
	 t8as8OmktX9jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B6C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175056779357.29179.5556755425359179710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a1ae9fc677c14e2b96f925204125877c542c5206e8577dcf55aacf74a455c8
Date: Sun, 22 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750567793
