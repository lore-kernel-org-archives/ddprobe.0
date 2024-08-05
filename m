Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B836149C4E
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722897954; cv=none; b=P5yQZ4MrqrkqJ/hYlxGD5SEq9PjUTqlLXGIPIdVjjXO6VF8lGS9U+suiQrY2TLm4AhQqtiwK1Ky5sBALMOiHARE9RDj+GQKu4YmYPuHIITd1z+TFF0LUSHNoYEAGNh0M0NVvp72KVKKi9nah2be4icN/SM86LXwdI0u7Xhzwz6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722897954; c=relaxed/simple;
	bh=b95HxxFII+nRVkijBRixwNknyTcON4C/2RiFc9G6Z08=;
	h=To:Subject:From:Message-Id:Date; b=Byxs203xng5y5lw/T4DeieK139ytwMWGEfJ/98T90FgecSQiWq6yYr/Kh83Ziqk2OKJh03oHVVaV4EhOyOvOlZWayw0i7811vZxAQkoDeWZLfQwhobF+yH/xOVwkYwAF6Fq6PulcrUB8OfT57mSunj2JKi+TJY5QSGS3ES9yAKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpikHzyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpikHzyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A67C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722897953;
	bh=b95HxxFII+nRVkijBRixwNknyTcON4C/2RiFc9G6Z08=;
	h=To:Subject:From:Date:From;
	b=cpikHzySs+XBMVXWs342P2XrfX/4lgsBqMiiBq1vasvZ2D3TnfBI4Y2kK/VABbA0U
	 k6SsxBvYbNnoVDf/4NZ8Sa8Ja1SRdBFw12nHPZ8KCf1+2EN1pz2tQF618LAdmt140E
	 7BsILbBNsNvJQ6QYS+ilC9qzg2J2fL22t+5xT/tDge0K7ycZxerDzpUYfgrGwzWf/d
	 jxAQgjgUkXHEIuAclYN7ihuwHbv2C3CI21cH0q2sqSrFkD+HWKgUw3uaxcAsm2plFC
	 md3JXATRYV1sJs9FweVn05PETqOTV61TaZlzC3P2PJ3q3TQhRfRhqSptivMTMjn7IL
	 XsNumf+WHtlIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A28C3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172289795358.30022.13158026484131488405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01202c506bcd3cd367556d3f1fa6e2457aa8e23f766b85a5a4c22bff2ab3ac3c
Date: Mon, 05 Aug 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722897953
