Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E5E3BBA1A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780045954; cv=none; b=hSCJYIaQp7LZQ/bRHYgDXlYQm1nZlZpuIKmGeU636MTDyz0AB/5noTbAGhVtsHbu9hDhnt9LJDaJnJsaqWX8hww3UXjKNLPH/OLDi4ehI2vI5E8XXfr1ZHCSYMmXgeHuzfU1/10qxKXgd4dSrTJWGym527MUWwg+iCZNQjZbVlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780045954; c=relaxed/simple;
	bh=dcO1qJCydGk16LUtBdiD64oGL+wlnhxrevlnXM3gnH4=;
	h=To:Subject:From:Message-Id:Date; b=u5t0GPkYO1qAEXeHrtQkQgFtLKQhKfncu0bXN57irtof8V8VQi6KjhUbHu16WQ0htIWT+5cJncwTdR3ptj+9Rit8W13YMmCjea8b46/9j0QAxDDOItSRtOasO+KJClOfXpRdfZORaBAj+CAa6fUASamgTENWMAHS3cJ9OwqvC38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXpdI6jT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXpdI6jT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8741C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780045953;
	bh=dcO1qJCydGk16LUtBdiD64oGL+wlnhxrevlnXM3gnH4=;
	h=To:Subject:From:Date:From;
	b=IXpdI6jTi51rKMtsqDc5xfF3lvkhOOKOteuteniBHzzQ3NLV6ag2PwIu6qVm4Hwxs
	 37zJh3UyTS8eEtdXsrdtAIguRuxvHZexjnK9R9DayYgrv31KkGFvoJ12YepRw9I3cG
	 2kfA1JFnXHjzSbQqw6wZFe+KabTkaEDBADpADs4zkwuNFCUDaH7zqNUQKarW30hYCn
	 5HmMZnxYpsCluVCi0pNCzMDhiExEryfmx0hvN4AV90/JxDsZIDzhdKLb2iQuRaPOFs
	 gEMzBvn+Tb2oAnt5QLcs9u/M9t9f94c6eP13HGtTIPJyhz3o0dHKzRWiUOUKst1uJc
	 Y6sA6+pAHd+NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95F2CD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178004595368.18441.7655338928124879079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c50a2ea545ba2af1f3c6a3ad7b3497f0888f9b939fd0e1a5c3dabc69e417a40
Date: Fri, 29 May 2026 09:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780045953
