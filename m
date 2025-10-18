Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F557354AC1
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760825394; cv=none; b=ZX53v0bIn2ArFNEU9QicomZJpGRJwRXVzFeJAn4kv21JKf3SDwlE6153YVNf/asyIUGn4ZvAF9FytkJ1TLJP0INqbslHsHiN/XOcPYgbTV2XoF9QBwnAoKtWBHo7KTha5UvKz42aFi9pZ4XSNiengoopG87gC6OJGn6CWmpjKq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760825394; c=relaxed/simple;
	bh=iQ/MHRXTZkMZQhwkMLGj5r/9996pOAosB8YZILcBvVo=;
	h=To:Subject:From:Message-Id:Date; b=Rtwe6slP1N358WkNi1qxnhbkcrInKXB9R2mFo+a/sFA24TsGWMF9h0FPahTbKudlJiZMW3s9t4DpODpbppS4n5yRX7VPpzD0rsJ2XnOm29vNgZY1CNamjcgI0lch2j6m7nOGa87uKOCMJAOOTzJ9TR6K048+mF2FSlalJWQRAKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZiCd1Sj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZiCd1Sj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA94CC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760825393;
	bh=iQ/MHRXTZkMZQhwkMLGj5r/9996pOAosB8YZILcBvVo=;
	h=To:Subject:From:Date:From;
	b=hZiCd1SjWThkDzHLgPUrFO4gIG5p4LtLGjNhh9FvF3iyHRWgJ/HfhOGU6p3eTZ4zV
	 I8x/ScIWiysavDBRDUBl0MUx7uAAE7Y8tpe6RBz5G5YY0lVIyPMm6WuBEVmzKH3RH8
	 kDM28beM4F/gQp2AB9KDTcwVdaJZzE2XeVoIQOtLC3OcMg8sSB80jw0v7kqKbNsBoy
	 DvK0EVC7zj8FmklMwRHuqLK6Qlda6Nbb2wistFxt1mpwXiaHmFSwRQtLVxdbf8EbPp
	 KxtqNveLNyTz7EyJfwcRXx/duQf7cNLR+Uaxv+yqfozZjJaVJv+QuCBRKu1wPTLROv
	 WxorSK982ayIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9818DCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176082539360.20687.10694225464527859604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfeb80b6bcbd41a8273117b19f3e8cb1209c4db2380070c6270030876b841a06
Date: Sat, 18 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760825393
