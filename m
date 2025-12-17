Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3484B23F429
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766004834; cv=none; b=Dgs4ZPaOFaEt1ODmiTL66QfMRXnx54BwGdUTDLlYj11BzPKgaWYZFH50wO160AUk6OBkE+XfLmtFDn7rWeQO+7fUyk61eOXCXigt6BBFtpRfp/NqILTLkCIlBl4gret9dz5m8K91gIBP0psERhgCpcAN+Nu5WPfu1uy1uXQQv8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766004834; c=relaxed/simple;
	bh=Jko3ek6OAdfkE7Hdp6etkiUpA704GH8GT2VlfVTszAs=;
	h=To:Subject:From:Message-Id:Date; b=e9+6ggUpUwDS/au9jRwSKqLM5gRBoO/QhISZK93lzMpTwoZ3L9WxKvngM8iJlelm/TlsFte1ag2eqeuft/F/PEXL0noDMrevTm/MxMbujTqlF6/DuLV2IpQF5+4B1qpZrtUVHK6RtK+mFNQLMEna9yht0A9k0s6Dyu0KNBLhLbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DL9hX0zp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DL9hX0zp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4668C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766004833;
	bh=Jko3ek6OAdfkE7Hdp6etkiUpA704GH8GT2VlfVTszAs=;
	h=To:Subject:From:Date:From;
	b=DL9hX0zpJ0uHGz7+/6P5UoJYIOvlsu9HhtJ8IUqkjVo4lj53MNq8CAMEqljwqkqep
	 1/LO+YnUwS5UDjh79KS/VvRSgLETslkhDPPp//3P8CEHj8hd928Qp7sTZUuW4E4XkI
	 mZw1FMq0iwdHSg5Fro1rF2aVBq+0M0XA22ISYo84fThRTjs+1HhdCTOoNTNhZhTrPt
	 uYdyWBiTFs8WM++3E63MldRO7bPlutYu9DmuiDIWl5YH+P6zOFwLdcLTr9dmSRSpQx
	 7F5Aa10lCMebt3Ksb8K+8zqdNmxnrwBbnEa6OWKtcsMRmD4BFG3CRIN0f8DniTC0Se
	 r35kRXwf6d6Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93225D66BA6
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176600483358.22432.11728954287871777045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad718d8b273c8384f06303f1ea6fbdafcb685edc55081ba2226dffe1b94a8bc0
Date: Wed, 17 Dec 2025 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766004833
