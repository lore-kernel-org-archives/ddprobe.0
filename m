Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394C920468C
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753682394; cv=none; b=Um0m2pDaTURvYpSYkAh8kjPnSz3oKhnh0WN+bJYplqfbNNRjP5X+PsMYGC8TdkRCaVeQ3yVyhvVVKRKjRHseCw59E76HHcE5or6HT9tHTHN/Wu5beZQBxHqdmI+AkoSi5glh2NOCzKf16HB4WQsoGU01ZVsrFU9FueqDNABzgGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753682394; c=relaxed/simple;
	bh=pyFx3Ono5vuAYOQGhBqa4QJo7w0miObVQwekdWS8YUA=;
	h=To:Subject:From:Message-Id:Date; b=Hj4GEKw6+3i5FZvHKR81i0G/99hoA19t4kK8aQKfc70qxySc3VEKmatqVuvisk1EDcvv2Y6lSijDrqwfAlyoNyKGT9kw1XREWenYKFbZ3h6Sj3aO2VuhXxmqwXfHh7OkDYdtc9WI5ge+2Kn9KbBKlOI2UgVK2aNDWvLhxSSilzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJSFaheL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJSFaheL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4037C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753682393;
	bh=pyFx3Ono5vuAYOQGhBqa4QJo7w0miObVQwekdWS8YUA=;
	h=To:Subject:From:Date:From;
	b=hJSFaheLmg0kVxnQaTzO0dT7KekgwFo5XprxScxaI5dgzJ+d0aOIQ1sd7qQlNaTXo
	 CaMZatkIFcWsb8cXt35pX/eV7XWq5YgBlCpSCE29rfnxO/+ZT9sD4vxOxPUbIr8Fpt
	 3CoJ20TQrFxzjjtmYGqXqvDrgfsdFQBs0/bOdM0WjenvUdCAGKX5ZCdsAO90qSlrN7
	 tkq3kvWtHNjGxbJsoL/hgQ5X4uTIQaNEfyrhhzl5yE3LVNaspTxq0j6Zd/+s9uWhBZ
	 RX+fjGIklwQ5DraeBsO33oiyWdTnfiQbYoM3YdL0hfOg0VUR+DfjxJFCBqFSqjl+9E
	 pl2suTZQVjBoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930A1C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175368239359.13205.7080753017722628435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2078a04e9eade475d022b24771ea89b8104f8890c4774eadea7d8e40bef3eefd
Date: Mon, 28 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753682393
