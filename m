Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EBF361947
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791331234; cv=none; b=u7/6gdItB6oag6429ORErP7xRp0CzlbZKFweH/adgcMCxynz7xswCvpuLmBYnMT88lzGQZq6Ya8L0LV2jYHw8gctomtaiULcKKtGf2i7iGKVjzgKIm0ltNXVmEBhEXqn9L3mYvzez2g2i50i5nrmyuP4uwG/5IV/5LCvWWFD4BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791331234; c=relaxed/simple;
	bh=BEMi1LD+UxrdhU3DPffnqkgccSkScxeIqeScRr55ILs=;
	h=To:Subject:From:Message-Id:Date; b=EdKtaY2mwpM9F69ueMt5CfyNMp344YrDc6GgGHvKYsUdxop3kQ7Vv/+RDu/zxSAk71EV2auVQqe99A9InbvjlgQXCNUzh94p/NR6aQ5FVmzkngTAY61azpm9NwEdW2V3yqb/lAaKKjFRIVRmDzkxv5cvbPS6YEk9iCOaZeOlGFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+Hirl5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+Hirl5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BEAC4AF0B
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791331233;
	bh=BEMi1LD+UxrdhU3DPffnqkgccSkScxeIqeScRr55ILs=;
	h=To:Subject:From:Date:From;
	b=Y+Hirl5/ZUjy32D2l6a81+WA7kYPMfIcf8rYo3MxL2s5YL50CFullUt+HOEh46SmQ
	 tqKbx55OkK1UrT1ByN0cMFJc5fc7tuF/zz1ktiJQ/HH6vtSHT71QfcOwwzSVsr8Lzd
	 I0J+7ToQKbWKp9cgU3MNLDvT1GLHv9oNi8rKjWtlb5rSwzwfYjshiql+fH8Si/IQPW
	 Wl7TFHMDZObqhgoesI63T+9Lrq91w2mgVXqzrdbHaXEPEGa6wQQuhwh+i8ldeTKGyx
	 AUAdx2n5e+WZGHMbWweAX0Nd8fnml58q/FG/ui/f+MXQj76C5jaoY3W1tzTyrtwQeo
	 1QN6i9hxUkQcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5335CA5FED
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179133123369.6921.2355675142323893759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9daf0243b0596d7d7dc2272397f3393718200af727a293027fe601da02a3104d
Date: Wed, 07 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791331233
