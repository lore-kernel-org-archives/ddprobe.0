Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5048D47A6B
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 08:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717750043; cv=none; b=KYAN5zTYi2MXCBAwArDQrpMnF0kXOHVmwz09IAwP5uJPpMfOSYW4wY3j+tAtP0E/AgdzrpGp2B0t9DlJxiq7fHUdIQK4nizjPtv+kqEPD3cGwGAclJtxyMm1706bwq+MKTynLuotrBoMh2kP4La6w4p5WfItTvAHhedEOghJyFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717750043; c=relaxed/simple;
	bh=sA9KUabldCJPqbvZBzErp58WdcpPQkd2m47BRlk5K2Y=;
	h=To:Subject:From:Message-Id:Date; b=RlUZrLVjs0+Y9yQdFmbVLkbhtFtZIPWOvaplG2nviZ4vosuHdcTPMGzr93cNiRXsFhJ1b/840qn5nbMIC99gODfkNXe2hGFc37EXN/iWkOQDw0a4zY+CnOc2Kc3qHsxEB5kuvqOAk/w60+BoeS86JvTm5U0LmUOHS3ffaob3P3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7gNreaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7gNreaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3CCC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 08:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717750042;
	bh=sA9KUabldCJPqbvZBzErp58WdcpPQkd2m47BRlk5K2Y=;
	h=To:Subject:From:Date:From;
	b=C7gNreaW9xGIQrpaBn6h351A0SfKUqG6vvKyulWfTOk1yrhnjmVogybCBJuJH18a8
	 ijc1ksC2VsXDPp0RfBtTmnt7UQs3USW+dgYuwOHLa874vw65mrhDokS7Dt16F2MO21
	 7lZwBV45ToUq/rK6ICY5frSSOSIEt2LzN1g3xkDYbAkuIeyFNXvGRrH/3RRyHZpalT
	 Xeb6fpKm2UCShnKwVh5JrPsvM6GfF+FRFrRvD9/xhJ89a0gx6cps1bwUtA4/iEB4se
	 ncS8+jPZ3jBLGuPjlaCZysQC4fBpW+6td0mucmILEtB6ViBePO/obKh7aWRsNTxpDn
	 eGi9ihuoJFmFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6087C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 08:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171775004279.23123.14627848118816487094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7888347095d3d140babf94dd9611e99e7eaf14c31bc162486718d5ec895aa308
Date: Fri, 07 Jun 2024 08:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717750042
