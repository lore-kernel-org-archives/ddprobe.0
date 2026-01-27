Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E050145348
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769506434; cv=none; b=JAyFUMWzLko6GifhwQAcBqZ/Gh8nNPxaG0EZBxojCVSnTIfkhGOde8q6W80T/7DpBNZoLZohYxW09ADBFqJXwr45Tjl8JVYHbtW4TFrCdWqUu6wcHvJaPLslz5lhHgqwZ1xDH1nhh7QCt5Si04y822PySuMLESo6nnZd1rkZhLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769506434; c=relaxed/simple;
	bh=/TH0iOFsQsoeLBPx8EG/f+6RfpJJFfh4b51SUqSL5Gs=;
	h=To:Subject:From:Message-Id:Date; b=lpUq1Vx9+I/ZX+BvaS2jbl6367EKg6epyl89jFX+HdQumxI/u1HmP/lzNjJmKy6pp3VyE9rOjaa+KCrjSRt3kGdIDUdVfZwcYzFTze6+rnKTNIXSXH2CreOouo/0pUVXVoemF79tSQ79JB5Fd3x5GGN1tUpM01sbuevbXHh1t00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhNRdCnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhNRdCnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F204C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769506433;
	bh=/TH0iOFsQsoeLBPx8EG/f+6RfpJJFfh4b51SUqSL5Gs=;
	h=To:Subject:From:Date:From;
	b=BhNRdCnZb+MbooBzx4tCW5ADyNqMHiKEJuVLuNxJ6Tl+JJYHh6j5jt63YUyHpOjDj
	 78nfKn/MZyYxVVql6ZwQHRIUKws4XvoLy59A28sZ9VM6AaBkqxS0qesinXhAjQLt/F
	 4DJiBlXEewmjg2t2+JsY/kQwPEBiprU7s/yyWtdetPzweFxdHujjiPDAZcjiDSM+A+
	 1Uj1OC3AxfHrbh6dDlqLaopiH8jlLmxqcYVDcBzpXrsB9RAF/PMyNaEs2ZXGNj08bO
	 SyjxdAuP6JXYWa9K8I3pBKtbTlAyzMC0RnXBh+jZeyPpV6F9X1FIw15UOa8lNSFWx1
	 ee/8pJPKfao+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F943C88E41
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176950643357.17023.18250114057910991018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9afed7c4c97fdd1dcaf7499cc8b25bb51773be204afa98c30097e7644c106812
Date: Tue, 27 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769506433
