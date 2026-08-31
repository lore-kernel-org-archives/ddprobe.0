Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4950F538D78
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788189634; cv=none; b=JTNB/sPiqB6W7w2TkHwROf6Z9FY53rQn6V+Z3rYGh03Tj91FcnS0e0UCBaQa2gp0YsL5r8yoLK2BdM07RtlwHnBJ3OYaD8SFOTLfG53+5xNjl/wlb3FUMbo5p6wEW/dpchdpEXyXbZFz78SUamT5r496/s2OYOHoAStw0LLbjWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788189634; c=relaxed/simple;
	bh=lTqPOkkrN1RaI8SMrTQQb6Qq7+PW9uvmkbOVvdb3cN4=;
	h=To:Subject:From:Message-Id:Date; b=aWsgJgD6dmQO9XQpm1FD590Y6EGVjvfbim9TeRKMQfJ0Fu93w+sDQwwktGNxvwhvgzYP/O7Rt5VAA+Rtxlc2hRVVH9M2Zgjeuc37wLaZ2VI4zSACqfo9OyorOtmVaSd9VaMAjvnfyFhsCF8X0AKmPzJxHHaGdRAb3TXiGcWGqjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HM00/OR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HM00/OR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC0CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788189633;
	bh=lTqPOkkrN1RaI8SMrTQQb6Qq7+PW9uvmkbOVvdb3cN4=;
	h=To:Subject:From:Date:From;
	b=HM00/OR1kCW+higgjm/9GKYlfKv+9vsUvAFlRlndEw2gu6w4RRb9QxvfJ+ZaEn0TW
	 emf/vFKyJhA7/N1zl76lO0z+FbaU4c03eAAkbcDG14352yM0mh+KQe3ldvO9cand9Q
	 kQm0FGrd33HmXThawEvUUNPyffX6utrkbmHkjPY9EfPO5Je5cezfwkYsOuVXmL3jZO
	 ajIGty2UQvG4MnhyeUDH6N3L7nnSyRLsw9y0UQm04lLoHxDGtkc+3K7tu2dRXoQSCt
	 8l7/ryjfWsbWhK2fcweBK4KpfE/eVm1eBGhab3M56fZ8Q5+Awv7cWR201kv2Hx7R1h
	 kk1I3ic90Mhjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB868C624A4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178818963369.23070.6168476432804495749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f357334387ddb8cb69adaf4bb7e610fc74d9b7e1472c7b2bc25a3494e2658c
Date: Mon, 31 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788189633
