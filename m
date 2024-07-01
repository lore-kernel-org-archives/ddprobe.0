Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A64A847C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719831263; cv=none; b=CvWXaikFr1wNtXQD27ihnn5fh8IBSW/5tjahUruicFgfeL29R/7JWhEZnQIwbErPVJq7GxSe9qiFigZt+he4Pf0fiujL9Nm2fb91ZhP9TVZJDBPXAL7n0aklFW19KkUq7DrtK+/sojOC1ZXh4dpIAxWQuwdzJy4w9ZR8/ttaUzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719831263; c=relaxed/simple;
	bh=OU/n/XOpDnBiVq71wvwglKUcIWWIBkozrYNt7m6/9U4=;
	h=To:Subject:From:Message-Id:Date; b=eaNNKymjPrEcfSwB3xHCi6b1wHJ9RnvyWSGZT6yaVVX0jw4SlMsa5F0bxyUEUBrvXa7PHtcvY6CfkUUgyXB6D9bpUBIeoyWVYjAoaTh++itOaW4NBUf2rL1wLPt+FWtNBeVy8G0PbJP7zlKidvdfLKT8nRF1byxJAF+tYKXW7AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUCB0/+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUCB0/+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D779FC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719831262;
	bh=OU/n/XOpDnBiVq71wvwglKUcIWWIBkozrYNt7m6/9U4=;
	h=To:Subject:From:Date:From;
	b=qUCB0/+G7jTjJ21jySTFx5YZF8osXjAPHCPsippoDuHMYC1JZu8itov3pBv2mHh4C
	 qKaLTMQ8m/Mw8Id6bgmHzaY2UG/cO/5o+PUreEVZFwilHM5mcObqvSP3VLUqIyrkva
	 aO0oNfnSTlf1O0SHRG+XDJuw3rvSVKcdF3DJB5brM3N7Exv/40C1fXqwXukFhmgMJv
	 EvGOU6bo8l2gR3I11b1IuXM2ckv3RxhpldXhBMYNZFB/dmUE2UTPrcYlo/eZPR4Xv4
	 P1UABHE4V1Sqehozlf6jjqqa7WqyYajTEVdy9lXoF/ScckQJg8KZn8bdL7eu2kirYW
	 ROFV0sR7O2yqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1636C30653
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171983126278.9753.11848752669625706846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1729c356d0134d2ccde37f60ddd61f9840b41b6a189f19626815678b85b47ab2
Date: Mon, 01 Jul 2024 10:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719831262
