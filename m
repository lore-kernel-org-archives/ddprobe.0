Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6D417B4E5
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730045154; cv=none; b=oyRWpEc+xgiKaKCgUg4+8Jwe1aHr+LTxHbQyhEsE9oVI8PULxRKVMze7QDnTZgu45tRXKkjV1szr0s3WZoChJ0LBr2UUTxTIFnSh0e+qtlSE3U4inuQmeRY1rcBYeITLbQSB4NzIEWOMTqx4s5wAzZ2jkRPXW/TbXOHFpTfA7Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730045154; c=relaxed/simple;
	bh=b9lcAIkyTcePf6W3zSpK/kwyNSLrtaaecSNg0LtK42Q=;
	h=To:Subject:From:Message-Id:Date; b=iWTceeIPdUKAOA8zt7PXaE57yMK6TkIhlI5wk9Xz0a3HWU+Q/z5ZNe9B9kY2QhwK/oAwgArG+aQvMLNoHR2Y16WebgWVgm1CXVxyZIsv4gU8L8vK6Bmi5SZR22QQVCRERdPDuVXW0jm/NdFP2scaPTYrxsLCKceO3jmoBbWba5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQejYbIs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQejYbIs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8F9C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730045153;
	bh=b9lcAIkyTcePf6W3zSpK/kwyNSLrtaaecSNg0LtK42Q=;
	h=To:Subject:From:Date:From;
	b=pQejYbIsYQFcGdszaTA40tfv7AzeC6oVcag2IVJjZJn4Bk+wmXV001TUfk23N8SN4
	 qpE1aR6C2EAZwgbMMRGVsB1+KmhYBBDbo2QysaJH6EnGPoQPx3cbbvAu/m7eb5WSo1
	 ouh2ufU0g9MrkcBZWWsSREl1/mUEUxdxXJbgSBpDld9j1jPE8E8LDnH5U/ACDvdEWa
	 M9C9ItvXdXmMvVEE+/tQbSZCXpUIVR2Farl8KjOrcxVaKRR5BMFFhs+7sGslyR9dt1
	 viTLqeRRqbLwPb/OJFTdKWJ2qLxDiRYavPbpCZX8SCBAawR+eeUFRVu5rBYj2BCU1i
	 8R0SqAKQa1OFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990CDD1356E
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173004515359.8009.6406071020990773221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a1128bc1637adaa761081a29abad98569ef3283dcd6bdd8a4e0bd43b292398
Date: Sun, 27 Oct 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730045153
