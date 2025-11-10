Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA0A22D780
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762782593; cv=none; b=SR/b6mwTX7kkNSJ0MB5xXn0inx1P0fFoeBaan/C6e0OC69e+173AYHSEe448mCcfmJbBSQCoOZ8K4xj9BJ7y4aG+pbe/Lve84RBjux77ihBdl7brc2+S9qqi/+UUYzn8TfhDlB92KWY51mxz8S4bvUF24nZn0PmkYl59wmJhf64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762782593; c=relaxed/simple;
	bh=JdAgjybcuZe1v3eKr9Vb4EwjVLogunDZ/4UMmvhGauA=;
	h=To:Subject:From:Message-Id:Date; b=By0W8DVMwwT8Q3bqVMuQEcWlv7NsFuTqXLbbZYfkHeiqx1I6BLCnRLGzf9Rp/nzc162HjzFS6CPcxCyRgVQfncBV5MHXT1FrwsP7dUJvcRamkZQgW+otdMiJK0wiBIABbis92QD50f5zJe3YCA2vzkMdDZJcrfUUxuXyd6XgmkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceFN+THf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceFN+THf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE43C19424
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762782593;
	bh=JdAgjybcuZe1v3eKr9Vb4EwjVLogunDZ/4UMmvhGauA=;
	h=To:Subject:From:Date:From;
	b=ceFN+THf4nW/eqRgA4oK5ieKvAOhh4JhnTKZPXHXXeU0L0SupQryZY2ZEd9ah8QhZ
	 IxwfyFTEQW2NqIWUUWnfq5EYLi/2iNpxSZ8MO1+xDJNzSJNxyUIL3kKcAHfWF6GC3h
	 F6NYqq3c33gZRycM9SNNXi0ZDt3RqiLmVljn3IkKBZzzM7WoMoliHTXysmRxOSxrBs
	 Ceq0p4JGOBhbLQG51qyxd1q9xAklUk6YnX+nbDTDcOG89xB3vztwwajrRBB7UBRAUk
	 hOgIj2vjEZHPnkCMY+ryqIl0itj5wjcBUkGQjl6hZNm2usX8GZUVVYenXvU49l/o5I
	 AbXhS2KNIacCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEBDCCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176278259358.13062.7925044712962933501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cefdeffb8a378f7f6345081ef14b6e6be5398cf240d310efe8ead2966c01a2b2
Date: Mon, 10 Nov 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762782593
