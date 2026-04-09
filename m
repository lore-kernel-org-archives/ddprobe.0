Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7561E22E9
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775714134; cv=none; b=TaIM512+TIjBWvuXgViTQiEw3GciItOP7wrQ8GOF6ZnvokXhOzK8BkBJy18zUt+YCYzlXdMjHi1k8mImcrrymgirnYFWak6uJGEHHNy+0RqvXjgotPxfiHtydVw8cnWD2U7hoFlPt98hULGBDBJeZyOkELIVhciH+pxQOj9AOW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775714134; c=relaxed/simple;
	bh=/+SMs0zp+lP8iqyQgdyh3SRarF12WJhZ4k9HCTPam1k=;
	h=To:Subject:From:Message-Id:Date; b=n8b1kZZRsK6lcEK7Oemg1ch3lSsoaxSO2IKywTw415An2XfAxfUwWxbjCIwkTDTA7CS0wg8pkoaabjAwGIu/LzlU/2Ecj3jgRbR6fRELWEkoG3ZvHStvQmkK7iFtsBqi5QwjUUEZot9pRAftLkseprnOeKIVzw/IbzV+eyHg5oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0GXJXa5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0GXJXa5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1018C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775714133;
	bh=/+SMs0zp+lP8iqyQgdyh3SRarF12WJhZ4k9HCTPam1k=;
	h=To:Subject:From:Date:From;
	b=s0GXJXa52tvJtpICiwiGrQsTt8CHYsXKw+Afp++c+Y3eHuJd3UV4iaNuNPB+Hkq7j
	 5i7HiM/9JNMjwTaoYi0f2m9fhZDcKeyXWH/5rTGZnPYA3h5yKD3KjWM58DRokWaESL
	 t69wHKsKkBphJfneJY8EbQxrw3JLx13GnK/CyhCrdpnH3Ofbd2mFIWS8VKIedIoOi4
	 Cg1cQfUTm+mUL9jFkaEdofqT4Ft3Whav6VcbH/VbLR0/g5/7zmam/bx8VM1HPgIBHF
	 EYHEvdqTuOjl/L4NqETjBJIs+OFxbCInlFM5B5chQK+himIxMvYK2SEOSTUcyZ8AX4
	 H0CdjmY5XlEFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AA1E98FB0
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177571413368.19960.14354419001040077706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21836208a5a1dd86514de127386b080b801347cdf3bd9cdfb4f069b4c0a2f96e
Date: Thu, 09 Apr 2026 05:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775714133
