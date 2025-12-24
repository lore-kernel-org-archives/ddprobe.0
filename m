Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA7728E571
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766559834; cv=none; b=Vs8xP/OxCqx/ns3r0b+xFvr0+/zYzz2HQWQqivFjw9hM9VzaUz3qZzy8P3hm9fVeEjPdSId7WJ2z0R4BmQqb7qKkJ+3chqihB+yLV8sIzZmgIMynDmj9tZyRI8Mkg5+kRXEqEhlMPOV8lm6Y9KhFTDpWPBHnFg5uaGu3cTze5K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766559834; c=relaxed/simple;
	bh=2z9RVoemOlKAkIv5xvFVpQVdmmnLOJ0Dvl+3qojfuh4=;
	h=To:Subject:From:Message-Id:Date; b=AncMI+8sGDrbfeInTeO4V4qta/s5QLMpHpIJiNLnyr8GnM587hEjMw9ManY16RWK69PUMV26Agg9mp0yRGKy7as0QQ7XAYsYmSySYEpODwKqkaNHXzOgi1TtsIa9JyMYNZC38GhdEoFD6JOL0C7VWAQw4m7Mj0OngyEwzNalbqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZGa60tE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZGa60tE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8568C116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766559833;
	bh=2z9RVoemOlKAkIv5xvFVpQVdmmnLOJ0Dvl+3qojfuh4=;
	h=To:Subject:From:Date:From;
	b=XZGa60tEyC0auJ+F3vGBeO2VOsFo7E7HFD4gu2FQMsPY5xtGdRvub4QfLFpDc4KnY
	 /N/Fvndc4mPgrl02vpptcgihN0QFb3XkTkBwlFHOZ7WtD4ySK2rmV4ReSYBNCnfuRJ
	 /Yq//qrsQxb3/kjKLtay/oABxptjcJ/P5DEeaANj64ABOk3IP7tXhTFM3suZzWXw1c
	 jT5MtYlbqVzl4Qct0O2w3RwglHxl2llCvaJqRGreJi3jS9Rl3ZRiGOGqkw4iB6WaHM
	 ttsHaOP/o3ByD7OlbiDk/7dEEqCmtDkJoAJwMPh1B1yv1PqwQYDUQ+SYjkZ2FcMHTK
	 fgetluoe7CY8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E53E7491E
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176655983361.10728.419770399809177089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694a2d69559f6f7ec04eb493c9c2c95dd12bce3c2f18b9eca81bb86dd1aaae48
Date: Wed, 24 Dec 2025 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766559833
