Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2645F274650
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747652994; cv=none; b=XZgZZ9a9tIGY2+vfN7dSI9vaRkFIvQ17htec9UryoOnrwwJSg09MioAZzpaFV7TmGA/RVbFQUbddUqgRZ7aklBVwzu8UqbMG8mCXUlijS8K4eYdoR/K6KA/T8bsNg1ZyptcY0II+g0cpCvPamHFQqku/QFTMV+kBXi5PFF39aiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747652994; c=relaxed/simple;
	bh=JcyxlLFW48ZOcTgC9/6Ih8Gi0XNbeR7Dm3C1uBJEu5Y=;
	h=To:Subject:From:Message-Id:Date; b=Tjf7ecmolNl6Zqnj/M//blwOo9sNUNtHk8/XN8mGUq6s0I3unsk1kPtmZFGnF1Bxjtqf8ahSo46P/TTAqtBI69eqEHoYvuT6VmlohifkrtJjAimkOzlUbur1dLu4/LJ4qxJOFSDayYH8upVsNz+s3O5Jc5ZUmSFTEu9JKSgfGwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qe/lBmB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qe/lBmB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E64C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747652993;
	bh=JcyxlLFW48ZOcTgC9/6Ih8Gi0XNbeR7Dm3C1uBJEu5Y=;
	h=To:Subject:From:Date:From;
	b=Qe/lBmB1qte9wTvUCpROR+uOwNgg0SfJsQ3vGbsrDyMAqsHjA67UF9ZDIpmo6G11P
	 gOMP7eLxr+vG8AFrw81kPhfkzw2OvrZWXA5zPQCMsu+RNR8XaHJUyy5cJr6CarlLFv
	 lsQozS4Tz3PanC5KuVYJ1GR4IV9JpPTzqVUgu0lbWWiof2DdZrWn59DiTfhARlhc/5
	 8t59S3Kw4wqqfwkijSqJTZf3XNAEVWx8CPD3RYs9uIkPJtUpH1qlDcfXo/c5iB0FU8
	 x9JAwXilLXb/FF7YB/4hMmKfrui4b+ohXO9ro9HgzPBGtskO5jmkbBxZWgvcdRWCpa
	 Zqj0CaEvmxizA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF9C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174765299358.30082.14300983459286110632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 973faefb78ab5e2ad46a0afb4cbfd52236897f6208596733d1b734ee0c25ce31
Date: Mon, 19 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747652993
