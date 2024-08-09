Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC8A168B8
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723218954; cv=none; b=ZPaVweOpoS9XfwpuI7K8GJhap/q7ybqIK5toskx8j2KTXNxSq0uxc+s4C/2sBcy3XLmOj47ROxJPOVor7+jM+G/TCNm4MyB39DpvoqpCW/VoKJ4bNT6mDfSsmmOukqECaSaFb87OLHHnFApN73SPfrHUwoTq9XBgn4DpezlV5Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723218954; c=relaxed/simple;
	bh=imv7yF95k/ecVC6qBxGQSXmeyYdzLl8I315kPZ/HllA=;
	h=To:Subject:From:Message-Id:Date; b=Vh9Gs1SOgFAGwByYrCkmijYMYhDRgrrH6j5Vjy6dL2/tzHY9a7NkKSYK1PadXSGhrkY56d1PP+iudu/jqrzEuhYe8PPFcffkFgmK0HqQaJjDKkI8/hlG8pPda9ovK1PESuNdEPAhKizx97/N/wodbfafSuchBWqXVkHYa6B2hOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzsBfkjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzsBfkjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DF1C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723218953;
	bh=imv7yF95k/ecVC6qBxGQSXmeyYdzLl8I315kPZ/HllA=;
	h=To:Subject:From:Date:From;
	b=CzsBfkjG6ICSo1a2ktgXOsmynLRaUO0UOy5f1OBz/gsHPneQtsb7701tv2NM9vqUZ
	 UfKQccgYiURRZXZxwqPP0yJxfLdpYfFU/wVHlvXwqHkFGlSthhWJk3xXtD2o0LqcBp
	 2Byyzfl0X704UvGRT/HJ6K9H8KD4P4sQUpntsdHa6/CFCci+3ThzAbfAVbYPTPM73T
	 QMSSizYmtDfZkUr7QzwghQ3Tp5Ba44s6LDP21RnbRhuxuC4K00UTZa+KtkeF65oBDB
	 K7rUIddG/wnxK02BQYV+RTUtsSnYfHaPOsHngP/eLo06GZ+bpaO2mbb8Id7HmQgFpo
	 +lVucFDK43+pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE73EC52D7C
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172321895370.13236.16029819972593204152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1decb51d82299a7669dd35cab90a32b166034402c816ea66c6e1525865f1d10a
Date: Fri, 09 Aug 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723218953
