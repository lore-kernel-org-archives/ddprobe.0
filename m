Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E403E2576F
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708264097; cv=none; b=WTWbxRhHzM2a5gjgGyVIFpdY26nyhW+fyfv5NKSnIMnXLCwKetqP3+h/p9QMpZBQHd5RLAWkhRaeIXWWrEipZllOGe8rQI5Pgc0hTkPvVwIGFF1yYvww58iINjbsbv8rencNMY4aQ6RW69Jx9qqNKuDzWyer81grn5VBJfMYfVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708264097; c=relaxed/simple;
	bh=3De343HWxwfpbP4hJ1aOKeoSL6D6bJqrudWakKJu398=;
	h=To:Subject:From:Message-Id:Date; b=IzfnkoI6CQ/Tx5srGJiLXU85GJqWheGCCq1JhTkkB1KB3udks8uP2rZF23eM2KKL04ntnZs8f4m2lvknXAy2+E+1kXWeCmY0xWtSKO+62j6us9vWsdYgE99eST/dzq5tzw8KSQWaMzrajsanTJqPOrl/8uCiM1lRVYlanpTAOPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuEGrpOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuEGrpOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A39C433F1
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708264096;
	bh=3De343HWxwfpbP4hJ1aOKeoSL6D6bJqrudWakKJu398=;
	h=To:Subject:From:Date:From;
	b=EuEGrpOvHCSM0UKDi8+wB50OebQn4w+AxvqO0F7OXnmQE+cw3VA/+G7vW4nSj+2ms
	 XlJu/p1KntQWnSRZeiSg7xmyFO7CnltILwTlQhBkuSTGpOdTzNiCtN4DbakOpJjrwP
	 rflfXh/oXuHhW8NQsHbOcn3hcMpNYX0ahF+/EaX8Nv5o7Jwosn94AZWuDPCT0ynZOv
	 WeCxsaXErIicPjabSlWYQD4bEL0tANuCjHdslV8BPKAQZyvhF02NV92rRL4zVDpUyw
	 MbLthnnk9bvXv8YiwHhwjDRQWGUALucz4RfFZGlN/TEtmrBTsE9fm2SF5mQJa02g6L
	 /MHxhnaMgoJNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C67DC48BF6
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170826409637.18108.4208776427829469841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc26535d75bd2042a375872d337b1abbcf1cf4707b42adb0031921e319110205
Date: Sun, 18 Feb 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708264096
