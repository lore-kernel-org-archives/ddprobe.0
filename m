Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165684A08
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760496594; cv=none; b=TQMKRGQ6KM8SrIHW0da7SYqa4gi9yr89KLNu3bECjyafdtWFqke9VwkoBmsjIcxGH21Abhtc3WKEmtvjCYNU3jc7BVofiLBwunxfHI+b/nFpFUeC8jYu+sPifs4KiNIKzqh7KvtnPzoJQpNuW2ExMUH0t2Mb5WmSCnjY7gOWx/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760496594; c=relaxed/simple;
	bh=KgXD/XDJjG5B8N9wSDfL4yP1CunHzwSWSsAnw15NaAY=;
	h=To:Subject:From:Message-Id:Date; b=CbsdfjyWlfUlkBca2NS9F6V2rAipO+/qy0W/b5rK/C1V6aksIJxor+qmxiBgtgz/WrZWTNy76X703TNpv1u2Y5O1lmdP5zQ/Ed4r2JjxXRz2vB2N4c09qJlIw45GdqKtMOWwOkLubQLIbcauReH2/3VXONUbU+VnRuPnld9WTa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qO32aWU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qO32aWU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C43C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760496593;
	bh=KgXD/XDJjG5B8N9wSDfL4yP1CunHzwSWSsAnw15NaAY=;
	h=To:Subject:From:Date:From;
	b=qO32aWU/CH2G5sbhwZR8pX3cEyco7/7jwGdVTPXAiwrWDvteBNWpq86gqaW3Jc8Lb
	 fHo8jusqaJ+SO0UgZaLZiOLTs6N1ksI3kdDjNYPmqPBVycljIopF1vWHgb+k6ehp2e
	 uSyA6flcjGW0Qgy3/52SRXWOrxw3QT65QcEEYsKJwv7ivQxtUy3fR05GrjzgZ/nO7F
	 6u3LCyhMEItEXxnvCVg8B43+O4ZDydhJ7UpN5Eq0RtKhK+ChySNOXVtjQo11ywgQlm
	 BukJuPtCFf+KixFDnRvxoeUDCCts1Bv2CjqS0e2gYhMQk34EqyT4V4pZ6xdr4mg8Oy
	 7pNsfHmlaTXaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F07BCCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176049659357.4198.6049627511442885987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0f9a4ede2289c85437859abb8b900bd746fc4d648a2670bfce9c5d37d0933f
Date: Wed, 15 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760496593
