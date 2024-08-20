Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A09816BE33
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724139354; cv=none; b=ADk6/fhtLjt8e/n0N9v2d3ZoAnbwlWP0pytKOmDIztH2aNtpHw9qr6GAkq79UnDtNiqrHdc6QbVb+XBU5XnHrfd91szjvtMu1olAKnuJcbIimLXIDuPsy27eZPD2nQ6EPNb1WikhXlC0iCSfsLH7W3GFOH0nm8c5rwwLQ5tEQaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724139354; c=relaxed/simple;
	bh=eHO60NMrJFMVXgVOZK75x6AkkNpb4BxsFX7AoUKtpeo=;
	h=To:Subject:From:Message-Id:Date; b=j4FSbbL9FfcDWdpEwGQqotgDAygYQUatgyK2e0katG48J9PR5G6AwX5ZXeTEmudkbjrK5AoJlpwuHpiw3g/IKRlezYizn1RcA21+2QXFeAdiQodVClJWPjQA8yT/lbyQ8Qfvl0DYIehIu13+NuA1za0gMZi0GN0nr25mozaKGM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ro4pIqQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ro4pIqQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFE6C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724139353;
	bh=eHO60NMrJFMVXgVOZK75x6AkkNpb4BxsFX7AoUKtpeo=;
	h=To:Subject:From:Date:From;
	b=ro4pIqQ21vznFIfcgOIoQERJaLrEW4kI85D5kRswL6fJypj7bPTScExJkBwuqn37h
	 vKD9+KDBD/O09LceF/P/aVn7eqeh5I9cu99F1iY8PGgx7I+CtM9oE4y9qWfjhiFhyq
	 EqtPgObL4oEUTsqXePm2nVJmqNUVZL7JQgwm8VJ81G3ShM2ZY/fkKldCtIREjfoVBx
	 0v+9AHppmAJF46mVptqhBAoBDDH98sMVVWtJZOn3dZFtLGy4rU5XJI3cdjoAUgO4pV
	 59WnY5f8eddXtlWuW0JXjetB8CUW19gfme2uaLgtSY3skceYgFI/VaNZrffBYuuEbP
	 YHf6o3Aa/iVFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B311C5320E
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172413935362.7725.6906446153545359197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 904612791d86b99ea1357ee6c4f3fc4f1fd98c8dba958ba13ef3a3bdf417f166
Date: Tue, 20 Aug 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724139353
