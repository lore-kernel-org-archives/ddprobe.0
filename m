Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375F92DECC2
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769130834; cv=none; b=MLaPFlwDmjhefAnNaOx73jdkjFK1EY/4ul/c0yi3G0M7X36iO+tSbUyRUEbRSw7xp6JZN/dGt3Orr/bac272+co2SFFmwAyuP9rn7WESPBj28lQSneZcgqz8TIYm5qqixqt7qh5RaEvACBlsZszIE6x2xKGdf0l/3YXuASIqo4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769130834; c=relaxed/simple;
	bh=c32RK1kRD85U9DwTic8PLzDueE24ziQGRMV5RiXSp1k=;
	h=To:Subject:From:Message-Id:Date; b=h0cd1RXuw5od52CV5Yta+QUAawZcZ6fBCJSMhPnqB1VNgDYaniCo0lU+nbCSyG128kgdZP7UmV2rHLaSyZXvttaSim994AAOOphBL6l0QWfObCvARFzRbDO2RAbT8xjTj0H/2kzpZwg8OEIPFz/1UXeBn3M+D5CjNDKSHL+jaok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8fr28pO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8fr28pO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AECC116C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769130833;
	bh=c32RK1kRD85U9DwTic8PLzDueE24ziQGRMV5RiXSp1k=;
	h=To:Subject:From:Date:From;
	b=U8fr28pOJQ9sCLgWdpq9nzVgwNlt0fEtKtcyQWKro2N6daFPA5bYAnexM+rbDkj9u
	 OIdKVjAx2Y1wCQIL/gx5K+zie5A6oeekcSAZzONhYAZLp3UVDWm1ahE68H0FQCcQj7
	 ZvRYFYRyq71dKn6XlPDBdwxUyqcphVLJorV4+U24jX2k3IuR8Y6WnVlXCjEWkRaC8t
	 /TeyEMD1o1SCQips38IS0KwlN0yhsJA+TwgBw6kSvkGblAvXGoLickP82i/xjkqscY
	 WNn8VzSGmLTFgs8Kk1YxQSo8fk5oKDrHWgPpYIJr2MKMaWl26xg9gG7MMNWzDBpqJ2
	 Z5oYdn8rE+oDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A86D6CFAA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176913083358.1182.8105548289117239215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c877a8adebd75e4dd8fa08ead48de782bd0f081c88584742cad8a7e85b9526c
Date: Fri, 23 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769130833
