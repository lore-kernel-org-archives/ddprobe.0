Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E30821B9C5
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766121234; cv=none; b=DQjsrfOErt/VfA4C7VvKbqVZeBxHkUDhkbjW3laNOPAnEDCX1jETdKrKfu+0i/enpOUkSKlVrBDidRlbbYh9YGhnKb933fg+Rx5kZiNfSOO6+0EmdHe1ekgbHe42Ex+ev0YaIiNnuFtkSataV6EXyuMnWw0x0Q4PvBjNJp9PXKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766121234; c=relaxed/simple;
	bh=/6V8xR0Ermr1MdKYRPbh4U62DHZ/EDTx8QBLl63FN5Y=;
	h=To:Subject:From:Message-Id:Date; b=AtPm5lcha58RczyoJHvMJmHpuxRuttduEMFFjHLPdQFP7IzbCOcnWbgn9C/NkYTcJPtTZDe3xSRR9sAHCCDv0AjfhA/OSpgQIxMkcpuUWWsoAQslNs7/j+rHKw136Y3KJS3ypY+xmSrxOToUHFxW3MDWMWUWIClpMuPEQJ/vEbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApskB+Hn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApskB+Hn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7AEC116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766121233;
	bh=/6V8xR0Ermr1MdKYRPbh4U62DHZ/EDTx8QBLl63FN5Y=;
	h=To:Subject:From:Date:From;
	b=ApskB+HncrX7rsTSKBBwf5oW7IrNA+B9nusvuXegLfnGcp1tvtM1cicqcxbSLAFVh
	 CLyUscMgj8ECaZ/k+f7jKlR/QjH/gvv0ltwcFR6bV9+OMBTvH1qr/1/06o84oCeAX9
	 hpB5ZE1zVDaDd3ugEe2alncvoRn1MwoDx3JmUOvOYGQ4MP/gO7fmYSd0DjLDR5JTvd
	 xlK6+pK+gs95XDe2NTTJd2bEjznJvxSlblVjFcf7bS+dYvlBECUgUzPl4W8njpREKY
	 TdNRLQ66RG+E42VRfbkaVSBH+MnJCkC71TDEbKJCKM2uto8nO+koWikN01Au4i1Skm
	 8M070L8OAQZew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEBCD711CA
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176612123358.18565.16335038071570150993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54dc24ebbe2d9c52ab725cb6fc88a6f4ee9684929a8060ab246666a98a14f25
Date: Fri, 19 Dec 2025 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766121233
