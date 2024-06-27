Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7945F1A0B14
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 22:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719527063; cv=none; b=KeqkZnB8Zk6+qhf6k2S9fi7HtzACZvFZkkHsE/AOzDpvHlss+rIsS8JpYTXHd8xdO7ggaKLmGECYoTTN1VWQSQulrwaI9O+4nal5h221KThC7yhw+9Nw8cP8vdLNWvru0nNKrEi4fG7wOYKxMyOTphdDI0j0kFjUPC4+Dz5Czy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719527063; c=relaxed/simple;
	bh=OkfRN9Qsz5ZRliEMMm9AAyx3Rgutg6UA1dTZY3+V/tM=;
	h=To:Subject:From:Message-Id:Date; b=ANhck9X1E0bAnBl78Tm1HzfpYdpCCcze4gAhadI41TBKT0Pqy3wdxCt1rq+QT8poPxkN1MyAqlg3I8By4/ssmhRR38wq0zXwcfOMTipx3Mm4RmPi5Z3pWxlFS+VI9Ix38AOHAD75dei6Z9MNJ4fUWC/cwTmhji5qrwMPhGBe2dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKRQX0dS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKRQX0dS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C0E0C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 22:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719527063;
	bh=OkfRN9Qsz5ZRliEMMm9AAyx3Rgutg6UA1dTZY3+V/tM=;
	h=To:Subject:From:Date:From;
	b=LKRQX0dSN3CFPZJiUCIQs0bu9yYGUSBe2hL0p63+enTa9FxSKYhNtI1bBc8vGKpNG
	 wggMZl2ZgP7TpquRl5wfQMYZ8ZDPhYlpKFwXEbr6VGIEzj3xRwhT+OmC0QH/qnj6hq
	 I7TmZSaGHNMcqGYyNw+ksakfvlTwhhnPjVgqXUbYnnZNM4thvJ11DAMKU5lNBMBNqF
	 R3ku0YkqZQOFeqVhNg7ESK8wBjygjQHSRvVgoJnP3LOlTI6jvTyi+cUOTnSdgUvAKd
	 Kh6SS9zwLaLyuUSrhGTt9AKNSlrdfFqrnx3rn2XTJOIbkMDkw/0YS9fVDHlp4jN5TY
	 jp9+VSe0BjwZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4E55C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 22:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171952706291.31836.15119340113725022498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9cc874532154ea6ad114df8b0cbecc1c68901314146ef08e5881d162151f44f
Date: Thu, 27 Jun 2024 22:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719527062
