Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BF8385D99
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785618034; cv=none; b=lWaVwfV9GgF+HOUlKfq2C68I4dbUc1TZaOOD9w2UmrW0LMI7ipWd+KQyd72tn86UAkn7qIaGHZhIuEF4BpuoKSt0GFRMRph5yvc3z1rnV2iSQg0+atpNjlNR2hSwjs4NG2XoAl6IcxX5siMC1QDFxbLiiATD6/LBcRBQn4GYqXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785618034; c=relaxed/simple;
	bh=jT8Ff/LGPH9k+jZy+EJQZV+syLeaWF0BcmiTxVlKdro=;
	h=To:Subject:From:Message-Id:Date; b=nVerkAiyj80XjDj3hYFRx1VjkjJTZtf3mofaseUTCZWE1MaSpkOn1GDt15YSy6yKma9BPFDVQcnFsX2vjPzgvTfz861sZKnTHImWVXKzq7e7XkKS398PHhzlQhKrc+MRX4MqpcvHzwneWCXqj4BghxJ+dPZikPPNJluuKx+bSHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKjwRHqm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKjwRHqm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F45C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785618033;
	bh=jT8Ff/LGPH9k+jZy+EJQZV+syLeaWF0BcmiTxVlKdro=;
	h=To:Subject:From:Date:From;
	b=cKjwRHqmphKDRKhV+BdZ5iJrAYSWs9Ca6xoWCE0rqA/7/oxMTxeGzHKAHSi0mt8Qh
	 H9+Z2HNiZguXWTEgSjNY1zp/RwZcQDbnsN5m09WhiQtgsOOkqKTKsKBx+Rq25oAsAL
	 m+dZjiUnvAbuCJqZONHxhn5nU3J0RCW9e+ZEP2ornQBucH6QcAlKvWCyB39COmjF5u
	 AIByXJPSHbixjVoW9B+yWTZfpo/uanxd5G+pjuO3VI0xZzPXlTvtbg6atlJGvfql2M
	 BWYovWtmsBlagvKQQZllVEcdu1UNlDCbSrWzhjl5U+RzTqQ1H8A/Piq72UWTyGKil5
	 KRCXetsGo8xBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B567FC55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178561803373.18673.9534351791093286273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd7926f3f75e40b8944ca29af3df01188f51e8d737f116125e938724b5e141c3
Date: Sat, 01 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785618033
