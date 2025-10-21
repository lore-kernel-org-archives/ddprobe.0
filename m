Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E5F1482F2
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761010794; cv=none; b=XzhVVb0EzmXkthxnGBUXG9YM84QOSDzeoELg2VYIE81H1PkgkE0+aMWyyGG+X+8Jna5VB0FoJhZHQkFdeilEgUxMMwbdm3HgFYmnXZhkOgHYLEBYnfakSG+tCu3SeOBH+xUHiilwJfWGxyM9kVtFzIPItFFC4BSU8l1+5zy1WrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761010794; c=relaxed/simple;
	bh=eUkJtYWQe4cpXLwmzPZ7AgbPFC7FZIoeeDM9ON85Niw=;
	h=To:Subject:From:Message-Id:Date; b=EyE7CCgmts4QNWHA8F1bZue7kPMsqsxdwKOIMZlklWCFm0eisN95Lcc0MGV4ZWRTFNbXsp8WV8I45Zw/FpAoqIJQi+B75Ueav5QQYJ276MsXGwJ3FQCIG2u05p3GEfNzUsmHsdEG560pMCrK0F/oocVYoC5OtYVyn48p1QbkMhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGchkill; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGchkill"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A441BC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761010793;
	bh=eUkJtYWQe4cpXLwmzPZ7AgbPFC7FZIoeeDM9ON85Niw=;
	h=To:Subject:From:Date:From;
	b=GGchkillMvrZCl8x3Oi+3fyMgrfin7aljvxZz3WpGQm58D4COl4aNqCHQDGombb5V
	 pdBLa5KGhVkOmwyGeSq9azlVzB+aHl+aHTObmvY/iM7yT4/u7fEdO012ex/2Zs6nZL
	 cQ11ZerXHUrf/bSpQNKohZp/6sv5ytlprQiIRfTe9RE2okmRXpLce+xC0oD3rpz1sp
	 l/D+XEQmfjDzt4qlQHtt2QV4nlKMJOQ2OX/aJWXmyyB7W7j7+xD/Y/5Jmu13gM3ioE
	 rRLGBiqcMvmHFXU2dNUtV/Qjok+TuMrU/vUtzq/q41PQZzplGPDptSdxcc5g6jsOvi
	 B2fYdGEeHc1OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DBCCCD1A2
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176101079358.16542.12099748072553962580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb273ddc8282d8fe0e876690c5bc3c2978f9751e766ba8046335e3d1c5188cc
Date: Tue, 21 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761010793
