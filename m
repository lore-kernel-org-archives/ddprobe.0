Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098A81DE2B5
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755010794; cv=none; b=DEF1WjM66RaIO6cqBGSWG/uOWsTalXqlgIAw/snI58JtjvJufqOWzf1InrRfEDo7Sn2riIXEiXqNXt58sM7WMJ+UfQud7ApZlMJI45brz+S5c9iPT9rro7coTKAHmbJBYAlbdyVlK4Aa07c9j6j7yUBqfkWsPSLKs64I/nq8M0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755010794; c=relaxed/simple;
	bh=qOP1qARpNVB1A2QuwxXwfDu0ey+2lf5ma9G/VJqn8to=;
	h=To:Subject:From:Message-Id:Date; b=Vqs3yt31l3kPaycPgKCpTSd4o+71TYV7MqBuSwvLLYmYIQPyL6q9zo5bjyO0o/HE4Za8TO0B7uGzc/8U0YoJxbqKME4BAFcDwo8uAZlpnM7uBlqnXigoHGYGpf7bKEhK+g8/wXS2qtYVCzhg7DDpE1QZRBgMoIWNX0p7+ogKHgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRZlxdN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRZlxdN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F704C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755010793;
	bh=qOP1qARpNVB1A2QuwxXwfDu0ey+2lf5ma9G/VJqn8to=;
	h=To:Subject:From:Date:From;
	b=gRZlxdN/kNWEv3guHQkZS43Gc2bIRK5LM20qRnCB2UPb1KRfoa5Hgv3QgN9HLYJfg
	 fQjod/g1VvhpFnWyaQ5Cw4f4acU4kyOUs+3SoLTWddJsEwnMeVIaYQUXm8hAbZ6fw2
	 F24L7w0vbKzCKO8+XQXLvEccIWH3Vev1jYP7S3IJD6rh0KxbhjG/1DTVA8X3K3jN5n
	 lQCHpUYwHJiCvUIYlcj/59smzjn77l58x6sr7u9HXoPi9krB+WAy22e7+KLP8LlEL/
	 w16S6CDHxs/nEXqoBJvhEt5J+ygc6sSBjYayXKUBK9V6FQGE+5hzcW/hnieTog3yck
	 +2EpG6/T+BQSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91237C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175501079358.10648.11398074461927354604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b7eae2d7b0faa7379bd7acc95f66229b7cb9cd360f74817095c59f638b0225
Date: Tue, 12 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755010793
