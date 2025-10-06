Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFBA191493
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759719594; cv=none; b=PR6DfNo7/5i8+wtLmP5T0Jknnc/Mztvg/iwZpSKdngPOOSkhMPyfNgic45jCBkAJzIH801PL8wgJbs5qYpy7xtoky6e6hVi1FrnCZ0zp8+Jz/x0m4SB4B6JLh8/XVvfdxV//bEKQV/CSQcaqZH+YWQ3zFZenhDfWE+BA/kvTncw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759719594; c=relaxed/simple;
	bh=gWenQU0b2vw9LgZJvq2if5O8Hx4c/OYmuxDDyMLyJps=;
	h=To:Subject:From:Message-Id:Date; b=W7HkD/EcJ6PLAJo2V0lDhmYY69adqsJvKQ0guBI7G/SgH5eUvtGz0xCnpxrmoSCm5skCNFOpXJaIGcsRZmt1tySn/FgwCCtdEpajgfYJnuCNDwR6A/TINYvBAqFu8hq2NOK3P4noc0CYMIW4NDeYa3BxggYQjOGLgkTep5DhiDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExHXj/FH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExHXj/FH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B00C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759719593;
	bh=gWenQU0b2vw9LgZJvq2if5O8Hx4c/OYmuxDDyMLyJps=;
	h=To:Subject:From:Date:From;
	b=ExHXj/FHjmU6JWjCvp7YFdBtbcCRGh0QJxOO5ZFLf5t0TzRaSETuUdYG7RtG5uq+m
	 FFVSQ2q0bZpuYlocNOlt1+EXg+/3jIpUOUP9jnqufkKXE5Jqzr/OGnLiNOmmzqaPu4
	 RrceHZ9MHMJebhqPUZy0M/ohcWCb801gQh3d0WqKfn7ONUQRTiL32y3U8U8rr7mpmT
	 RgpS7uNxchEBxp8NtWD1rhXf3QaLGEt6Q2ve2cHBm54ZzM045r0MLgsfq2I3hNeuAe
	 awkv/wE0QOEyE0fI/Y9l7KmpToadSG3rpAQZtgyvQlpiEdtiq6fODKQvunJi0lH+8g
	 ZGHr9j4H2lfBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929D4CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175971959357.31622.6989087731754517908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91b1aef668b710618483e6fdf5ee48d5d37df6394087adfc2a33f508823c86c4
Date: Mon, 06 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759719593
