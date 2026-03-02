Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC392C11C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772456094; cv=none; b=S3ThLbWe97ALkoZHhZJgW2XvKbNWGrqfrN0ZBS2NKBCY+8yQQi9j9i4mB8pK7Ek62X8qKiJet7V11Hex/iA9PkDzNDvW/TxPZPLVimnd0fWTJH2UUZREDUmaNnAgpYLu5UybOBVIqDI0wDcOLRLj0L2CoF8ciPYJXMWHPgi2KJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772456094; c=relaxed/simple;
	bh=e2Fdg2NbeJSjq+Wf9ju2bno73T8vGmsmMuYs9s+Q2mI=;
	h=To:Subject:From:Message-Id:Date; b=b4D1Fdh7MeE56DFC0bLmnXIVw7eqy97rr3SGCAm+yiU1MMCqMwteL2zIzAXRrJSOppqaV2qfyYsO66ju9mus+IsShagsMk7aQiolpDZv3O69OOd8TU2hOCls/iVHJIHqvhYZWwjIsOg2kRux+TvKUDi8UFJ6jPsMWFToWViKhRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoZRx6oV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoZRx6oV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC60C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772456093;
	bh=e2Fdg2NbeJSjq+Wf9ju2bno73T8vGmsmMuYs9s+Q2mI=;
	h=To:Subject:From:Date:From;
	b=aoZRx6oV/ynoBLzRZQsVtDiQ2Dwzpt1w/nq1KyCVRtv/Flv0QRcKL2Mt3J/ZBD2B3
	 Ub5Nxfa6SEpQrN8IIvYBnvqnmin3YgDQJUCfoVjsZYCaigPGgsO5ct+Zd+mf1ZNWt7
	 6oTVG/Od48/6Nfhm70g5P5RxZmYTXCm4nVth4bSTL5r05ppa3pMaju92Q2p2HAb/KW
	 a5ZJGh8W+5hvCECOk1TNIvOx9WoLwJkVZV8p3FHgNX8J1vey/Cq84T9ooGGhd3ppgm
	 LC2qeYfUN8x36bI8BrSQdtWhrRdavedLJAmUGKi1c8SvTf/SoqnCuo77M6xDgfCYyQ
	 SEd9t3HMolIxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C09E9B376
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177245609365.27663.8289765008981676554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5504fe5e26126c354a40e2d93d54d7a684d6f000532ffaac55e7cb22c3a8d6a
Date: Mon, 02 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772456093
