Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489EC190698
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 20:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719435203; cv=none; b=Y9ZP8baSmwu/E5y8LvhyE2y1ILUZemKvP5p80ByLJv9T8MyYEjZVteInfoPRmB8XvYRizRt6smUt88SX7aKti4UFbXtjQlv170DtzAr0Ep5qgZmlimmxsBM5tjTMONBK/deS1HJOIsv3Q9WgfJmR9qZN1+KUkKfpBvnRlMDv3/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719435203; c=relaxed/simple;
	bh=QkPuyW2JWx48kudyqr1NmX0b4txOv72z4v7Vqs5SS24=;
	h=To:Subject:From:Message-Id:Date; b=REfJdjbbiAPmc4q/xEMmdszEjkQ0B1XkOHFMsMdiGMbspVT4lI22hRvVn3zfowT6zy0UTIMJWpK5bVdjOIvRUyx7/prLKDNZWVliuPK40shHcU74Whii3NWVg1Q4PtVkzYjqkqJcb51vdiOfhaqKdIbsXiujpLWRGDzYtZtwau8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3dGdZYv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3dGdZYv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B0DC116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 20:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719435202;
	bh=QkPuyW2JWx48kudyqr1NmX0b4txOv72z4v7Vqs5SS24=;
	h=To:Subject:From:Date:From;
	b=p3dGdZYv+r16cHu5OaMavxIyPnPh6O3LI7I/QP5IhxzGMVA8Ve038kdY7DUWK4hGr
	 yxP1i9WMm0umSXFN4Htgm+5yG5NVJTHGxX2jai35ZkPHs4D6ij40RfVnuBEpHxeimu
	 QZfzRvkNfeAiF348t8Ao8p+YXrT7Bi4+FRXf7R1Wx+x+YesvVFzWxBqc1sW5GRZSFD
	 LVZXMo6wMP6ZehJKSGMZq/M5M41Y5KRogjEN5n/fXPfSuNtGjOod9luSqFfMiMy5S5
	 R0E/OLQr3LkPjAEgHanWijPZAficzzmOvMFEW/W9JOkbLs8Pv9N5D1xuYBq/gpI6AP
	 1LmcaeKdhWLpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BEFC30653
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 20:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171943520280.5198.13685613309561950566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2352032846a3ff966403fa7b7da408e2380e56aabb57c9ca7e81341e943ca4b5
Date: Wed, 26 Jun 2024 20:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719435202
