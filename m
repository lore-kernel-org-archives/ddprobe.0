Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559521BF54
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720901423; cv=none; b=uUzHTmqeyzeYSS5RYSVw6q5E2yxIjtqvZ5cUF5LJoJKnxoZ37QGPjvxqXopqz90V3Q7LDJ8o9+hZpsMYBAq5yxDPXXCT09BigGXXqUlJnIc5YZEFe/grASX6VMciYqWLvtWmUUpA9nfQ+0m5th1xCVjvxi5sqAB3ZgYbebtK/N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720901423; c=relaxed/simple;
	bh=Vkdk53Wxkr79QSZrNds8XSo6/zy/DbN9YqrmQ5hBK7A=;
	h=To:Subject:From:Message-Id:Date; b=biUM9mHUF0gUv2SyxGOIL3Lf/glYL/Yk84ykhWI0nVpy4EHQbxR0nMDAjdGKze7BoI9DB+0hvXw4oNVLTedIJITVXAKQnJsDzZDU1sGGgKbkKXpFxEeTCg+BeLWBe35MS7JEv235xTiX4jPLfj5WNY+gt4b+3ZM7y4qsG8LwpVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gilTDYGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gilTDYGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9361C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720901422;
	bh=Vkdk53Wxkr79QSZrNds8XSo6/zy/DbN9YqrmQ5hBK7A=;
	h=To:Subject:From:Date:From;
	b=gilTDYGc04YxVxncXT6v+gLFupBJ4Tm0VZh/jaN8T0oe3MOf/mnCNYn0WJtLJi5KB
	 jzzWi1ju83FyJnZC9V38p5aF17cPD/FWJSJ73hi23OH9X0/Q1mYS8SzCaSKpFgWlw3
	 9jSobTQ2twmjk4uQHIBaJkoGtmC9srkuz6ukv5vR+72wloGdrgA5jT06YL8jo4DQvD
	 1gv4+GA7vOt25L9UR976xGOUic4qIFvOCaKj2aY9RvTVLoec2zrTQd+uP/DPrdY9ku
	 kfVucDPU0pDNnaSNO1yRHU14+NiSCXbpw517fC7drWWrc8/1frp8UtCFNIzAoyPjSf
	 qxIevp6cGCkNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C126DC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172090142278.26805.14338617463931980371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6620851679d72fd22ffc1d9e5941cb0aeb59226e6ef3c0b465936081fe19a0d4
Date: Sat, 13 Jul 2024 20:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720901422
