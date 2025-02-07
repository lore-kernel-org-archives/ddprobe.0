Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D231624C3
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738928755; cv=none; b=hGx8nUBsesr89rPSgsgq1lp+huAykXqUSL/k6wLm8lwtEDysx8yrSfzLdXJWRHyxq4f0Pwy3lO1/6raKryQStOKeH6r9y5Eb00ii/Ns1xHiB+tQ/GCCKgiyatIPA9Z6yjitnkaIEpfFRYLVBxj5jK5rQMrQIGCVURkBMJBdNhmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738928755; c=relaxed/simple;
	bh=RUyXBs3LZQiedEswiJIn3OXVVBKJ88IQrCuMFIKSw5k=;
	h=To:Subject:From:Message-Id:Date; b=tuEM48YBFnrIO17mS5rCHEjtz75jOPU2OEzDirDHoHt6VtYKAVp+PNaWQTlV7f/m9FFokavycaoVbbMlWH2r2+6Ud9u1NqwFAje/0kGumVI+vJLiNWp3FUpxL97m7eRJX8RA6JBYOuGGU+0cwHaGeiWMUEuNLiAc1wJs48jB8AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JB8WUmsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JB8WUmsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CFCC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738928753;
	bh=RUyXBs3LZQiedEswiJIn3OXVVBKJ88IQrCuMFIKSw5k=;
	h=To:Subject:From:Date:From;
	b=JB8WUmskLQyJcBxY9kTGL3VU39UvFASc6tT4YDAvF7mhrKAn1z4AmNem9p9YqEir8
	 B/M+p6Z7vVXh2vzTkW5lPcB17D1cefQKfPmn94MDbF1WN99cCDvrx1Q8kIumoX+BfF
	 hHxX9HE3yCGwgjVRZM51Q36trVzSlBqP8H0oLQlxLFLO8ox/hkZ0ogLOd189idwwmu
	 jixyOpSVPqXZ8Ye9Wh8DuuvuFnnQsLYhTP8P+TI6EXTJFYm4g/Wyuz/TEjQwqSb81D
	 5CYB/3Hk4S70HUIzh8A78HYYCRIdhY+niK1Pjb2+09e+VqFmUUfMlRC41URz9r5Fnl
	 O5Zw65Vb85O6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CADC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173892875370.6774.12854220266867742255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 170143385cae28748d6b81813ee670515d3cbcc6d854cf5b642dc78da6fe2152
Date: Fri, 07 Feb 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738928753
