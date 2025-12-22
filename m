Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6F6309F00
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766415834; cv=none; b=JZ7iP33aKuuW0jl9D/4snIqCOISqsfbJGMZljbdxM87YidsCW6Z8U5sqI0Wie5NSo0sOXpaivlcL+8Yqjok3gmjN6U6as0gtDYeGjYvhPn7zfNlJz/Pm5VW6LZhmTd1FnOZFXZrw5SoUdfnDwHo8NLslymTwnrfx/3aqpN7NeBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766415834; c=relaxed/simple;
	bh=lWDzVpJgZUu6MxeJ5RAKzqW8hak7J8GhMSYdtmC4ah4=;
	h=To:Subject:From:Message-Id:Date; b=To0IzFE1VAJ5Ecelvqa8TmHTO4XXzZUaDnrz6/bwAVugP9AJ2JaOGBBLYsTfkFXnZb/M+eoAn950yNGaBGl8Z4K1eFZnVaEsx1jZNRkFzg60LhdrQ5W2IDfJ1sRRlpuvZS8yMZ9R8mS6/Qdz2EPnUnLNBf7slUKlB/ygHNY34ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xe5wqgL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xe5wqgL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F4DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766415833;
	bh=lWDzVpJgZUu6MxeJ5RAKzqW8hak7J8GhMSYdtmC4ah4=;
	h=To:Subject:From:Date:From;
	b=Xe5wqgL1/YnWOh6wlrayijMYDgVqibSGDcZvHbVNKGc8HhD7/nkQmq2U9rGffkV6V
	 Tt6rzCOla320deODxbyQSePJmF1FNFMVXYvcxzC7b1b7HO0u2iqWI0ZR4nFZg88AK1
	 LLWo5DDjJI9V3xn2mm4E8nDZ3mH8LbYr0m/UKxYnQDeD2e3KToi5TMhoTNPCXYa1oZ
	 XR8UpqH8QHuTQkW7AlMplxP9dcrJqQbi8qdQfcSKGe66wieUaZ2m297day/2E0rHHz
	 u5PLyPnNvMfz09A95xb9tyd8awmDevTYH7UXsxThbNqkXWAe6giuJaDGbkc5lbdnPV
	 dkdcjl5PounmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9228BE674BD
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176641583358.3269.7371540287482735196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc88745fb6fbb6a43ab95081a2a4c0fa0169e89815d3bc14854a47b920f42a3a
Date: Mon, 22 Dec 2025 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766415833
