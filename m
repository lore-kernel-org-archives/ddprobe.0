Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C29A3164C7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792391434; cv=none; b=u0l/ETmsyTPt5urEuEmAwMHOGu2/CAaVDmkooovj9G60ds7FAWe3frZeCkFEJb370L2HFHf/y1NpggTf3EuD+/n/soOVEDGGeE9IvWTIhLMkICo2HgmsNPVO5dUTwyoxyoF4E8FGegSt3eLAjYOUm4fsDvchRsWkg3+4ewGcVLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792391434; c=relaxed/simple;
	bh=udSBaja3s0LxxrVh3M+wcGa0UtlaOid4wJyWHowOnvQ=;
	h=To:Subject:From:Message-Id:Date; b=Zt6hJwn/CMYFHgS4mC1Yg98XhIwLlly41eiDDbfhKGd3Lj+2kxqabZiHJBK2d5rQwHRFHJULw2+2if4QofATbcb/jeNvV2iE0H68X1Zv78ciikiOUfOo35zjo6zARV08frcr1anEA8NbGlJKA3+4qfjqpdVybnrS5w+GOSLjH1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxewVWAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxewVWAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF06DC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792391433;
	bh=udSBaja3s0LxxrVh3M+wcGa0UtlaOid4wJyWHowOnvQ=;
	h=To:Subject:From:Date:From;
	b=gxewVWAMy99EbZdXGAM50P7w+Y91aNuuUHrEWn6NMHvbn0/rKiTWzkkGrDo9ma1FO
	 T2iUJidmKyia5r9Ckkv2wr6icbNRZXCJKCsSnY3NnBXEW/VeavwDsgSYfjd+1YrGhk
	 jCTYXVZ/rgagK3n6pd5bjOjqWJ9JGvfvLDFJVS8GHpsGXFf06NUmM/GzM6PB03Mzs2
	 pMsjPqL+iSuy2VPWtRVzyq+CE4n13gbaw5xn3m0lg6pMtYTWenuU08oy38DqRjhY7j
	 yk/65HlqEQuCSBKvw03GO9Vw5PBKX6AHaJNfXpwaWLzgwi/RZ29Nv98SvkkRhEyjdn
	 sC7OvLs6isk/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28BBCCF2DB
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179239143370.2315.14309700996713191145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bbd2e72cd05aea2cc0ca5d0fb09af466f7f74c1d0dd7417384ee84a8faf98d5
Date: Mon, 19 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792391433
