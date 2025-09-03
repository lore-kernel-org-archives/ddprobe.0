Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9062DCF53
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756885194; cv=none; b=cOXXNHbNC5KSxwErkIqK0R3Rytz3d73oD/YUpB5h4Abh2WFasCgYUekJRcMkhWxYeC+4MhMbgxYu6XoUiKvmzqYcfAF0SDTEF4ZMTFPwLeo3IZ63vNgR+RUxmTuJz0xm7Knba7aKhM9q0BXN1RuNHCKtA3vbH5waHpdGF/OzLYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756885194; c=relaxed/simple;
	bh=a1q47d3pZqSK1s6vuDhbf9OwAQ4ZNVSC1iQp/j96fRg=;
	h=To:Subject:From:Message-Id:Date; b=q1Ixe/zWcM+tnpyUBLEAjFbrKysymLE96lIOZ+mFNNS9jcso+G2/AYj5zzNRO07SKqtH9xVGW+OLltj4dgBnNdDGLfztm4Eqc35Mqqb2MINbzPIJX2dCsntdAwp38U2Gnc3Q+foDRbuOo0PRu79ZnZV4G0CVvHI3yTSP6a/J90g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvJ0W4fI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvJ0W4fI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15B7C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756885193;
	bh=a1q47d3pZqSK1s6vuDhbf9OwAQ4ZNVSC1iQp/j96fRg=;
	h=To:Subject:From:Date:From;
	b=WvJ0W4fIImuUI3dlRpKlAZin4s0QfKspHw3pVOwyxftkjWXwgbv6vOfhKko2vK8cE
	 1YumbyZ2OxuyjnkAWywScwGfRUgG87sZepVlJPtccIBDIYExRAjLEZDzrQ5P0PKPJL
	 JgELEyuosKxM0MFkMgg1kfyBd4nrb82dAdfi3q6gS3ZovBR395drpwFUVHcJWHrD0U
	 2vVWVtzNB956mLLdyAk//H2jwpS1LX3opC06jxt1p9mYBHwbAUXkd6WhHnTbWdxTEr
	 ghuHA7TV3IM/tzrL4mR63pbXCGNI4IW+eys/YHI1nATi5kLmrBOclEeStFEeXx0tLK
	 drwwTECvGa2mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9046BCA100C
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175688519358.10440.9476966504192008825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c317c7b403aca30c4582592609d4acc6ee9a5ef0f777e2cbce0f8cd11164a3db
Date: Wed, 03 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756885193
