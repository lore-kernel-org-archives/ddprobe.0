Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3562236E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761757194; cv=none; b=RgnIsA00LSHvevdOY7MTvJ6EJyLz++2lGdyNeXT11rZVzZOthWp65pkYC2JVP+WSNjVXC10IT9Zp4oSzMtimh5D7yS7AWnLqgSpFbkYZiyRiSb4CqG7pJF8o9iFtKrzDJKRT5EVqqhh2S5UO+0DyTjrXgvYWOxzfrKj57yDRSNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761757194; c=relaxed/simple;
	bh=6tyc9qRxnIJVK/cod41Y8MG0X2DaXkZS+gZPbBfwnFw=;
	h=To:Subject:From:Message-Id:Date; b=LJBzQuK78WNBLkmx0wOdJuQFLnk4vhHGjDlJDhSvcfb+hqILzkU5DHsAPplPGZOxfKQN6Pytg+6qTjnl44cNHn/75zVWVAYNY3BzcxSMUOtqaWuT/hdtG2t6BQyDuMPkUJ6Vehga+fnLARVFCLIDpoUlHkRZ2ejMSQzrc9n9Fw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/zclCMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/zclCMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDBEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761757193;
	bh=6tyc9qRxnIJVK/cod41Y8MG0X2DaXkZS+gZPbBfwnFw=;
	h=To:Subject:From:Date:From;
	b=X/zclCMJjfcMlPWKSGR2HqUV6gle1d09SieuiKfBssoGpEOgTCie2DIbP676ajNeX
	 s5+zOZq7iQkydAmWZvBQPc82yBd+p+EoPZV1nKRra/FXy0jtvpGlIayTFSvSnTKs98
	 BwUgJ17Ah/m1meKbQVZG/4mldLeNT1BHghoSMeyiyXh/dUqAYWlCTpbiR4jrj44YyJ
	 HNm+LYBlKPqARni+aerJvhEz894qQaHmyHFOkfHmWzoGkjrEi7kbl5KBD4BKw+rdQR
	 5V6EukEONP5AFBGT/+tpR3MuOFP1DjUANOFlimK8Q6nkANX25t2mhc2NdccndB475H
	 DYw324wC1WE5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F85ACCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176175719357.14304.18377779520889455202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0700c93b1776828bcab6afac2c1593a41343cdc5ad578f43a27665cc2e8343
Date: Wed, 29 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761757193
