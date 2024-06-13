Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B252F50
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718314103; cv=none; b=Bnqxsy9PE91f0gHPNKFd4FmF/lLfOB5pzaBs2uG2QYcEWOK+A5mFW9XyW/kl/kdnAYTZxrTREjFG7f5KBefM8I2hfg2y8nLYCljSyRdxSPx0uJnS6ADFmyNIYRgSVwT46tNCJqHFS1uaLq4UuVG5rn8RlPCmbkIRGF03bxj0S8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718314103; c=relaxed/simple;
	bh=VZmCkFvi9LwnxPeovidfPtxGovM5kShqirCaX/ySwWg=;
	h=To:Subject:From:Message-Id:Date; b=bNVGk/2N5GlEqxLRhF7zdXqtG8I0kelWV9RuBBklZD+f92ZhiYFdQ31Zy0qeR0VLlIKP5IAt7qjkd9vXXqDlyxwLq5STc/qbLxxoUeyzB/FFjnJjJymhy/t4ZXCu/03n1CFNrCQv1gjxKjEXedRSGaCBNCTH3G+ALsYQZQRqoXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlAkozHo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlAkozHo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADECC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718314102;
	bh=VZmCkFvi9LwnxPeovidfPtxGovM5kShqirCaX/ySwWg=;
	h=To:Subject:From:Date:From;
	b=PlAkozHoj/QhjVca/OuYwBp+cM8TjmciCtCbbzy9ymTvb6p5bXEnoj4ROCDZrqMiq
	 fTILT2wuhCdFxaf9mYcuxifdxDnZu9xRJQNWrSehSL8vngtTg5qnuU80hJy0s8ocC1
	 7EzRniXFHF4yhBFIjsm3VlQ9AZxUNdKBw7sDpH/SUPaR3OMNQUClj9QfPrXb5Kek1V
	 oDSV8iD5N/YQeLwmH43wnW5uigEyY2RivE3aXjafQMwW+qIqlRj8KK2FBF866rLj1r
	 u5EWF+C0bhpND9KQKE0cGIHJX0eG7E2F/K4BAqqOe6D5GP01DqMtHnk+zVX6S4Ppfd
	 pYIR84x7IEinw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C558DC27C75
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171831410279.12682.2193322750852922322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62673344023af18b36a7103e477259d3199705ed80fb5e6ebd4a7cbb6b6618b4
Date: Thu, 13 Jun 2024 21:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718314102
