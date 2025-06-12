Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074602BE7C6
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749755394; cv=none; b=l1P+rHzg1wog8gxTsROktI3G5awByw7Zgx1X7w/Ek/0vKe4mYUsVkZSTxoVb0RsdCxHn4Gnc4SCxi7uaLSgmmObz4gVYrCFSHyqw8d0v9Rcu2MER0driSGtBqEK1WKT+nniS4lcBO/G8LWSWRzTkNtLOETVy6I3qyB35keAK47M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749755394; c=relaxed/simple;
	bh=YhAbQRFbFW3STQhs/RUPF+wwrzixOuWLOj76s4b7ph8=;
	h=To:Subject:From:Message-Id:Date; b=ELPD/y1hasjHriiLLFm/zEJ3PehHo5CTuUiEv99ikgnGBfen7iafP63xRh2RNQkAcUFO6Nf4t6JwF22hshIFZqo6VOQ2V1Lr76SzeLcT27h8Ve4TXqEyKbiMDLJKKcmczjTp0OG4Zrhun6SI5YwEVSi5YwFhez8IJ9sxZBfpOwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwJiJZR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwJiJZR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81FFC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749755393;
	bh=YhAbQRFbFW3STQhs/RUPF+wwrzixOuWLOj76s4b7ph8=;
	h=To:Subject:From:Date:From;
	b=lwJiJZR7iabbYhA9bf+DJlJxSsd5+rM6wE1ocV62M/g/wz4lYM/Jo/8FGt6XH7rYi
	 WJdev2MQUdOWEGw3yps3bUdJrANsM0v4negS27zqUdTGjGCaVDu8z93057Z5dTSxH0
	 3BQOpAQUoM2zI8JJGBNMWEotMhDEBbkjxxSaPDprhPlT/qQB7UlSFrG4MZKwcl04SR
	 kKbN92UjEDizcoDC+71krK7fzpCoUdYjxoJXFm6fznhDPSLOe9OzazIT0IM3TOzErZ
	 hX1vE3a2vj41kz9JpTKN5rKWQDQ41WPwleK3kPEvjeJl2CtgAvzZPQK/2OBMZyu2so
	 mx2N6aMp1/y2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9718CC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174975539358.16374.13713181858407989729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8cd92ae0c0c4e4c5bbc96c6902030b13a804ca2dc3bcf8162e7f5240852069e
Date: Thu, 12 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749755393
