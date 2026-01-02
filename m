Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5E52D543D
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767362634; cv=none; b=EJ93tVkzTkEu3AtHgfN/A4yQiT7W9010pilxtyKTQyeHKafN0fe1bINcTvTEIzF5W7max33kw4LynRP3oiodHDSf0PzF6knfFAd+GScxbC+MM3nERspYXGW/m2go+gJQPUSvFzPv8BuxyxEmCd2c5wDeaLs3c5OiBDv1h//dVdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767362634; c=relaxed/simple;
	bh=7O8SKRoNm5N9rctSHdYeb8pL4Iakbl6OlHDU2zSwuuE=;
	h=To:Subject:From:Message-Id:Date; b=sttxgsXsY1J9k6rQOr5fUR2hqRgCtUTAu6gb+GyA1QsP+pG8Vw59YvW6Gn8QDcOoH8znUhZ1Ts19/Y5l+3r6WDksCn3M5XGjarzie13yAx4GgBX+MNWJiQOi4RRGQZ2wW6mdof+ZVhejR8xX3/EUt6HGCWq5vdP2qNHG+zpwpAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImWgVV9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImWgVV9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A837AC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767362633;
	bh=7O8SKRoNm5N9rctSHdYeb8pL4Iakbl6OlHDU2zSwuuE=;
	h=To:Subject:From:Date:From;
	b=ImWgVV9B17LLyUO/eFSc2SkLFwVi/HNplJOZimZ1MKbUwRsQ4s8+5ayvjuMsmjqDy
	 51kbcf+CBr61Jvpeq3rrAqhL5vy1PeH0yJSvQWf/7sha0sCg9tTFrTCAFxkR52ZRLW
	 u3JkUp1WQ6yjqkBOBbR3GIKASarwcpqqh5PyAWDkjW3/sbaZuwBj7N8sMU8qJrHKi+
	 wmcwTXKloDw/1Xh8+qZgU14sXCxjpQD4oUFUpYWtIjq1pwTpx9UbCZzi88FUKGBJ1a
	 niuX79hugL1EzZcBPzzs/he1seGBjvB88gcHiEpmlEcnMiHwwQ7zMwuC9D9o78hOl0
	 iAXPTeAGkA86Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966DBFA3741
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176736263358.22952.15226025931111842936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed09361243a960bd8dfb42c8949d95242b6fa40b31d49949608a7a22a28ee32b
Date: Fri, 02 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767362633
