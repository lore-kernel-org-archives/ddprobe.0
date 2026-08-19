Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEE7361DDA
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787142034; cv=none; b=ZginzAdoVu+Aldv/eqR0pPtv5bQNCY6P/U9MmWW9uan38FAY4FI0sQUv4GGEhFq8Dw4VmdlPpBG7v5LtS4r7zj9UGqDAuR+1hss8Wln0AltKixMzfjRpHsdY9YpIgnEpIyDbBRhtgdd+tIQuRDAoZnPXlci+13+jwM2aFZ9w9vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787142034; c=relaxed/simple;
	bh=31Kla55Qa0MH1uvspc1861927eWQpiwrdFK/UBNbT9s=;
	h=To:Subject:From:Message-Id:Date; b=p2hQlEvF9qX4bwGowij4nGBTJ+BlAyufZI4UJW8syDGT+DSpCBgu9cYeFa31lIsESA2kOuGNmTNEJ1R1xXgOdOTxM/BPx+GjRF5Am8iMghVPfrdfvgvQVpTECRqlu2OvtNS+uM+Tn73JtmpFN844yvbN0TxX17Wp0HPoxukSfBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHb8szhm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHb8szhm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A15C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787142033;
	bh=31Kla55Qa0MH1uvspc1861927eWQpiwrdFK/UBNbT9s=;
	h=To:Subject:From:Date:From;
	b=lHb8szhmoQeHQy3QdBhjA+ITNyyEffr1k/GUPD34uoC5iSTZsAIcPo026n1GZUEUb
	 yqZ0A6MW8G1vwRjCOd6xDWc1YbmjqVEr5Lry6bC3587GpFgWUKXwoioN15kHp2r+G7
	 40Q7knLA04JtHW0Q01c0yAyoH9DvxpQrIhTV6lIzgMWYZEMN7AZkQWWVa4pMNhcySb
	 52+xz/tl7qJI7uMZEFBBJEhHTHtaxVXzdRAIUSBrVmIxIj+sQnoha3Knpgtdu0XnmE
	 brupzi1dsLsc5ggAdzwq6zltCc7vYFO+Hd5vvCiHpoNsscFN7sGiDIwKPCaXe/I6CX
	 PrKlwurRm17QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0ABCC5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178714203368.24188.5994157469753722959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e246003b22e8c93bd887c8e255a3312170154f08fee05c59a2eaa34ed1461f5b
Date: Wed, 19 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787142033
