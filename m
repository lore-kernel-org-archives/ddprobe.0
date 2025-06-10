Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE5227FD49
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749542394; cv=none; b=b3ZoqC5FExdBO8oTKVTDU+4/YSQ1eSEC5Uj5bLSwctGVlZhc3AUvWQ7qIoTrTozUFtvXkreOtVWVLyBKnBV8OSWhI/cCVX8kjfmsbxAoNsXfb885eZNqO58+z+jrtR7EF/KPM1LSbnlB1d5HcQm0Ah0CMBBLF1c9oA0SAuxF/Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749542394; c=relaxed/simple;
	bh=zAvqCic5usFg0lNJSqT4Ce/lRdM5SeyJAxffzfXLOGs=;
	h=To:Subject:From:Message-Id:Date; b=dXiLzqrHkvtwpgn7b7NixEB3EIplldqQGObNjfmeIdx4JGeIY0W7JmyOJ/trJjpsj5t4aCVAXorRUhLmcOhBisZpFhn9KIbneZX+6q2oaBXQgJmCpJBh2h004GGvoQF78L4FboayYZu5Bl1X3t+zU/+Di3TavaTyL8COnfFAExg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJiPCswu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJiPCswu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B9EC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749542393;
	bh=zAvqCic5usFg0lNJSqT4Ce/lRdM5SeyJAxffzfXLOGs=;
	h=To:Subject:From:Date:From;
	b=bJiPCswujFW3EfnxqYbDP7hL9/gA19yb4QRzZQ34qSQspbqdO6H/erU94/rSsotYT
	 bsRBoIRfZ7so0UPA1I4Y5U6DsvBe6dCzgYzxwrHXjEKiBzfYj0FpHMnXGc2906ZHP4
	 k4Mx7/AOM9wbcL9Yy7QsZpdk/iLGd2mzfS92wvMJwLTsP0kZH2ORulygG37xbF9r5z
	 y544s4UX/XcDinm7tAOUhS72loQ7EUHyLrAHmd/o6/jj/z7bEu3wVhilinNtt1RFow
	 bdEPqHnBVd/Kv9BwlKogKfSncv/xAp6Nk/kmykSNXWVB9mpC9PbQNHKA66bBtM/jHa
	 MQWUj/ETbWjtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93338C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174954239359.2711.854416055871358153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a11f6d60f5ca90612857e8a264082674ba870c7754af4f117fb44732a4c6f60
Date: Tue, 10 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749542393
