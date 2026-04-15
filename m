Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E853329C6B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776245254; cv=none; b=oN7tVUG6KTt8GdcJFSrzREsvCOr508JENgmRv4KMMiG2Ekksdh0C/JbZmzLt0novBhT8AGlozMbSkvIYhxZIa61y6Wb75opYI5M9vd6U/KGBzk/bi1yT615yQBWl9QDUF7nNNw3nqZI9m3SslmrDaJY5q5s3Me8St8JOzV4bgdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776245254; c=relaxed/simple;
	bh=l5qfe4grV0dbUcabglvXstUJJVwNjnaucGvWXpEtvNA=;
	h=To:Subject:From:Message-Id:Date; b=n/e64mgf1OHHn6KY9dTdEO6IASrNzkl4LsBCZyINk8M5E8y4/rkZP86z626MSWNUAnps9Q+o0ugX75QXbOW+QsGY3JtnV8VNFnZ4RlNbHunT/Qmksr7cW4nnNaBReOOsN0jfkypxGTGUABhqkWvk65oB2v1fTIBdzkZ5ecPnwLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KutE5n7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KutE5n7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CAAC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776245253;
	bh=l5qfe4grV0dbUcabglvXstUJJVwNjnaucGvWXpEtvNA=;
	h=To:Subject:From:Date:From;
	b=KutE5n7AgGuLms61Z8rPcTZkd84AopxuGKisRwJzh8bx01escMaS3RJ50vyTvfROj
	 PkleamN6M5aVIQqfUI8Bf6Pf7ySkPUJACcNjQ6rZ4rqSedqBecVCGJ9dx2hp6e0m3f
	 IG5R+BNdUn85dDMumRp2eLwRw8RvH8YzJWTBbzFQ6iwtLihM9anku5JP/S1zxS7rmh
	 c3tb/SEH23Qc7Vh631m/hCz5+aYHujSt5Dvj/DJQwuB0JxoCXH3SWjouRZdnXRFwXg
	 4vWMxBr5JedxeFsY5Hc5PZYbG1PxSXJ5tosj3Po6zVzPHf0XiIuSao/z/3mNa+fRmV
	 479c8g+L34tiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D48FA0C5E
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177624525368.19481.4707652806535002628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357f4d1c26c9d9ab077530e7e3af60417f4be5f759e9068fc6359e189ac8439f
Date: Wed, 15 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776245253
