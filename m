Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B3E1F418F
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761483594; cv=none; b=p/y2R2YQmRu39bplvB4+DuQwdQgAh1qh/ExcOuXJZ4bLJ5k8zxv/8KMA/cWEE9+Pym1NeRmOdKFXa53Hm/CALq9kmcgtysmSX4guFFstj6YiROVWq5M3DxEpXhtvuy7LYkbV/M2Nu4n6eyz/58afV9auurx/TVJRanXyXxP2wMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761483594; c=relaxed/simple;
	bh=3UbT72cClEvomJZMEOUuNHT4atg3W1Whlefcck7987c=;
	h=To:Subject:From:Message-Id:Date; b=prJZMjT0oI1TKPIL5LZ9+y1zf+9qnB7iGIp3RseoBE7Lr0kOfFvGHZXN0b1bGKOJzywmgsQ2Zg2Q4DDFA7PIXs4i6n3lGSntXJeNBpQmih0NTyIhM17/vhNlSmUBmu0M8F+8Y1nonX1t262WaUoYRrMoRit11x5Oub6pD9d0ALI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2BXQSYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2BXQSYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6298C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761483593;
	bh=3UbT72cClEvomJZMEOUuNHT4atg3W1Whlefcck7987c=;
	h=To:Subject:From:Date:From;
	b=Y2BXQSYEt5YSUOjYk/RJCxavZv3KSrhxFqwvK4aRKAr5Nhk+rZ7hy4BIPSua04358
	 nChh/ucpvOMhyILDS40dJW+m8jHliooK6++VNgH+zpqVtZYmMqyMc8RDt4htRvbN4o
	 XWuSGMX0bjD18srUP3d5SUcsFupuznHHQKnvhXdX7FHWwKDE19aVNVt1kBZXMDsSvP
	 TMPYx2NM7eI4gMv5W1wbqVj0b6dcbHsqmHo1xUcyvXkDFp7J/tRXtFnoJPMJYoyqti
	 /O++LK06joPykUXMgzFnXjQBTZCS4uRVfkgTZXtq+9pYuQPbgrv6+vR1VNJ2hmvjMK
	 yiI8hIKraEimg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94942CCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176148359357.14649.12097595644666834540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8654038c9af51c17298b648d9747d0799d36326525b7fc5943aa4c596205f3
Date: Sun, 26 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761483593
