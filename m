Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CB03A168C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787557834; cv=none; b=aopyJ14q9y4C9lGxFJ6ojqiXROwsNxjC3kkN6OBn4khWIwfbEvDqDjARDIkuPAWQUClWON2I6i1Ik5yK9DfRekjYCEGy7AjpmTgppaljWVBn47P3bBmzPFvpTldqGkClx9Z39qIuHBXDepb/6oUxK72MUCApOF8voi5e+8UZiPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787557834; c=relaxed/simple;
	bh=F6Dh6k36Xdrerf0q2usQgvaiB1Gp+exCBvBV8MmhSwc=;
	h=To:Subject:From:Message-Id:Date; b=HkQEWkkRsBV+WnNu0BOS1ThYzBtbWHBRn1cSRKp2PH9Udzzn0KbLyhIe2ofUzLKDJGigNibmPBghMilMDKV4MMts5dEkJO6pju/ejt3tBYWvIMM4I1eqF3vY7beuhgpXO5Ca45XOtZAlJSHYDxKkCeKHyFucnpnVAb7/oW2u1To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKYmhZvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKYmhZvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6891C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787557833;
	bh=F6Dh6k36Xdrerf0q2usQgvaiB1Gp+exCBvBV8MmhSwc=;
	h=To:Subject:From:Date:From;
	b=tKYmhZvMbvLEt5Dn5X4LKVGWjI8c0XOTVZwYP0CeYgw1bSeX42JtgjN0IUuDddukP
	 rv2DBBJKvHo95qcj2BVZ12DEsSoNzNkoieloxF/wiPbdeh/kKoRi9tmxRNBGr7230d
	 DE9dypTjqBy2V8fSR+xm3ml2nTVxjyRCE8NrSJSxx7CfSgnSgOEJPVc70X1U1x8jVi
	 ZJRHO2yDr5MBZ2xfyCXRcWXU6f72kCEQxQ9yq/HBy6RhHmToBWMJKOFbpd4smrKwsE
	 2VJ+Uh99GN7oO99p0iwBAD/VNTBtv/wSWTcPNmJtFKB6wU4EO2ihWYar/brwviu49g
	 BlkJlz1Bo8zDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF4AC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178755783369.13060.2254331683446214374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d63db43ceb613a9f21611dcc22e24351fa5b54ebe8a95d115ce7456ca8b0625
Date: Mon, 24 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787557833
