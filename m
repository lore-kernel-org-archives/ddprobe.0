Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A9E28DEE0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752689994; cv=none; b=ZElxCHMb/XTR5hkmFuWQDonOjeX9yOTKL5xhglPya6qcOrQ+NSakvGupA7QfmEwrFrKk1OtnaTjf7m8jmMcoXzW539wZAfYUWyjsrjkFMdA3RjFe00N4MsY+LRpneqRXvkJoXhbbQuk8fq5lqkVV/eEyE8rsFZh2pxwfiMSslvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752689994; c=relaxed/simple;
	bh=iHskvh/TbtDT8pi4vYNo3jF5acebYPV9MhAyEWuPgD8=;
	h=To:Subject:From:Message-Id:Date; b=iwj8MkVrd0DgB0DT1PH/x5MAWn9/lMNIpy5LO+mUxZOWhPA9bl83CyT5r4qOHi/+RlAqlScCe1cqBPORDTN14ZpGvPa7ja1JtEccBqcj5z7XO0K1SgPEa2FRxw0+Tsypcup4IQcHnAXrG0wlLCnoPTz4eheE7tlI4Tg8t0hT8ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRaX7OKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRaX7OKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC73C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752689993;
	bh=iHskvh/TbtDT8pi4vYNo3jF5acebYPV9MhAyEWuPgD8=;
	h=To:Subject:From:Date:From;
	b=HRaX7OKXtldFSh3hhE+/PJ2XYn9AJkcXkVdrBjwzP4mVSvMBU4+39o8Adk4KpOnUf
	 bEbYx0d4FeTgYhvpVkc4I46+rjjBMc3pY3LalTZpAgzKizHUErf8uNpfzXvUl+0vxH
	 UDlpcAsSq91wxj2rSOGjNccLfewg8lg4BI/SHgfIu65RyzsdauwZ8NfxrP54fXSNUC
	 7FST2SUM6KG24MR9oW6OTkXGxb71lu8EGY6e0rPGhGUVHN//K7RpYFalUDtjmQSshR
	 wTE5rcPg/YndCX8PvwbeZq4K6jNuwU2JdVxpqSMq3nvczGVHPAZjD3lyay/pskTyqn
	 hgAEdka9y/bJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBD2C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175268999357.16506.4384268627623171994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7e4b11b54ab0319f6e2d147940ec7639dc831893c00e72fbe764d9ddf849d5
Date: Wed, 16 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752689993
