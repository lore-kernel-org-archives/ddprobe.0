Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BE130E83E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750521594; cv=none; b=Ui50m5GIB//lYF2DEfpiPowwg++awgfFjlYSkx/iXm++b4u52UnlYU8XHRfMrBa7nnytW4zxgXJNWq0CJwvpagZlHyWrHDKpMJdbD6Wd/NgXpg3y8AAiCQQYxYSn9K4mNumpULfMFXRxI07SXrgQhlmbBHvg0O82HVXO9k1YKI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750521594; c=relaxed/simple;
	bh=SbolaPEYbbx9yCbsmzAKdWz2DSaCyohYF1GNoS0YUCA=;
	h=To:Subject:From:Message-Id:Date; b=XsRbOijwVFs5/9VzBz7hbBUt0xr7A/qauDKVIn9SMKvH4KQJhz4ARIpMj3fqKIaSXQKjpHoStR8UmjfhgmJDelcu34Ei2RYb4ZqcRJdgF3qkZoyRwO0A/PXa3oduE6+kQ84Hmg4IwyNaUu4S/D6pzHGJgiME26vCODFb6VWhV7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HaFDq1l6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HaFDq1l6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07E3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750521593;
	bh=SbolaPEYbbx9yCbsmzAKdWz2DSaCyohYF1GNoS0YUCA=;
	h=To:Subject:From:Date:From;
	b=HaFDq1l6H2GH0gmF7vp3O6R38L5w26Fv52Y9+0HlkKuDhdAJ1F47OzRiYpybMRdOy
	 /uhB53c50gQrXdG5XG3Iv98Z2Nw2GiWCgwdjTStDu+YXvip3wsdmZjDraTyI6w/SVY
	 Uo3SskMykWYDKGZUb4QZhbV8BhKRX0EIEn1qAPntwvDbTiiTyDvp60QLtHvGz3R2tD
	 QxwA5iufvM4096LVr9CXaYIqW44OyjAetRZ7jTJRIOlblgrvFs4cFexcXUKKjCqkaQ
	 VQo3TFVZeGz1PPgn1rhPkdF9f7sLlqB7uX+h44qOoavRN+s6ppPhSTkkdGQ2SIhrOm
	 SKkPRvs2UVSAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9425AC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175052159357.23790.1591980654318165260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04de3f597202c8fed5d4236cba3b1856777ef338ef2fb342844a2898f1beeee3
Date: Sat, 21 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750521593
