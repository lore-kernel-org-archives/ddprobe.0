Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390E538382
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745293794; cv=none; b=BOaQpxOUCWMNlSvL80P12DHC3MkftcWHMFaLtvAJLdN5hs0z/g9tlTpm8sEk0z2IaHFn4tYm2rFBSxsjPB6p+ErxK8HcztD+ecNTrUrZGu1vkJlvDrzZBhDgJe+LUueDTj/FO/g9b8YjfqQBVdg3IuFmbj865FojAri5++LUeVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745293794; c=relaxed/simple;
	bh=qgNnCo1DL32UFY235pP9/34b+QsiXLXaKsO8R1tti1c=;
	h=To:Subject:From:Message-Id:Date; b=KJlteNoV4biqmWMu2J6RaqJbSyKzHNfUVdW+fzoj+eQMtiAtUbv9XlKCbHL+IrDc/h/QDAQL7APsC6cUGHmVRxcAdpkt5KXDQ/W0Q2FgSIKKYg2KiEtggCaGVpagN5wNd7+vOPlVwZqW1SKk39HFfnRv6Fq0Km0mbqxLYvhszUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsZdSVWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsZdSVWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0320C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745293793;
	bh=qgNnCo1DL32UFY235pP9/34b+QsiXLXaKsO8R1tti1c=;
	h=To:Subject:From:Date:From;
	b=NsZdSVWbgCdeKoRIul475N97jMp0kvNgpRT2DoDVB+5TXfiTxm5u+i/aa5tuGn7vy
	 igfE48HHdS8R3X9A4zIWmT0C/C8j2H2qeVyWMeu2kME9t5jTkVymD7IRU5o/H1qIdy
	 EqILYfulacC/lhrYPa+W8tK6tqhTXkbhNDfCvHxNTsOPTBoKTAXnn6pYxC1wCYR55Y
	 DLNIAeSKi+uxUyhkmaHcQA2GBAYcMskg2R6LBWqGGm7jsiqkOHNyjXlXx9xE6O82m+
	 CR+77Cxd9VquJng7UGwaNqC8t3GLPgAcfFkXDsq0KYiTkcAeFN2vbSPsA0I4X4vCGT
	 QQNZZ4nGARDMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ECEC369CB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174529379359.18620.13688014464447033476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b69e9ea5b56e2c9f2dc545d340724ed47a1dd31a4d9926ef229823b56683d5
Date: Tue, 22 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745293793
