Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AD8F4E2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736468754; cv=none; b=qq79BNHDqJ3wHtBYGQ7pBgRjWbsZg2W4xKGvhRiqPUF8G0EOU0tOPE6JxKit1aPNFZavNHErg4ADto1CG2Xj7eU9dyKM3HEKHH/yYE9yahW8+lcoMQdbbQeCYaPqBOHag7F9HNgtbLOj0JZ1iguzN76k7vB8tF4wmxwEztWtAXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736468754; c=relaxed/simple;
	bh=8bKBeAr55pDjATa/X9EJXl6bOB0//jUMVMGpu11RgvA=;
	h=To:Subject:From:Message-Id:Date; b=O6ey36RueS0AQbr7eHkbzwsqLIZXvjexKvYZqxB3SvGE1suQS6ZAyYBpbEzkMOF+K5jGz9k6W1NEGoL4bNVswI+1wMKPLwAY4LZLCn0vrDk/N0BHkeMWeDpzUxIhBl21HoU9pEzrBvWUAQRdcAK5FVid7fsfR2EbiwaB2kZDgUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McevxoQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McevxoQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9AAC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736468753;
	bh=8bKBeAr55pDjATa/X9EJXl6bOB0//jUMVMGpu11RgvA=;
	h=To:Subject:From:Date:From;
	b=McevxoQoxiaP+cQHksq/aSDIzyDWTRnMlu0f8vpJ9U6wuhO3eF2rqyusSmcWpZ36q
	 zCwaI6gkhp4oBmjssmtXMsOULXdl+BoFFZqWMh3Fce/Z0QkbUjE0AsYNm5xFEkDSK+
	 bQfDxqfn23nw7E4YLAMPxJJKGQEPawY42Ymgpyn/qhUmq3n9ip+fpG14jc5ZnZvuz/
	 5MNAKYE5PU75LhnnpB2jtES7EpTFStgsDkZhmfXeDu7fq/K9GPPYjl6Z2LTdMHSprX
	 PUOdMjRnQXQCYNHjZ+c325gmsnBTh8D2ygaqf8eL2gkegq8QqSua9YzNv5ifOOGthe
	 Obs8EQ94EObqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8C0E7719A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173646875359.555.6368657998211562553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda0760a30c389ec9affbbeb35f9606045a8626d91c3842cc76864bba5638a26
Date: Fri, 10 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736468753
