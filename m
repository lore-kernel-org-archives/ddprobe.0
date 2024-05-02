Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA963E49D
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 12:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714652543; cv=none; b=k57fcr8yf0aKl+EcVwlShr7wKJKapPYgf51fAkg4w0t/RSKsR9/ck/YqiJxl+QLUkg7TqIEic+RPKqspKqY/o2Y0hbk8nlhaUbHH2ozy8eXUsj1+aOV2flVbhOFVntYw+QbO4Ua49af/Xi93Erj0fwYnSGRdave1uv8lE1AEnak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714652543; c=relaxed/simple;
	bh=lSbtf/xJGsOv2SOcKv61YRkE/p23dxlWv8lljvxB60M=;
	h=To:Subject:From:Message-Id:Date; b=cS8dmN+nVy29VEsOQhEdl5XFjKvz2wdZULpoV3AoU4M3SoKN1aKIPCHZu2HN1uI7RU7fsXhp5BQP+bycVtQY8aevSbWWMgqXJqhJGzwSkn0tbBUf6uQ6YxoLnxJEMbwrMW3/SzFzyqoEFGACekq58HQkxTk3AbYEiLvOFXAlm3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVE0JX77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVE0JX77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A25C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714652542;
	bh=lSbtf/xJGsOv2SOcKv61YRkE/p23dxlWv8lljvxB60M=;
	h=To:Subject:From:Date:From;
	b=WVE0JX774kDCP5reEvRrXr+D4ldNjD7q5r97f5ztdc5msWMEBjQ+OdS1TQnkxw7/2
	 veV7if2rZ4qUzQGKmnRfXeuNHBBngTkAIbPLDAF/HWUgB+uyJ9VAoXzhyJtN9kTuvK
	 EJEQ0+TT7HuhRDMG6FqpEhRafIFzjK5DK+SeFwc4RuBtBdmFSIQdDVOE3PBuPCrpfb
	 QOexACP/Mq5U9jeJUHuRSumwCYx0j4xmvpNnQE4wvwhlQiPPdRNgUnozxnXMKoe8rw
	 ujNiOwS1PNb88egjNwhThirWUErkGKASUCgM0uw+hzrK1Y406xqotD0VESF44BSj7y
	 if0PGZQjMl/bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3127C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171465254279.11965.15217308542339627463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d06eecf6330000d4430a1e64c1812ad44871ba89372597ab71abffeaca8037
Date: Thu, 02 May 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714652542
