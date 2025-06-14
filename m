Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D412AE6A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749878994; cv=none; b=KYPnqos5WmYJ8CcxylSkVGKOXZPk/GJzX8si8X9QVlRh5OCWiDaxewxMyePmpYSu71khJbYfGcgrsovpu6aGIhlOLVEGY2fQ57fI2S9uFfsBbEtvFqEzTGrvjdNHkIcCTBzoDxYZzQmOxRpKiD2LEOfaZiBZNdyQ5vQ0Yu9JjRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749878994; c=relaxed/simple;
	bh=5pNtRokrw/5NO/NZVemDmnQ58HPU1lN9u7PiI187yUc=;
	h=To:Subject:From:Message-Id:Date; b=MUQwcs5oLlKzbsEutQbt/5W288eH6CaUvmZOrvi2owptk2Upz/ff2lJlXQNQfCnnNhgWftEV6aPfpUmtd8fIN9SPk6a7b/Mi9fFcxsTtfKjr67ZlY6/DfjbVTEuuwjv961FZ9oHUVyQe9XZCzFJb1uXVN46SizBoVbmuR2H7g5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/RH0fPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/RH0fPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BA6C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749878993;
	bh=5pNtRokrw/5NO/NZVemDmnQ58HPU1lN9u7PiI187yUc=;
	h=To:Subject:From:Date:From;
	b=H/RH0fPZZbcefrZ5Q0t/TFoSFQsEsVtIZ4OW5wS+6ofwVS8ni4zFGfW5FNmAhGA2O
	 7xC7/vuy0fykmq3Le2kXXvjzl2LnGjpl6PQ6oUNe9malgqpCyY4dWdVQ5SNpqNcvSL
	 Ivv8Fa1rCqxSu4X7juT5qoL0TKppUeSJQSEBwc8AoC8BOPozguWIyE9/090lACbJ/s
	 OCA8trHQ+3xhpwwqisc4gCrJlcUw5ytuj4/7RQ1M4ZuPX6KICkkA2I9o482MnKRwqY
	 S7Qg3TpMcrkkocc8I3yG6H+6onBFR/GqbBUAF52d8Zu70sL1d4ZejHR6v4beUPHpem
	 f3eejhgHsJ4Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D2C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174987899357.14859.3298918415697956744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b34c80b822208dc187d4e981e2f709b4401cfd1bdaf84de886aa538a9a995d7
Date: Sat, 14 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749878993
