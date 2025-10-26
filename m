Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CF1481B1
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761498594; cv=none; b=dMaQ0sTBW89a5j/5Adf0iay4ZikkKKmW4L/UB3P9jR7DN5rrY2BYzw5zIHHbdi8yPtVc9UNgUfgzy1A0foDHNniIhCmR6cQ3/ASWUurOOGmoxydCe5OzGopjwyXb7DtKqXjmtHU1roFVn2vKKLPDaQCGgkhMCrzVBsaVD8mXzg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761498594; c=relaxed/simple;
	bh=TLS8Ui6Jyt4gKGE6nYYvt4pIUnt6BEJMgRLwPpOCrM8=;
	h=To:Subject:From:Message-Id:Date; b=p02yc/GugbAOzhIk3alqXkPTYrl++YBtn7GzeKyxCrW7azAMvKbgcIhHE15cI8Sz2Ee+r/H/mNlAPYtzkJptK5M9tdxm3wObMa5P34IdBLIpzB2edndiwL5bOyDX4mDa+x3+P2jH/Ka0UTuiaeseLhrXcY2TiTGvD/1I2gjgwPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcC77FGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcC77FGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ECDC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761498593;
	bh=TLS8Ui6Jyt4gKGE6nYYvt4pIUnt6BEJMgRLwPpOCrM8=;
	h=To:Subject:From:Date:From;
	b=kcC77FGDajkvwu+enpdFMYPtpeKuvSo467DbaSXbjhoIoOdA+3dygRuUlYvi8XB0l
	 /nCHlNxQIoCUwtxbLf4l7tBpOw3CNeGZmXNp19xDckUt/ZQKLROFYw9Z3k6iEkCm5/
	 hnIIEV0+EDjX03JdQdFH+Z0FVdm1f1A9J19fnxMwJhxIttDac00d3ue3QP0fxKZhS+
	 Ps4rpqsR1FlbL5Ppq/iJEpteeei21qCjX/PpG0YR6Fd7KQkjEJSJFSqINNYc3H8tvZ
	 j+ThsmGBNvBkimO+ueL2ShW4BhlmM61O5IFLtL6sENrrWOc6wkqQq9TxPZotn4Sr5y
	 tKby36gQIJX0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BE3CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176149859357.371.8777791798759460380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e7c9f82bc51a4f730e1916f82ca1cf287cf55d04a5e0026d16510772e4171e
Date: Sun, 26 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761498593
