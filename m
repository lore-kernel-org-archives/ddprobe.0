Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2022EF652
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777324654; cv=none; b=Li5W8s4TMuaVN23bnhnaX+bzBUlai9TO0Sd0XaOKvv6TMRUQajMy4Hg+VKtVB+uk8/cle0y+UASA144UJnDpoeR8lf/k3HU8MCWomGPMwBuR5lntsv5xYbELYT3lvLUtnlcAdes3YP1AvAsuF8a3tbcvPQr4UEojAcnFJqy1wF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777324654; c=relaxed/simple;
	bh=LTZfyXEYHCxuCZp6xN88qivErdio69PYkiKCTjUMDqg=;
	h=To:Subject:From:Message-Id:Date; b=fyXbRFoyx2HVaEs1GXVwuo2ag97sH2jEMDz8WICpHpMfWo5Z0/8o9DNDhT8+zli0TJTmqv9HAKYxvF/ebedj6xvASzcxzfJePYBS3jTbhI2HhybbW1FeGgBIhD+AQF6PkGUtxxbDjtc/UHOUZJeT66FG4MDQSqEwGUZJDhExjtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0Ll6gHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0Ll6gHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA127C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777324653;
	bh=LTZfyXEYHCxuCZp6xN88qivErdio69PYkiKCTjUMDqg=;
	h=To:Subject:From:Date:From;
	b=K0Ll6gHlQowRVTLiWI46phHd4Ocf1K6G6xrwcFYQu5rK17CGAblTywBA7Bp/HZUCf
	 J6FGYdK7JsyesBU+DlbDi0PLbertdUFXUng+WZAhUyuWq+AlvlxB1YVUdLYiS4G/Mt
	 86m1OmvA9+e3EeJLbbX0RPWX6RhpYCg+GLgKzkxvMbgM/2P6aoGKSCqHo3O4E3y35M
	 zZEgW3X1Fj7e3YN6gl9RTVmMo2MKa1LXckpzhVJ/0a7pyG9fovkycxMU5COPhFp3mS
	 mAqj/Q3FhEexcvH5KhAV0Pk9dtUPmXMS4H99JG0vjS3Yfyejt9mdoyarU0+1OrqhYx
	 u+ruzViqVT03g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE97FF8867
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177732465368.31433.6686001833881083040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e885617723c3151dcfb4644a4ab2bf47aac3f751589dd14800c5a04c29a51ead
Date: Mon, 27 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777324653
