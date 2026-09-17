Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC4A388E40
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789610434; cv=none; b=CkJcdZer+dzw5z6UqP4W/0J5HYklf/rDmrReiZMSF4ic0AnI7qlLrTeqyumza8gjHFgR+KtJKOo9iGxU1Eh8kzxqN7obVZqjDkDmsyvV0MagCtc7sUkLs15JQy7JEpFgSZvuEkpJE123nuP5bETQE7cnwTHTftz2Nu7fu98yK/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789610434; c=relaxed/simple;
	bh=u6p2LIn96r+UF65BNw50nfRWhjcSOUwG70wQ0PiciBk=;
	h=To:Subject:From:Message-Id:Date; b=BBlH98J48cy1DaJmfLTwB55toYxlWOTeZFoQIDQsTOUMwA/6sAuKW5UVu91nMNS0pKbuQnmDzW9wXksKK/HtWRJ0cZppneuv2nzj1H1nrGWZQMmmGyuWoWiRj7eYsxQndRRqKw3Tez4PtpBJtpINpzMMOHEoZ8nFJid6ZA9a/Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvBTkMnS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvBTkMnS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D968DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789610433;
	bh=u6p2LIn96r+UF65BNw50nfRWhjcSOUwG70wQ0PiciBk=;
	h=To:Subject:From:Date:From;
	b=qvBTkMnSLt32Lo2hh0xZ0qB6QRW4j3rO1RfNXX3X8UxM0d7x8p7OZsGjSybZJ3bcS
	 zEnpjXrAbYEKjoBqxAwKilsbqa4d6aCUW72q3a1CQQvLQiSpyxMV/sUFSuwKzM9bZ6
	 L6ytQfCQDcM73m5fomiTCoBCIIZcY8N2Lj4aH/rUCGrCWoIAxmC+CdGEdZRIriAI83
	 SlC2Tm7bBoO71iLtpuVbWN6zuI2H8ibLI4J+rFepLgoRkOS89C4YFXOmZo8afhsdkk
	 LERiSCvkS1qgBChQSJBzyQ9c6ujoXA/q+267kuaOqxGoejgSVCUquHh3eWKOFUvWAg
	 WVxusdwetnAAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48ABC982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178961043370.3138.16925464764370146386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd5fe5c1f337d45a79fa1ff2ffac31bc1a229036c365362eeeb3840df4c45b8
Date: Thu, 17 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789610433
