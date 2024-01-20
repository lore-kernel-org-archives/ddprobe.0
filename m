Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41BC12E47
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705783097; cv=none; b=f+jDIAgWVK2KGCf1ls+QD43q6ATYrRs8jhJmLdjDbosSPlIbyVDrZYuQNNthWf2061KJUnJcN6wT4yHmKLrYqLuyMNoDPyQrGxmlX+7lSvZ+QeBwPIRZeyQPARpekZ5lXovZxG+OY02z9NqHjNkFX9pDkFO5T2AZAI6nXENN/No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705783097; c=relaxed/simple;
	bh=tCsy6YLmwnT11tMpMGHsn+4kb3tk7fR+FIlEWzwzXyw=;
	h=To:Subject:From:Message-Id:Date; b=cPSl+GEV/XmRnS/Y/diKub5l5/ceVm1uSiLbYg7jSJjL8XVFYXDG4swcgxmeg1oNK7JFn19aRkw/yfabNB0qTcpgiROb+/JOnv0c8B3QRR6FNgvPlN1zh5UzRIQFd31scyesCM1AApYvqhaHl5q3UMF6zsLATyBKVJ/DkPAU2SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxZi4+ya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxZi4+ya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7653AC433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705783096;
	bh=tCsy6YLmwnT11tMpMGHsn+4kb3tk7fR+FIlEWzwzXyw=;
	h=To:Subject:From:Date:From;
	b=mxZi4+yaAVMn4Ha45oJtmOglzk0iuWdjqPQmZBjKYHsgerrJB68zqFJvuIP2HtABu
	 SoyeEiDSOlI2C7wRn1VYtuaArSk58p53hvRazAyThWPyuNnWZIJw+AvdsE9xuD8SI9
	 34ENgu2MtEtTYVtEbj59sBCeq64f6j9dpKadaCd6P34gVHFyOO5aPKbXPWSKdanHja
	 acCd0z6CvKkYFe7f9EqSP3zh1dfiRzOlgAEYsHqeuTgU9nk14PYmHHc/QueHikSft0
	 ExmW+qBK579y0lLc9Idsiy09+JJrmhll21kNZwPmjIoDreAHzYdLtKjISEr6XWm6g0
	 BjzXl9ZAW/waA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD3BC47DD9
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170578309636.15978.17654887375718059364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63f7527dfd649394e263999a857a607da768ece97041d846169403b089e2068
Date: Sat, 20 Jan 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705783096
