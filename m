Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB3B3346BA
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760638194; cv=none; b=RZ1NYJitQGqV5oivLVHnEH52uxORdTei4Aw3OE4f0D1oe+uxWo1S3a0wgxxZOQMEYGpmW70q1O0B4n9ZRbVi8LFkVk6JwAD8DXvC2/mFIoggZUFkW9NiQR8csck88vcNPoZhDw2EI2eIoiNfmMm21Nxn6+dPAbYAnDBvIIOjLrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760638194; c=relaxed/simple;
	bh=8i8LV+Ag84/hLHPmjezZUXdOX4aJdTsdly/x/taSPSM=;
	h=To:Subject:From:Message-Id:Date; b=Z9FRdQUF3QaVLt3luvGmB1Pn9P80wtKeNlEKMb4zs5HaNClg2IbRSlVinOQxTLe2+d+ETFSZK6gKkTIDArst/UUZq7MU6Y0HDiW5Src0+678nLG3UI4pv/gFaAU6zmqGbuff5kYl6avmPrH4zBTlmv32usjavK6O2ea2OUAaqkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhz+bk+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhz+bk+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE76C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760638193;
	bh=8i8LV+Ag84/hLHPmjezZUXdOX4aJdTsdly/x/taSPSM=;
	h=To:Subject:From:Date:From;
	b=rhz+bk+vdKrsit39eiq/DplLZr0jz47CNxpoaXn1Pn8RQXdOCM7soVD+YD6R81e9L
	 xdLsfReaELcYPr6nU90jr5vj4P5FYTE18oS072Myu5dmhAQTAGRsr2oNSQ/M0oTJdz
	 zxkjTpSE+e9eyC5RFTP48zlUs2dPbNZRl9zHB1Esz6gHsEu6yfP6wKiSkueWcB6avi
	 eZzV6yMFpCSxUNfC22EYEH2KcuLVu/0g/WhFqAe8SfttA0GEx84vbknozrOEY27ZYB
	 OTsBgtUfD2xQphjS5jdxDkBjgIU6Suv+3k0AI0D3E8E868W8eLMaH0WSew/Xf/gXZ+
	 KGYEQdEpceHzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC93CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176063819358.5368.11422965294981085752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e549526d617edc790e1906f1c43c0029814ed4e28c13c413136511d453689f
Date: Thu, 16 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760638193
