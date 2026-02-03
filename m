Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411A73101C2
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770086034; cv=none; b=BQVy4JjMC4sWBlKg+2TakzjE0TT0wl2wa+OysmgTdcQjkSaPXGMGsKgdYgVkZ504R9qR0r1dGnQxXXa2bI2FHFQrMsaAk91ze+RJSle96TxDCJeAzMf3ci4sF28b/scBzOLydgapEIxN6wlx1zJE7zNH4DR41KxeqGpMrZ2bOUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770086034; c=relaxed/simple;
	bh=lAZVfg878ZLjZQ03K3uZUtYmb1+9DpUzfspKXi5Xy38=;
	h=To:Subject:From:Message-Id:Date; b=dQLuEABAhyBckwnx34AGN2dm7huZyEoH9fVKADzM+vlwqV1caurEyiPWs9bnQj3EISf8rW52GZsOvgzRHMBz9NTl9xol49+rEXvvGwGlxtY/S9LWueAkT8A7SQTx3g5LhVOa4TPtzlh2tbDRT0R6UVPE6HURiY1jsAmhGCnnt3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2PyTAEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2PyTAEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55F0C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770086033;
	bh=lAZVfg878ZLjZQ03K3uZUtYmb1+9DpUzfspKXi5Xy38=;
	h=To:Subject:From:Date:From;
	b=o2PyTAEjnokQG/zD02oEFgtTieH7zP1kc7FoLPFfu4Lgk19kj2vHdNO/DGLZ9wwWV
	 i0Ih5h4f/WMjqfDspAaJqu8lnbdj87Gbcu5H8URB/UXqaSCD8pLeHyk/2iB6Tqgzcs
	 EGsLfUSSLT83DdJMz4LHISbrGk76FXWUgn/BYKqB5zkAWSTMs5R14tASu8iMM8uZqn
	 SZTkVSpKb69lhXDfDUWlm1xvNK7kha/BlisUrscggIN5LpF+3U3nBXt/uYXrmWn6C+
	 sHvM6JXrj/Sdc4EiCjTeaBwCj5PEujYPiWVYQ7WauGjBrnqpkwKK1Zgg/y+++aFwEB
	 t1LD4xwolWAZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F03FE83041
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177008603361.9501.9818684253792676156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b60243ce422ac36ae53539e4c807acf98a75859d9bf95748b317ee1c214d0a
Date: Tue, 03 Feb 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770086033
