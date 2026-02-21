Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2732D2571B0
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771715094; cv=none; b=pwaVZxmlWncvgAH8i0J7AmONpzwAIRO6c/jWlWQy3l49e2hPyagiIf4rV3AY/qyZvn5T0W3rErgFBFg/QV1/6M7FYH6jYzCRMadYUag69IXXAazQaWW6WuTUbFcakQhgLBCN9PNFAP/6Sy7i0B+rdmrtFz4sJ07VkdNbjgX0D1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771715094; c=relaxed/simple;
	bh=kRKmp2SsjR+9SJAynM+OzkCeL41S7WGfWX00WHQjHM4=;
	h=To:Subject:From:Message-Id:Date; b=nvksWablTMckcklNJVAY5rM9Dm/DdRrT7kHk2Rg4XnE07vuMdVfO0asmJ6GKf0cybtSDVcAyLlE0D2S3b/oh06cuSqWgvVfWwf9bmiYi1TrXOrpx9xkAjUVv4fQc6GBpVgzvLYfxBUTgtco4cncnSDWQo5cBRUD1CUv1MpRXMkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0IrZnyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0IrZnyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F40C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771715093;
	bh=kRKmp2SsjR+9SJAynM+OzkCeL41S7WGfWX00WHQjHM4=;
	h=To:Subject:From:Date:From;
	b=D0IrZnyRTtr0W2RFvYEpzL3iRBJ/rXq4Au9Zn1WVFMB/WPRi4Swde2mStuY/wBpRa
	 IcOvoeH3FQSJLUH/V03QLiquhBIDK+mRF4kayl/mdJuzEnF1VlWsNE3rQym3F4FvwE
	 NFIxnbC+QOQ5r6scXyIL9b7YCURt2lQHxhpXNA2YHNQRP2Kq5gZJ7v9tWGKOp4U6cj
	 Wb3sIws2/Cgh5t+snxVfdVWRJY+p1oANkwm/aWpw+pZEvlUCOc2DPNMaiapuNqGF6U
	 m+nDLdhF3RNNDb7mSFQ4aU9N7wfIEibMuUZbc9DoNp12BpnRhU8K3dq+ZcGeLNr5mK
	 DDCZfeCt5zcIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BDEC624A0
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177171509359.24660.974130030698051866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2adba4bc62df642f9d14a7d0ff9d01ad3ce51154a274582efb5607057320f2f
Date: Sat, 21 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771715093
