Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0AA2F7F1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785008434; cv=none; b=hagNLsFHpU1aLIiXHtS15kg6ORb5hJinhZTvt++BVCOxZ5wVU3wJ7L7rTsppcUNvvfgNnCR488xgO9LdKYs+mrBXu1p7EPybM6ue6cZmGils1bvkRq+YuPhrxXbfICAI8aIU3oxRkpoDnPdR+UPoe0XJzq7/ZQB357JorI6GKoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785008434; c=relaxed/simple;
	bh=FB/waziS+jsgnqKIEGgYjXIhFYwbmjxuU+FzBkPO9sE=;
	h=To:Subject:From:Message-Id:Date; b=GoqpgBd2F8PsOtAGhhzaMHYJf6FACJorp/nuU1xAt5CYbxGqEQjhuU2K4ngubomulJ4JnGrG3JfLv2Irna89yv4IeXPubV+kbOGmArbhRYmmBI0MgpvmOrQTiyMqUpwwdLv65KHOUEgpd2jNnYfrOtl28gwkim4KCzNo7Zudfe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2HqSNfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2HqSNfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4595C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785008433;
	bh=FB/waziS+jsgnqKIEGgYjXIhFYwbmjxuU+FzBkPO9sE=;
	h=To:Subject:From:Date:From;
	b=O2HqSNfSK5DKbDrCnga+S4C+53xOQGKauYEh6Lq9WcoWGo9R3wZuTRwt8c19fJgiA
	 ADyFiZBFE0m5lSZUX88Q59DGdbRzicLeo5F713MUzeXiCcc3V++zx7f1sXu8B9ZgkG
	 G+Bs/k18xFR100Xm6VTS7Gejuzd0XDOLnthch7DUbC7w0XQpr2cDiY0s8jRW4dxwt9
	 FnM1+vFGWjH+EDXO2T3evmCuwKPt2izyXjKOe3oPMNtYcZg0cwVgsjwFApqCX4/9E+
	 Kf9XjwKWuxb9MSJEehToRa4wSZUO1La5Q2w1uI/7hbmV8XW3cEghJc64FvcENorcDP
	 HVvSMQ7saZYlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4B4C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178500843368.22609.13033910475792430883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e39e5ef41f480cd8161651c61476bd4f8dbe745d7194f9be60132b2d634ec0
Date: Sat, 25 Jul 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785008433
