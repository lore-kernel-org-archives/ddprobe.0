Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E9F35C180
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779384754; cv=none; b=ixj6ekrNoldHseBiwvOZVrUMxAEzq5c76mzY8bzO4zIknIY8o8AnVaqbvOik/pxP4cggEsXph0QG362DmuJctq3wjduqahkuHF1wHT0YAz7RquoLZAIwIkDTRThMuAVa7pl+bBcOyRF1LnR8pskcLnAbxkJ+DKdHa0aqmHbf4As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779384754; c=relaxed/simple;
	bh=eifYuTNbgREPUQ/IRQE7VQDd7AQxwAegWpnqvAdzhY8=;
	h=To:Subject:From:Message-Id:Date; b=ni2OUc8GtMo0S0UiEBMMOZU04k9M0H/4MAaV7xmzFl/KiKCBObUhLjGKaJjScJkxyG64OYqJp1lE6e6MDqpQeJI9IeYSH6hbLf9sPnMlf5zbg+JuiN8KcxrcsRkhfH9ZM2CoLVVgyJv8laJZ+u52Dxy4qlfK8z7fYITXAZaJZhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0DmCtQT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0DmCtQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB83C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779384753;
	bh=eifYuTNbgREPUQ/IRQE7VQDd7AQxwAegWpnqvAdzhY8=;
	h=To:Subject:From:Date:From;
	b=J0DmCtQT2S3+G1Nki5axSs5xGqN4HrviISVsYfqt+p1zdNx5mItn8ZD5BIG5L0sst
	 QJ4NsdlxbvRXe7U+s3pZjC5Sqq63yzORv3gKkmm+UMzfpqRbu1RVEzgVcBcYCCjhTf
	 D0DMNl1ZEGn8Ydgiswhf3dCEewBlG/ygtu7oSDz1rnWCbHH41B3As8QOC15Ft7FhbV
	 k4/ldFAS3I9NSWHisUJOGl5eITuFttbkYCaAvCcB+8u9cm9sc+G//NhGHJGgz/CVh1
	 IN7IAJOZ79G4COginbpJT7icVLQ/hymKbeyMzyUJoleBQrfucZK8gOVaB51EbQPtas
	 XnRfK3Atg/M2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93BACD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177938475368.16577.1523478458488284519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9938a9cb89302fa8f89354ef33f1689ffeccd692832b65681e384cf42712f64c
Date: Thu, 21 May 2026 17:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779384753
