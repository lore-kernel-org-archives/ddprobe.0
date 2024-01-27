Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B47CC11CA9
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706354296; cv=none; b=M6M7zNYj6vNp9EqvpRo6U3D3oWgqicxDLvi8XlbJitjWPsrS6TnbNlQglK5/z1o2qLoNZb9Z6BPYlU2d9YUgq1cSnLhJEBImEhrO8unjfmU+1VcvBoSjZWXHB9cwEF2+DVYv8fvA7B0rVfD4tHyEf04iJgMchCSnMMIdeeT3MSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706354296; c=relaxed/simple;
	bh=IbX1W6/tYPbpgi9EpeMTbjBw85OfGE8qyw7mU+h26mw=;
	h=To:Subject:From:Message-Id:Date; b=oUtrCipI0FicHZnFcsNrGy9MFH/KXKg+l7wNrfeUS1DjanMU1LiZkNv3oxq/2eo/ms7t7clIdAm7NqrVZbJCBxDiTKO/GSpdkSzOizZEly/Ms/ojoc4ZplnK/AKz68DAe7xRmGjX2zVWrgElu48P0axB7vR05wF3fH34JhH5frI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2mdZqOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2mdZqOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78284C433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706354296;
	bh=IbX1W6/tYPbpgi9EpeMTbjBw85OfGE8qyw7mU+h26mw=;
	h=To:Subject:From:Date:From;
	b=Z2mdZqOJFhtTY5/cgGTv2wQgtaMmTqHs46sUGYJgIUm4u7NA4gplXZPBaYGaik1bp
	 8a4TiBDfjb5PCFpCO0w2RVjEJowOPo3klJS6ayuwlPGXkuccWiKjUIvD0Hd3rHyRRA
	 jd8iL/UuADN+haMz/+qM2oLUsazCKG9p4H899qbx+Yd8bPeYWVaW1/MGCDxAlaw4vn
	 YTOJQHn/ZNGnuxlyHrjQwxPKsxGex7q+gJJLZhXMhogm2Pgyr2JKc8G9AbRn3hrrmT
	 JpOSsW7Lq5o/1XA5ONxfSY9M8DxhW60hhzGFhh96Ih0Itkwrj4Kf4RNbtpcb84DzTT
	 XCAtAULAnxUsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D04BC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170635429637.27474.10750302060454558220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42759d8d55170b0da7502fd9e1f4021f8489b6b3191471249aed34363eed5d9f
Date: Sat, 27 Jan 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706354296
