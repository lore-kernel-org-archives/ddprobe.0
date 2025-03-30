Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49783192D83
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743332994; cv=none; b=ePe9j+OmRzswIWLu0H/3ijr6/Ol63EzXUnq3k9gXu+k2iPWVNN0ypg/sMHw4/oOnnrm3JdUoKQGgzTtvbzH5MnepUbD7UX6cQqahgF+tXJm3oEs83Sdb+/IJMsjdn52yGb0cKnx9vCUR/KyZLY0Ev8uZBphc67Ov2egI4d6/OSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743332994; c=relaxed/simple;
	bh=45BCJJBSEpSoJ0bn0380yun9Iv1FIC4Ih8RNQnYXX0c=;
	h=To:Subject:From:Message-Id:Date; b=bJIrfLB36Q+IsYUAGTWcOpQeooftmN/nvBSdVOJmXJg4CjvcJYlrvnDc16iUNRvUd1/SirkNAUhf7SdmUiKtRFej4Qe6yfO0xwzOG7DcAFF5RqOKb+pzwDcXjP18GjpSLseLDsX5fPx/26tZlackLkndjcr2M3yjrRo4JqfYJ4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcGX4p9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcGX4p9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF53C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743332993;
	bh=45BCJJBSEpSoJ0bn0380yun9Iv1FIC4Ih8RNQnYXX0c=;
	h=To:Subject:From:Date:From;
	b=bcGX4p9SVXF8OnL9A8sxC/f3sSdS88ZEd3Ho0Y5x9Dv1pvRV2oX5fKgQ9ClrxVD0L
	 9pTKurQp24ni7SuspdS/9JhhNJ6Fyc6Btga/m4NReZzs3U3xAmCDuiQuY9y4abveKu
	 SM+W+bSjDJSmlFmNAJleus8C2WWMqW2oL408/SqqIb3o97b2xA1piDUVfctYiz/w7I
	 ZyPKaEKiAVQrVvMHcUxDQV0qc4B+vEkDFT7Bi+lUwB2WKISE01byuXmAuyPk+nDBh1
	 hlZmnSRMNF4R1+6hvfpr92FN46w0RbOijon4wDPEMHNR9GpWZebmhdakwtt2ObMn3j
	 MQcwfge/i24jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAF7C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174333299360.23668.11589263682202067723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9a0e451194cda25d10332fe30cdbff6f92a87a78bae6fcb6b0dd72b9bc6093a
Date: Sun, 30 Mar 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743332993
