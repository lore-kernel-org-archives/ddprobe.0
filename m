Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A79631CA42
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766756634; cv=none; b=EO72FlbBy676H8NMAeUrACkrrJOdU9teHz8pr4+BQdjtByFK0ENzE2cjD2KuX9NUtw5oPFE3BHuFWzo5Tv1FJDs+NEXkWCnWULE+PYZvpglBGGUvO4sV2K1pTdOBW8GJietpR7omqm3mc3WWy+efNccYyqLCX+IDL5Q9fOucdUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766756634; c=relaxed/simple;
	bh=595F906NtYqq64U48zPqsUNEIgmItCJ2fH/Lh/9wqDU=;
	h=To:Subject:From:Message-Id:Date; b=KN67nmB36tkTKk0deqERzmrNN3BrdU7jOOENaMXnKulm3+COiPODk5XcHRn6DLh03oLF+gdwNCZNQpoulN97TDFkSWBD6BAVR11M0o6u7kPWvPmtTiMInGTgt2uIdk4LwUtIcJjGb7q/5aNMsOdQmDM08XByjFQjAtOD+hTZpso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjfPCSKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjfPCSKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8604C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766756633;
	bh=595F906NtYqq64U48zPqsUNEIgmItCJ2fH/Lh/9wqDU=;
	h=To:Subject:From:Date:From;
	b=BjfPCSKxmntnhZI7JMDNc1GM66HW5z6VYb5Wv9GRqwzSgViZbrsyP7bi+QDZIMFzP
	 27gTUjElwCs/x9tAbzXytrwRL9CyJ7WYPhXNGNYhDKlY+bLG1TOGE0BDaCs4KPvvwk
	 15QsoggYAdUEzaemHHNccNgifEeXaQgCX8kIhw2+SDkaUsjJG1ypQCLqk6HY6lhcNg
	 xovshTWumwFMUaXwA/b/91xhgXpf/TW5QYZ6AY3CSK1nHzjLOcRXwVgLaStt1Wiz8M
	 fw7AOZoBSluNhvJLffv2EieQOyrtwkmSkb7ZTq1wv2jQRxqqma12d/azcl9Vr8eRf/
	 PFmQPBRTKLPrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97272E8FDA6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176675663358.31605.15310561547643665115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b6fea5b6a2f6bcaaa6c3be962e3524002774b7bf67db53336aa976672077669
Date: Fri, 26 Dec 2025 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766756633
