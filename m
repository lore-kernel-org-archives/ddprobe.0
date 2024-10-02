Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D631D0DDA
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727883954; cv=none; b=kLXYf996PXgeVqj7s4i4TIuNGNq6d6ztHLAxzK3c2zoFyOfBvhaOykjI0HBtSiBkb3gWqzpoLtYtt0qRLrcOc4sUXy+oP2yieDo5I3ClAtFAkRGkJjR41bIhJeBoOSYMSja0faw9tsj35FMy1fal1f/xJImIYev1jz/W3fBttBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727883954; c=relaxed/simple;
	bh=R28Z+EN7GkHSb/0aBNy+np6vT68dN8A1sB4hv4OUCeE=;
	h=To:Subject:From:Message-Id:Date; b=oUb+OCLHuhhPKwHKxVjYgRVLg7C03O7QbZtWmS2RFT02DvnxjCusuha8KG2lBKqM9FwvvKIQiKE5Vu7jIYVIcj776SIdYtKPuWd56mT3pC2Y39qa+MQAGM+UgiVcpQ63atfHbl2ruHUlXugISSp5BXdwj+Pn7CpY7hLZuar5G+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIDLKuRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIDLKuRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4E2C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727883953;
	bh=R28Z+EN7GkHSb/0aBNy+np6vT68dN8A1sB4hv4OUCeE=;
	h=To:Subject:From:Date:From;
	b=bIDLKuRk7jlxfLWtWLqY+MJ3zRHV52DixF49ZZ56KeLq9smgg4inBKh/iZqqlZTk2
	 7tR6aQF0oJPJBhVcfAAX/ROkrZkCzgWANrMVECK48hkDlLC6+2E7iIy7DEmSvRGVuP
	 pcqQabg5vylTbqppZ2AYy7meff1qv4xGUwFPI1pOBnb/tkGXFycUxdUj4gyIo7dy7o
	 TD0cVa8ffZmv7oy76Do4ABCRWszs5Rj0ckD9eRZcMDc6+8YZi8DF+MkCrfzr0MTzdi
	 Kp/+YXdd76mklFp0Kpxq0eTdtTLdkAcyb4ftWXfK1p9iLfbvmjEkGGEfGiGnGlktYL
	 8ZY9U+J7kMmCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A582ECF6D38
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172788395366.31296.17603514629081741817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d028b4a2077b67bfb27aa4c1db16923bd949c8d590f4891aa45dbe76fda716b
Date: Wed, 02 Oct 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727883953
