Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF91B246BCD
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769461434; cv=none; b=EcLFLpCQnvbRSim0C2+X7Lz/HgBxofeKgisbpow2rV+cmqca9YMJuhnpJSFOioZVVo3j/2J7Uh0OuHRvy+AQU8TdHI+brDZFIIMHRfrQHFfqBAQNKKbGAnQ5J1hCf73otaJwRTIdNqDIW94/YsZ4z3wUiB0kHxffmH+XgaNkTBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769461434; c=relaxed/simple;
	bh=rTicolwActemQnoD7RyKw5h1tC3ztzOTAreb9WsXxp4=;
	h=To:Subject:From:Message-Id:Date; b=izdR5R1qGJeWBRo1JJgfJuff0+nQhGciy24yCDYZwFbhSS+LMRC6BFH9+vwamx5vkR8utqck/HjXdH/rnOpPpN3Sk+EPmVCFxHtMrF9h0IorRpaVG6Q1p50+EcsaY++aXZyrxs9LKrMOc2tnZJpk6MP8bwmh/VZx/F2Cy3vUMN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K869YcCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K869YcCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40FDC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769461433;
	bh=rTicolwActemQnoD7RyKw5h1tC3ztzOTAreb9WsXxp4=;
	h=To:Subject:From:Date:From;
	b=K869YcCTfbF2Ycdyr1XweIz2aU/QuTH3WxZhhzQaowls8FyQrZTstmkWw7sPt728n
	 gGZHBw4lgcjOVu0/yu0i916rdW/syNqJVvPraYjZaTQFaJLgEgiIuangoYwNZ6VAbV
	 Jf54nhmilnh64uUXdF84g5D7QHKQ0u/3Of+4sqWp4WCMfO1YbmDdwTimNgIb4VXHoR
	 VCr86D4NTx9oWfhL0PXElUrU8EPZykLB7jswk2ACYlf9vusGU52m+55c67g/ZSOyZr
	 Y5qg2nmWgjQUt6xBb2rnMANb4zHg+Y7hbu3zqYXLvgEf4MdWo4VL+PDcRQ5yLZHG3c
	 65LsA7whDMRcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96200D1951A
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176946143357.3959.9900782444376071033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9aebff5d78d166f96d11aa9a24b9c39507728d04be7ae0d2432ca4765ac4a4
Date: Mon, 26 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769461433
