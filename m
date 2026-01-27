Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACBE23AB90
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769477034; cv=none; b=lYpl3rUMb57o8lwfLSmWfxkgOHm3VgiXiBE0AXzpiFowVzCE3HPBNgxBIfoxqq6VND+AHVVWfsoYaefQXzaT0LvtyWjc2EGCRr8lSNAb4jQREdH5qr6dsLFIVlDFJPVDVM+igGIlWt/6wTVc3uj/zOaJ6sUM6xs+g2liDB0mYzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769477034; c=relaxed/simple;
	bh=RWa735cGvmvEHP0JJUKTGE0ucCCcG0u5FQXFVMzAKJE=;
	h=To:Subject:From:Message-Id:Date; b=CJIf/wBC2KjFL30nO1yufJg6YDikpUBUp55F+mXhxnkX0UaPRsKXfRVK6+jWTvHlCPXNemrTtrT/N2IPY8Apd5Y0dp5xqcjMPRTsefF5FNHZdVcB1mD1w7lct97LbwWOdwOt/yT0V6XsSzR6cwwGUGF2e9KT+q2b176EqJfQrlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwtOJteS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwtOJteS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7610C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769477033;
	bh=RWa735cGvmvEHP0JJUKTGE0ucCCcG0u5FQXFVMzAKJE=;
	h=To:Subject:From:Date:From;
	b=KwtOJteStTLS0FApHk+M+OtIKqpoVDGaM96fca5o829d0BkZ1uf1dNa4+YjZaF5x9
	 e8lUbBvVcSBLo6iOhjcXBpqV484kxy/LQk+889x5YYy4gXLvfzWJZ7/ywsMaP0YhIa
	 27Iu35OEBZFaCp9RqbkexNITNSIJQKb471D3+/gWd9vg7MpBzFfdKGmpIxgvRRJCwR
	 uKcTKEE9AeD9/URW/IEiIseoY4GBp8L+smQWOJCb5vUYaDrXgy8lB1ddCJazaBSllk
	 IXW5d+Zlx2K0JcXeBsUjjW4YdmLS3rvcWi/gGey+5Cy2RGHTtbg1TM04wrr/zaTv/a
	 sBCJ2KRCkyOtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F6ED19512
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176947703358.19606.4138902907546647453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf66dc55e37fb768c5bd549974061cc2788bc3828f0ca8164297dc69eb25df3
Date: Tue, 27 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769477033
