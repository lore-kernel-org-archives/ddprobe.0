Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281042F5A32
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760958594; cv=none; b=C3VGXDQKkCVo2XbecjZhs5o2kUVM9fxFPpJkjyPxyj+ZLXG7kTNWVZKVxdwrzfYuXSzD2fuYEvTStNS/AQbB8EW7ELrXxx/t0iFAQOWcl/MRAlTyD6QZrqwv1tOBWgAB90gTfqxEtLsFrZCQbJmarFNgIhTdX+JHKieE8+WX3uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760958594; c=relaxed/simple;
	bh=DUxIwY0S+9H46EzuPz+nl4+7LmXeVl5JiOvgGxEL/18=;
	h=To:Subject:From:Message-Id:Date; b=bjZr+ytQ0lBcD4TXfSj5c0O/hgX/tobglYly0jaRNQ5w55J8CzK/FwCoLeR1tYsTk+7tLQY3/L+xcfQzDBvrfwu6eSmJ1rkEZwpEuET8miGhrEvMPQLuDlFQSshSDZeVL23ZaptDvxv3x838w3Rs2s8t9/5Av33fYwwTELBaU4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eb7tLtlf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eb7tLtlf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D92DC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760958593;
	bh=DUxIwY0S+9H46EzuPz+nl4+7LmXeVl5JiOvgGxEL/18=;
	h=To:Subject:From:Date:From;
	b=eb7tLtlffNjBz9854noOUmsmrNx3STxp6pys6IweMgfI8zjb9qrJWZJkV55t887sK
	 6G5z/YPtIorweKrV6nWCltjscmg2hfTcCajiCkgpgpKTF+Ymu1VPNuoh7JH2bTEQ/y
	 uFhe/P4SnuYDQRt/szRRr0TjTV8dsx/7j9PDkB8RgAPpJRDhsdYR0VE6goqqRB3wgg
	 BRbn+jbhRSE3SKvNDm0UNZf2na652VdXkbYRWOWGRixJhngnyorCmlaFanlkmZFhdH
	 GtaNErC4nakI1OPBXPAnZ1bsEC8CCIyHXHk20uUdTEf0rPX3HVe/UuA6Ea1g+jjml9
	 Dh3KWLPpkzsqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC67CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176095859357.5956.8132332738368976216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 547acec8fff4d8b66c85028788aef3d59bdba98840334f32010561e0c6f564c8
Date: Mon, 20 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760958593
