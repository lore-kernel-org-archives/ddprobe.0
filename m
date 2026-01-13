Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EB22EB859
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768290834; cv=none; b=KwKbOeQl4p9DKxEG4Bp5EhSIB0ME78tUrlB8Ew/jJx7UpwHp9Gg0A6PXOHQCoTEf51CsFcKgHD3plPTlzozSfot4wnjUzwlN+NJ0KYSiLPxXfJTdnqPUXffw4fxLPl32C92Mb0E58pEDAouZiVjlzJDwSJU900TxRa7X+TavEZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768290834; c=relaxed/simple;
	bh=v05N8fI9hxR+Z1LGrtPah2WmMHAxVCWy0eK/saEXLug=;
	h=To:Subject:From:Message-Id:Date; b=GmWC4enUvNp7XqZ19mjsjEP+HXMo2ViHmt6XJPjCMZX7hHeSsWMSuD6x1SBkqwoDx5kwn2X8T0gwrCkrMXYSin1rapPnNECVNMJYsBe6j7zBTf6E/BioETcSn+rQEFuPwwAdmy8+l9qZytczdCqyXMLTF7c8X8JhKyNH+NBA6mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjGwLkcp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjGwLkcp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44D2C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768290833;
	bh=v05N8fI9hxR+Z1LGrtPah2WmMHAxVCWy0eK/saEXLug=;
	h=To:Subject:From:Date:From;
	b=BjGwLkcpruH6HvKklj8UvQkGmVuLUPv/5zhkvgey7XZ5tjP4rvGdvllrT42GWONRe
	 sLMXPlm5CYT6ItUsIPdCH62QFwo8f8OHce59jSDkFFEJtXzsJ1oiVynVs7WWMABpBx
	 YvZss948ngn6fT7uZa7QZhzik9XS5g5t4kOGNfyHGUmCXFVc5mvShpYmWj8P4L7SBw
	 qRGr1/QdJrDstKWmOk7sx1OTuoM8NiRDFpUQYOIbHp2YRbXwmXA+NCDmLEnzj2tyUB
	 lBxLFXUlokWdx6Frg4Ckuar1TQiuCvbHnFht/gLH89fCX/uTPH7zvzPYJO9s9RffL2
	 83ufZY+Pj5tIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9572AD29DE0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176829083357.13569.13087519883044724384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3090abf827fd150b03d60409e4f69ae248423d7e74a74e6a3ada6d370de47ac
Date: Tue, 13 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768290833
