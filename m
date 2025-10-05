Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F13B4A00
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759702794; cv=none; b=WSo3zx/Aj4EthXrZ6+e/p+WPghI529PyiTgH1ZTI36xSGOCPXoNS17JMEt8cFX7AnSc61mkVoUu6MV5y76AXvGAelOu7d/NJtEdmLd1Vautn8EDQlH6HkyDu0qzBbfzax/TrWBwt7v7XkppQ6LnvaEf1fIqjyVVNQI2anBgcOJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759702794; c=relaxed/simple;
	bh=ill6pJ27rNpkyjQejcz+rer85MoN4Rlzz7YoBypRZfw=;
	h=To:Subject:From:Message-Id:Date; b=DQ1AI9Buq8AUgCgpURPFMJ/HxQWdcLK2b9C889VuaZPpYavSb+wpISZx00qcB4qNG965jG75nxvu+32jNosVbnbvW3NW4/yAwH9juc10uu/IUP9NfB0lOBJKQ7+jJNIFF50pZsMDQVmI2j5Rgl0bDgvrW4NLOrkP8Peo/4FJR+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnEHQMPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnEHQMPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA31C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759702793;
	bh=ill6pJ27rNpkyjQejcz+rer85MoN4Rlzz7YoBypRZfw=;
	h=To:Subject:From:Date:From;
	b=OnEHQMPD9RLLwBbeb+BAF5bVjYURUIipfFrypY60UNCew7DHDcJAy0VxYB66H/o+q
	 VLft+4QJwAZ9saNPt5jAigSSHP8QiQHc2i3u4kC0UU2pmH89eOw6MsVlp8yr7a9V/m
	 M2XVL3SWlrdfejiga9aQo0cr/soxQ6Xm9gRN9pUWoTwLVrFaNu3naKAIpPzyqIwWDU
	 YTMn5n+YGot2M+dHyCEbC1k0G9vvPdeaQRIQQVsOzdPk603uedLVpVdpBlK7uLeFS2
	 baC9dmzOgZHHlmQkBD1Bv0z8ucV1d2GLhCdIOLVtpNkX7+09sTNUQLh5+tCVOgW3K+
	 Z/wRKx7ilOR7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993E8CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175970279360.27092.6820724751220769789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4151b965826a0556685efe15416f1295072181c3cf07614a7f98b6695068cac
Date: Sun, 05 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759702793
