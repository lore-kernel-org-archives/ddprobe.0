Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D65198E91
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759197594; cv=none; b=EXl94rgyoEgxwu4iflo788cPwfMgXHuLFJQyYw+rZq//OcQqeypNPVzWBF+A8Z1p7fcvNo66CqldWNuzSwcPnLiTeHph3JKotIY8u6CrT6cEacK+FJNgRkxyMi08gkIJGL1q+72l1zIAenTEf5VmdyUDzvlyYpSKddOG7Y0zk98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759197594; c=relaxed/simple;
	bh=oLlMfFjeg5o59Ycq4c99lRpBFDlKbcW8Zz0MsT8spOk=;
	h=To:Subject:From:Message-Id:Date; b=ryIX0X56a0JbSVF9gjmXfM10SyrfOfcAN91CE7BHQTB3jbMr6oyYXN1LjTKDMkgir8qiL9pqnr6Yq7eLDiwgd5FIlm/fJEn6+R5766MpbLzmkZZxW30SdCtgbvALoAs+Bic8qXHFw7wqU+p9TB0uZq3nMUBmACEPYZhaRSTLcOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1nwIFqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1nwIFqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07FCC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759197593;
	bh=oLlMfFjeg5o59Ycq4c99lRpBFDlKbcW8Zz0MsT8spOk=;
	h=To:Subject:From:Date:From;
	b=e1nwIFqTxSriHRF1BaAJDvn2nAkITDOAquuQx3EmJJlCn7Ad3Jv4D3AjrHQp08jVX
	 CuamMDaLfr8yD01jX06vRUQOAiQ5Sib9uwDe3XUAqV4CCslv6bH3Q502CGcqrQjag+
	 kAvUoNf7cMVbva+HWOUmf7r8OqReYIXw+ITIH1S9P88NLZ70BCrKxyvSKSHaNCyQiS
	 9+LTXhX1iV0mjWLsvfbOuzkUVAT4Bpz/V4F9WHcu6mqCj6fqJBcYJO8QmTPBMZQa35
	 LiTLj9B8fjTVAXoVT7WmfDTZ3kN6QZ20J8WiltKKhkfmbP3rXDcc2bDj+XdOgNVAAV
	 QfSUoR8o5gmoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90225CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175919759358.6618.7071733915365077780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65bb0b8cf2cf5257b5fc20167b195a935df1e34e1b4967f931763b14517c75a
Date: Tue, 30 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759197593
