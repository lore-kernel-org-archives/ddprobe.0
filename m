Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B1317D2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765153974; cv=none; b=DnR55j7b9xRf3jvqGFVAcDol1PwMm/3OiIPl7sR+c3eYRU6oYmwrHWIL637+pcVoO55qpUL1jWRbrd1JzVMP4kdLgxdAibmM/2IPqv2ILoR+uxuOh744lKwgWJqL5OFhjmmRbUXLZVApCEjiBuqc6RsmnOlI3rurN8ujUpbU+ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765153974; c=relaxed/simple;
	bh=2xh1wUvAW4Hg7fpoFO69Vxs1UJMDizHkuHikXlGDsmk=;
	h=To:Subject:From:Message-Id:Date; b=VxCPvL44lh6xKw6kYJnDtM2Cr0MX7sxh4+WElPy7gu/Rz1mwQkrv26/+P7dtvRYXHP86MB6Ok4FNwR+0U8IKzHlJfQ65YlFsAkmzRI17kxEQ9bpdcJPvTnVSCnvlfLTZmJLvinF3ZM2XziCnR5dxyUVnd/KMexvy/NmLou4/AP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCG20G67; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCG20G67"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50BAC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765153973;
	bh=2xh1wUvAW4Hg7fpoFO69Vxs1UJMDizHkuHikXlGDsmk=;
	h=To:Subject:From:Date:From;
	b=cCG20G674Y7rcsN9tSw85SLaJrJSO/B+vToVrDnz54e9WmmZcsoY97RkhtAV4w86p
	 ok87VgrauTgQmlXtuyWxkrxkaq8NXDIwolkM7aTXfy99sOg1cMMFZloD8yYQJpw0hL
	 xwhf6PhkFs+AHtuyF9RjzACij5Fekx9qDXzjlLvtZ4zaTDvBUTSe6oI1LMG5LJ6SfQ
	 rnp7Gy864u5CNfEc83nUP3jzVeUa06Mh06AJzjDOJ9VcIylMbvs8kNQdW77uH6iA0z
	 nNyKIVoRfvVxSaYxoX2t7vguspXwe70Olr1o61r98CS9yDQE1af1vA7mfq7z1HTiVV
	 ImRgok0o0hGVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9060DD1CDC6
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176515397358.24835.6078160453059424570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2432242cc43ad13173394955e123898b443b40d6637e46116fd231bde19ecb31
Date: Mon, 08 Dec 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765153973
