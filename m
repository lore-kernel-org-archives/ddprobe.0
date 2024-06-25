Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5720214D6E0
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719315803; cv=none; b=nrUUjPC/rODTYutrX+jEC6WNXhKhBFjTZTlPWLqoyMYdfPQpa0qmXxupXeEw1+R3R1UAlNxngoTg/9iBTaaIygzMlsJdrTfZcvnH9GhJuJ3utisUBHDg5rUi5OFWYvLzHbzTt2MsfFMkir2VUP3N2tgKxBle3zUoeH6wJ6vvSgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719315803; c=relaxed/simple;
	bh=crXCbB+GbUoENdns7wOx+HPgGg4tIFeOr4dNMTMcImU=;
	h=To:Subject:From:Message-Id:Date; b=ZLsPKY9Ahm1JdUKbfDD6e6sGM+mcMl4S42AA5C/wTpRhm8J/o4qzFOTmCEzKORPYw3zm+zpyqQccNQNhU80Ng0mzYThu8ZdHdQcH8IHbzq+fCbeFAeIVH6+lwqbGuyx0gkRbQllBoIjlKBmvsK3akQDvvyccVypu6+jM3n2McdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/9HjzOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/9HjzOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EFDC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719315802;
	bh=crXCbB+GbUoENdns7wOx+HPgGg4tIFeOr4dNMTMcImU=;
	h=To:Subject:From:Date:From;
	b=J/9HjzOy/JwOFc5JzA4fb0LtcQx0ZnPZKB3I05BFHpWIYhWfrYRU6X9jtzvs809Pc
	 2YujtWhXvovHYfSsW6Olx67AqDZV6nPaYsOVZaZmEOfuPNifzwkluDKRPF2ZcHNyzZ
	 2XkoCTGuQewYSx1MS5oN/t3+3akrZMKqYAGUmuMicUeHb+8rlyeQyu2jP/D8T22w+F
	 VXZ5/JnHYY5MlJmkv0GQwQbWztYZcDdTH1MVfUjWOKpZtYzW4md5hwnFT5gY59EWdu
	 bZ58YGjf8Q2BaDSSw9CHqRsLPQW7JW7rGn2EVzIjDiBjQOr/czMc8ywDlFT61jmpPB
	 2sDSC1VTJhnJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2A7C30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171931580277.13252.13424731807994083353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58d013ae1f87a892591391717fca7f9641e684fd0dc00dc632b659dd30665c3
Date: Tue, 25 Jun 2024 11:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719315802
