Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187F833554F
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776371254; cv=none; b=rfyQVzum4n9sIKv7Xc0AuUkI66RhWH9pZcXFZvu1m6GszIUv4IDgjZKQR3KxoXYVueB8iXMySSWNbTnluX5ZgLCTqklFTmIPfzco263cjUJ591PXT8a4ddq9xSWgeJhqdkZC3QrpkZXTFAg4Gkxo5nnKhNg2YQs6Rzpow8CiI0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776371254; c=relaxed/simple;
	bh=52Yz4i4bkZ6vo5ugaQdIuznI1TrJbD4+4F+A7djgW1E=;
	h=To:Subject:From:Message-Id:Date; b=fdIuK4esloi01GurXYQ410clBNeHtu9JxRh1ep1GoLSSu1UHGJSlru4Znzls0OGC8ArGX8HOfGeil5dvhk9XhKfn/8H+Rku1LZJZtGLjmJnG1M7U7Io7Cw6U8eJZTEvKRt0KdX86f/oUYykCsh26VBc4f3SlXFwdDO9mtwh7yuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVWbPajj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVWbPajj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF37C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776371253;
	bh=52Yz4i4bkZ6vo5ugaQdIuznI1TrJbD4+4F+A7djgW1E=;
	h=To:Subject:From:Date:From;
	b=uVWbPajj3jJVIOudxHe/swMBsHmDkntXRmPWaiIghbDPAkCQDUjYY7YhZLiIa75xS
	 BtnCtRzkH0dFit8t6lsehHGX9aJ4haMLrdzTnxhZ4Sh8Sz7UvIEyCtVMWJNqusrAUR
	 yhe4D+NukRXYkJsG3E1M/o+WbNwsh12PiDDba5mjiUqOqPrwFlUPq7HMn0zpLVAm4Z
	 +s2BmSwmGqwpUlMF3rqnNn8enTBwGq7i95ZLp7d91TV3o56Q6JS7GQIvat6p2/yfWa
	 5PCAFZiqPgFrNd3J2PTxFsxBDiXtOxC8HxmJjsuGoywhFPqfNg2oA5Y/RBy29gSN5p
	 QzUMkzNtTq4Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA66CF8D779
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177637125369.10045.12119769115687849614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6fea108c5e2120b203d02c6a3ab6512c19cbd3a349d631871b1af55ea33cdb
Date: Thu, 16 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776371253
