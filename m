Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4097F1FCFCB
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737113754; cv=none; b=St5K0Y6wRECw0yYDzsLV3nThxEkc+K0+AfihKTU8+hW6W/RvoKLheI2Z2Bt29plxZKCuxusG7L+R4B3E4l0bqLPeMhEYU9E37O8HuzQsVmQurzJGq5LKRDkpOcsnt8yKvsP/DscfzO/BD1DggBfULIrCNUeLMJj+WioRCySuW78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737113754; c=relaxed/simple;
	bh=voo3FvfpDcxdXHmgQ0FFnL1sUzVIHcjvLx6zQsmnY8g=;
	h=To:Subject:From:Message-Id:Date; b=ETM9Zv00O0+68YE2BovlTufILfO8nQP8Tgkj5TsiRohb5+SoP3e0ZtCKeizMsAP1hlQK9ronEepPdx+bHDKqy4lGWhA6+fkgZUC3muqKHzJN1txoKn/NunzstyvdeDTdTLHz+9qTh9epZdsepQnj32AiavAGAk/ZRm62RtL9SZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXI5Kd7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXI5Kd7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE35C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737113753;
	bh=voo3FvfpDcxdXHmgQ0FFnL1sUzVIHcjvLx6zQsmnY8g=;
	h=To:Subject:From:Date:From;
	b=rXI5Kd7uSQUqR6iQJAdno/wmY+KID1HY9Rzoo3wyEaxM2fxlDco1SP9iXM/eoHQzC
	 S6k9y16kIsrSLDvTVEE9hyWUw9zITMPWkv+R9lbWZ+uk+uGmZBOP8+GJdjTRU4/qPS
	 4osTe38sjpBrvvECeODBKPbtjjuI9opc/asqEHaEezfl5ajq6akoiZEvxHFUUXCbTb
	 YEtVUJPnJx80KaM8i22jJGeNwKOISf9qc8tsfPx85gF0eGZDeTy0lesuUYs+0NBLul
	 wj1cX0d7pXTNnuo2cj2dQuelFnkSnY831XEqAZmML+jQeyz4sL7IXB21+3aV/bD/ij
	 9QV3vR7if8VXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD83C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173711375363.23947.16336334909952397479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c23249a0e85a01d448b8c6bf77ed12e83b30b339700203b54b013beea151884c
Date: Fri, 17 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737113753
