Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FEF30BB94
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766651034; cv=none; b=sj5GW0NsGTEXvSHSURd4yBgrQIsgLeBsVwl60IDqDrrPEvHXXscfs3ql7Wn1b7lF0bGCL37+md3qrL1SaSehzQnMPiqoer4+E9ERM3jYVhdkzwO24gRuSl1myjQBeVgo4WXxzJ1JjMuW1extY14cmV1FQ/JK6YjRoAYSrQyB3Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766651034; c=relaxed/simple;
	bh=5RpLEJSSTC4kBYPFvkPTm+eNisjdszLGxUz2M405HoA=;
	h=To:Subject:From:Message-Id:Date; b=nRehPU+ThmgpLQrRy+mgdbuQUNx3OKlTVv2/epq000IrhaP457Be3eJWGOpuU1GJoDuvkJTEYCahhozEQnO8M86W7gvGx9+r69GRkXbviAdXg/22sZ/aLw2fnw++2JVUyBCaJHJakIdFf/lADDbAS5BRFFpsY376TqvCzw48NQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVajQXHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVajQXHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D39DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766651033;
	bh=5RpLEJSSTC4kBYPFvkPTm+eNisjdszLGxUz2M405HoA=;
	h=To:Subject:From:Date:From;
	b=RVajQXHSl1dh6UCZxkESoawYvWL+QhnxI8G7QWlxJHFFZ8FctYYxsZ/WfENBnIXOO
	 WTSHSxOz7FYemkJtPacVwuLnExppHrxlhZoY+36v+icqN1HyWblqhDs7uEOBCxHql0
	 zwG/fdoj0xA7sMv5+oCcK68e9PqwC+F8Q9QiB+ioBa2374XKydzwfPhfVM0/dVWBj+
	 /4gq8avbQSQr5Lm99eU7CP7TQoMJ0ZHjKC2VkNbpJqZ/gK8nnZTAGGPwgmdOQi7ybp
	 DoHy7nYZYJNTkXk3rRJcG4ylD/5IicLKQQLI0AiGU8AbzC6jvJEz4Oef5Mx8kq3N8U
	 knmj5l4IdG5Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004AE7AD41
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176665103358.19752.478998177839006745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf4af0170911c5b6f7b82dea4a2f387ac57b6b2d355f74433dfa9f78da18c30
Date: Thu, 25 Dec 2025 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766651033
