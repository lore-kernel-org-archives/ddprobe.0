Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA8F207E03
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743790193; cv=none; b=gqVVPXMmpz4dffewAkD0hVOigGnq/1b54OR3BS4rjmU745U/HLxXDMkGd7mC94PTiPhg1dZi5roSSz9mugNXNBBPE1B/8dUj1bsJzdveFSMTqEVJ67H5Lnc2VHta5FWFOEqc/dQo4vK//cqkEHkil4JOy8kFIPsWlodD6eIopFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743790193; c=relaxed/simple;
	bh=S5ZpKU0PTjKJudDKVYAnG4Fabgvlque5wIGX03nnU9Q=;
	h=To:Subject:From:Message-Id:Date; b=Bs7ePuJ2yfjbj12l7wDitCl2NlJQ/BQSUlRQMe5Z6dDj0ZojrqM36KAfn59UGqgG4DHJFaYmZLl2GkYCv6lom3x6CWaItDkoceG0LuUzaqe9Q623o7OZ+mAcTWHnifIvPPUMflnORVwLbxDQ8t6ORVSASy+HYZsQhJa8ZFXLC78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ml36b8vm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ml36b8vm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2511C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743790193;
	bh=S5ZpKU0PTjKJudDKVYAnG4Fabgvlque5wIGX03nnU9Q=;
	h=To:Subject:From:Date:From;
	b=ml36b8vmGtz1t/CmfYOhVPmX/RTqJbLhLhThFS5TQbuarBbKhTJeBtFGjUqiCeEX+
	 7RKpw4aZeswY/DujiP0bpC8fXWDQts3gcxBb1f/qp7RRVUxrRp9KFtS1jkK7wpc2T1
	 9OOUB59KEIicyQxl8jPaJZbfRwtaS4K6NnClyYwMZOhBBeNdcG/mNDcS+N8bR6qmtE
	 mtzSsO87IoN+4V62au49mBulVFKBJyI7ZhIpF5aB50tE4puQ//JBdRdLzyjoU503d/
	 +/rPl+aJEHES3s48kdRh80Bn9vaYTSMGmM8ey129zG3TfBn8jWIBUmUPConxlnMj6m
	 LoMJweW7K100w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E5EC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174379019359.23930.9408019647369921053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a2481c21a92fae1250ee146d48800adb65b2977f82eb51655cf03e69c7d23f
Date: Fri, 04 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743790193
