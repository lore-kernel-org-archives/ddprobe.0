Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769381EF363
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755230394; cv=none; b=ZCEH2fEH8DzSuzqE1gUNcrRmM+HnnYd2L3DOOiQZZtUw2BzXyjthYZUCOX7aMjmf+vc4405SW02M5sprwfcCyZKIVnqXqZGvfsQqNg4y9TjSMA6tokiS4W7jZcvOhAEJOuSa/UfupWxmXaytFiA52bXo78YiJUXoUg+VXrtfMgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755230394; c=relaxed/simple;
	bh=u1cD1NXBJ+ZLSgScVZbdU62A5yIJo1t+BOLISycvSeE=;
	h=To:Subject:From:Message-Id:Date; b=NsbQPQlvqA80NEHnzKo+2u32TOe3RW15M2ZrpB0SqKPPLW94LzHyJtHeqq3Q6uvKWV8P3NrPsKguSNwPYz+I/k5cm7g1H2bKaEBtxPeoBZ1IdfAka6KGidHEPTnKzU2cqUJQMq7Vn0RpyPOHFJbg7h987MKqUeNSlKDBJQ6rr6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wc8yX1Gu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wc8yX1Gu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6712C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755230393;
	bh=u1cD1NXBJ+ZLSgScVZbdU62A5yIJo1t+BOLISycvSeE=;
	h=To:Subject:From:Date:From;
	b=Wc8yX1Gui05R77l89dFMb1aBjTwnXBKC9MzaOnpCc50AA1T+DZ6WN09nvnGKD6Nk2
	 vLWqa8+OGcvBJo838AvNQpfHig0hYCkYs0S/hhTrlWNI9IQLDoR/7AW8Vc/enorCau
	 p0WpkzrLUPJBxLxrA9Tf3FTzCm4GrlZeRqS19NFry0+TtpNo0NAWI0zOKPu6gM/5tt
	 Z99KkNc9/aVV0DYn36GgoC1ODmfohUzIdD6cwBusktlpMQXlhFtx3xiEyI8WtICRHx
	 vyWdm8RQistyaxt/t5UWYExSGBJqRZfpUqDd54bSI5ofMRtp2X1jF1NtxaYRQOhFDw
	 gvuxtRXzeowSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935EFCA0EE0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175523039359.16968.18031482761782877952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ade919958056de10dea5e96d52a1e57461f165721446bc07a7dcd4eef822841
Date: Fri, 15 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755230393
