Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A4846AA94
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789389634; cv=none; b=hilIGFNQ9sbOk1ZhZThN7u961UKB55b5qRlMQY3PGLyyCCmXxSvvWc12epRFwCkfFy8TnySPy3O0ppmhk0AwmnscIx5TgRy6oHQLx5UqpeGTWqRgSdS5iXqV3KAPYaoUj1oKlFEqsA926dqobQdOZfcY9T27GYni7KvCyC2L2lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789389634; c=relaxed/simple;
	bh=8IHOGo0zQaAtrTL/ekarHFXQlYqxPweTWKmDOfLWzUM=;
	h=To:Subject:From:Message-Id:Date; b=Nc500tzhx8iPAz3PluPyUtb97sDcmgQfHIwWAIjGpRJxQZoyvX4M153r1M/JflTCIUM9IHnAQYvDwQqAUKpRpUiNUGFgnQiZcF3DPmXHcQg0jeiXwbS62vpJAVWg5h0B0agEUTSLGCg7C8cGwYHQqcbXxr1jzJdWL73ujFu6ClQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWsIW2Tl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWsIW2Tl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE8CC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789389633;
	bh=8IHOGo0zQaAtrTL/ekarHFXQlYqxPweTWKmDOfLWzUM=;
	h=To:Subject:From:Date:From;
	b=kWsIW2Tl7tv0oUw5CY6+UbV643F7gzhGcczpapwCcvqdv3jTqTmWXWIl6C2CA+wS+
	 GGVPgGJLiZHzOJCAEugZPBeT2dnOcAjRJtx73W8bP4ITjOcKZ/37No6w4L/GYKxlce
	 lafdrncwkfd0cbeYYX7YYrf9GgJn8Yi+L9rZ7Ii+VHxrXHUh63tpECGnSbhKjFTLvM
	 IbLGF7o63r3TxS8o5eeYSppxNLV+Z4k6LEvsnaKHfWBpVSwOKQhFss663VmTyG+JFw
	 Q+HzZ148qR91BqqHpGxo9Btf5Hat3TS+JJV/1sLhP76ykuSHAuTlVXCmbISwra2CLy
	 0ecN/YS40bNZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFDEC88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178938963368.12204.7513474742571184297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499cc05a03732dd8efbb3d0dcafbe9e89526d96330e48c41dacf661aeb021348
Date: Mon, 14 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789389633
