Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF0FBA3D
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749255594; cv=none; b=tp0HQ/+Ke4y2ZMfVcQz0lZM7WsZFQ278hDFWdn8jxqmaglezFNYHRbxTCY74HUl6fBBa+oyn6kidoojIVNIYiMKuvz9tN8OE8eLiT0+OT7k+L23UTRrtFbZgXFQ3H0CwuwxF1awrt37hPPof8GxvdyTGI4rJTF/Q/lVTCTaRQjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749255594; c=relaxed/simple;
	bh=qXjWfUbuJVylKq1Y2aag7LSxkyhGZlUlWiYtfPK5if0=;
	h=To:Subject:From:Message-Id:Date; b=fey6P3bB1Wd8sAj3zzkPHzxLKWs7Il0h1F0dsZiIAoVYMaTcbN9q9fvBkVchy6mpiM7dvk7cLfv0IXLKoO1g4ExaOxfhUOfaEZMVJcEjRz099OghIofV164aV8xkIHAYttNZN4G6bu19qD6hGGsOAV0f1S8YmEecB9kSRVD7LfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPewqh1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPewqh1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2714C4CEEB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749255593;
	bh=qXjWfUbuJVylKq1Y2aag7LSxkyhGZlUlWiYtfPK5if0=;
	h=To:Subject:From:Date:From;
	b=WPewqh1zmT8hT0VQlwBEXWKJn8rnVAKgOXrricYsxaXjN0D6/Km2IYMptIGYuXwC4
	 3Mo7i6ogkzS5RIM7VBdAl5K/zGlMfiiqBKRGl7I5ZxY+SiV6fRHcwHquCv+D/rUPO4
	 tGvx0zpeE/WSM11ss0LJVkj7JioylHZdmnBDqK4qmXmH9oYWN+ALep2mSxP8/wCNtg
	 sxNFhYi7O1DWunjzEjd6wA7bmPF9rTGA8kvhLNHbSSMHN2fEtc29oKyyInuaSzblwW
	 AkSDreBsZBa0sLhBFZPh9CcZBsYUrqlzz14mjiFMs22neqx9dWgr/40TtDlel6zOE7
	 e/bttXbP3xdMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC3C5AD49
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174925559358.15809.2374840936104631641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0cf6282ca12a05007cfda7dc88e305b7163cc12a890db43ab0bfb8f316d330e
Date: Sat, 07 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749255593
