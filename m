Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F4437A83B
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783070914; cv=none; b=A+RWPTbGe5slemWFkUpJGfu6OXlh2vbIq/lnW8VwTEYgZl76oFQuAONIKYNp9GNMcHA+LXypgJEbuRVR5PkXtSIKrZVhYKq95EzLQFLFVi2ViRIq3m0t1fUUo2W70/siPYqb3ilj7fIUWthq04sfQoJjA2pK6xoyKJ3RyaYm5ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783070914; c=relaxed/simple;
	bh=6Y7HwVSM4HNMffqBIps0Oh5GzDlEAdRA3lbk9MkTNAE=;
	h=To:Subject:From:Message-Id:Date; b=hFJ9qzoLRRp4hLOiKtyZAs3cU0aRD+DPNQzAxm5NcSO2mXXEB2GmTMENm2vzERGLy2eGOwk1hBHRkYVvuWjQYrpDPXddXzH1E2OMKGxjIBaQiI9HA60h4LvKjkVCxuKzYutva/US4h/iHJgldTOsL6kcrysMYtpKvPCqJ/QXCbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQl6DCO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQl6DCO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5B0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783070913;
	bh=6Y7HwVSM4HNMffqBIps0Oh5GzDlEAdRA3lbk9MkTNAE=;
	h=To:Subject:From:Date:From;
	b=HQl6DCO3cua1crpjpHoRGEl+/yE8OKLYAk7GLgTviOR4fmksC8JiQKGUqesh1h/5F
	 vZrut7k7UwrR3mz/OZ2XpxJYP1ucTB6qcmLLYlCo5XTSX+rhCYxlsUJzV9gGDOkCi3
	 zmdCceVYC+6QoncHJQsl31UtfmY1O5Xiosi+e26E2zZPVuUPRWFQ2P8FyqzYRwUlHU
	 lHeeXynCaMD6K4zXyFL7WdzQRKlMoUi1XDf3MSqMP5S4XzUuQrTweXwKAkjgfIQ15R
	 vaGulp3Tse80o1YimeMq0gyC3g5dKg6jOHf5/i3PeHn8n4ixgG6HDW8w1k1MgPl8Lr
	 1BlDqADNTRrxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EB0C43602
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178307091368.5542.7524869609489020816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 085fdd60f4975fa4ebdc8db5ef3c9811f9cce8fd48e45cbb6f0e9de839321b11
Date: Fri, 03 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783070913
