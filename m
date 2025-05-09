Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F72828EA68
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746785394; cv=none; b=ERrSqsLPhaSifi29fisyZ6kvXzFDYJ5B+kL+EudAm+6LOuSD/ZkSC31NQM+DVvE/9/p0VzhxsKchvzfgrU6nv0xTUHRNRlfZXwOaLwmHkyl7nljqU+JLSG0mUiUpxy53H3xtYRH9Oly+AKkN+Z35nMvTMK62jKT/XpVIFpEn3MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746785394; c=relaxed/simple;
	bh=1w/z4vRhUVXctfOY9m4LJ5+FsmYg6nYOZcHC/iLAPck=;
	h=To:Subject:From:Message-Id:Date; b=Z1QNVe3JUqx+vX0+t41RieGuBzY1ocQyyZaGvBNXX7G2kOSMgXH2mvSuIFDJ41cGh/Lq+FFrUu0971mxaAG8OIvMw7G5K7XYYHkuWLufmEcCuiyLWZKZQyGPNgmVXA3JE6twUOW7MO3/d+4k9DRZPpTxZitlc3EupltyB4Hh+8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGku9gOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGku9gOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A118AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746785393;
	bh=1w/z4vRhUVXctfOY9m4LJ5+FsmYg6nYOZcHC/iLAPck=;
	h=To:Subject:From:Date:From;
	b=rGku9gOCGk9jArFcE68k8t4YkdoqD76ETU6KfDXRNycPMLKiaI9G94w0yCeHBjCJl
	 jq163U5l1OVOPRcQdz3kTTB5qQ7hycMTEQgScrve1MuB5Z+Ix7/WIIvMm4/89W5HiF
	 DOuWni+4W2+JwCz2ZjYegMB+tpQH3HMIQVgh4x1D/Trt7FQAJMxGH2i38zjBa7LpPw
	 8RIrwIwjSJSUEleoNYsxjwCv9g5xMCSml3iihHXefmamzXIr05Wmbxg3NNPBGPZQjA
	 2q5xqHEIV9kUfGMwkeLRCUEjRu+qG/7p9/lT66fkVQ8sDOAwLBF0+Igl55+ADduKdM
	 yzr1bNuaSNzNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E72AC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174678539357.18340.10078695102637513521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d28bf31563026c2e98b2db9beac9bdc5a52f6244996dcef72b22428bc542944c
Date: Fri, 09 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746785393
