Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC82C363086
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785146434; cv=none; b=VA0v/uV5yksXaBz5af2qYLBrRuYXA9IxbxDwEiTRrJmtQ+pOybKLBJwQfXaZEhbp0P3CP+1Cy5fsFpgf+yzfEedZFzcOy2zupnl3u2lxnL5HmIPzP0OMB4O4HMrhEN5GQ82O1GfoUwQAY9c2darbsCN40IvLje2wYDpDv2hedkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785146434; c=relaxed/simple;
	bh=FsZS/0ezR3+KnWcy+jOLhXnOvw5VzqPoh5u5FBm2AtM=;
	h=To:Subject:From:Message-Id:Date; b=IxGGHvkiMKNWhxl7IPFgOMXB9IKc5TRwIA7Tl6GIHhw15IHlH79hwq1wGy/jwqyU5yEk0sPEKJzNHARhNJRzUaqnPNUVNz5QSt/tcmrib9VTteWoDKGLBN9O4vLhW6ib2hh7n/YNVR2PpdSe7Q2VxHqNbM1eXt+8mA7YK8ScAPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIWF4gl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIWF4gl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3FDF4C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785146434;
	bh=FsZS/0ezR3+KnWcy+jOLhXnOvw5VzqPoh5u5FBm2AtM=;
	h=To:Subject:From:Date:From;
	b=tIWF4gl311A71KHQu7pO3iuOw/41fAydtpRQhsjuouhshxjfCt2YJjeQPDGoP9Ic5
	 Vp6RSv4qhBT6kew6QlJ61rJ3/kq/ExjjAYtqZvRj31ThPn5BgtlR24k8fTysD5CV94
	 YF76/5fL31b6T7Qsq2Tl+tJaGYHqgieb5HKU0F1dTwtYHZ8vG7iTdVCFqCDWR6qejU
	 fAML+I59jeYYmLIB1XazB7ea9Oi/4p7DJVamQj3X8zMbpWjRHyuNv+zVCVNqYVAXdF
	 E5myKPfbXUe1wQXGlIxRf8EEk9MQN+C/SvVy1/MMtYTCcIxengz/NoJ0nnFGZFnnJ4
	 qUxDI/CRmnpTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F239CC53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178514643391.3233.7115874427742027943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f632b1d027866f34ba54e8a7c7cccf4d9c5df7a45de8ba28022a319ace36a8
Date: Mon, 27 Jul 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785146433
