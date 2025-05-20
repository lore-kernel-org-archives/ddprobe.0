Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D03176ADB
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747757993; cv=none; b=ZhkGia3R8W2TlHmF24lCnjyqcI/KnC++fi3p2932C7lu4K4yeUso93yPPvS7VfshXWMqh9zVEIeHBImwALM3/HH7Ny8mfq2ocZmX/KiWFqpIZs/NfuzSUxgzlWZ8sRHelgR4r8V8M7eM0saD5VuSWfQUfl4DX1em3Ny5yR+ix0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747757993; c=relaxed/simple;
	bh=pJjwRhH9R8wcT51j+Jumi2AZCRnUXqedcF400SHhg58=;
	h=To:Subject:From:Message-Id:Date; b=W5wcGbRRh1cUtYEIshXLxfJ1FRjmID5Uzr95wLHyuL+bSzqcAC164mfrINCsVX+MNGVYXDZtCWAPzjhKUrtpkmJLWMJ/Lup61fDA5DRZt3U5wV7zxsr9OsXLpl2swEVWasNdXlUFgcY0I0BeznwyuHC8y5A15hvCQ5vOo+CS37M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhnamFGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhnamFGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F028C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747757993;
	bh=pJjwRhH9R8wcT51j+Jumi2AZCRnUXqedcF400SHhg58=;
	h=To:Subject:From:Date:From;
	b=BhnamFGeLTFJz6FJuBrW756jP7k6BKZilbqB7CXRwocB2qsmwjRB9NtM48/rMGtdD
	 DhzHF6CBLdUtHgTNCnPDb1aIqzc2VRAW4r82sYiea6CBMPnKzfNkZo89VqtMg9jtW4
	 EaPc+oOEFuGsztJEEJPTVGufBB90DyVwNqKdVPPxeAGgHARig/KA/war2UTalR/Ffm
	 FslLHQGkjKIDaLqASxi1zc3vpjc33YphRDnp0HzecBdfS3uMY1gnDXGQS++lPHheqV
	 VaTNHY4yPjUu2p421se3tzd0gZfsTfTvP9ugjkFLYxnVSQ7bXvmdeUeYL9DJTUlXDR
	 gUkgrGjMrSqFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD2C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174775799357.6744.3974613407759676858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c5702db85acbad7760390fd92cb438b471d895db409296c502401baf8a7f06
Date: Tue, 20 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747757993
