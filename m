Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC78156C7C
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 18:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715883743; cv=none; b=PqL+Fd0UEVRbwu/9THwCgssaS/IhE4L7jxpvCpDDwBSEXM1ei+DIiJBh4uNUvjEXNQ48EZhWeIxdzlyH53kC1SP9U76KePfJQxSLbBfgNdj1BAl2AHZG+zfq50HtYiNd8RhkBnfrv7sKGYWYYKo+BfKL0juMkn7g6OPk4PUj7d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715883743; c=relaxed/simple;
	bh=Zz5evgavU9028rJfFR/6dNluqyldRs+uav6FFr68CTs=;
	h=To:Subject:From:Message-Id:Date; b=j3fhAUAKTYnLIwaZjBguh1EK8v7gbq2sE0NxS4/4sLM8iyqWhFkxBpiLAVYwChl8/klGmUjW9VmifCl0dWSKs0ZeLH6SzqeATpqJ2dEf8Q6rdqMhfvmRPPvDFKTUM5iF6a7ir4IhyJmJugEkObMlFbMO1yzSr6eSJHlzU/fFwkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVsd+RlU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVsd+RlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E09E5C113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 18:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715883742;
	bh=Zz5evgavU9028rJfFR/6dNluqyldRs+uav6FFr68CTs=;
	h=To:Subject:From:Date:From;
	b=BVsd+RlU1tR+hEMHG6mYUQlJUBCGb6GEq+hAFUKgyMWoGfuZP9sIcb5MyrC9OTAC9
	 xbQCj5Elbk84kwWoiH3HrI+4pnDujTiMqnQZhCtwSq1q1DNrxa+BTmY2YNE/GLdhD+
	 1GvdzOTp4mSjLSknPbXeiM1OkbrAfTzBJhG5bJbxJDwlrfXLVp21noXnjuYSA6mS0q
	 Ugj/a/Q0DiMsihDyrTC9/W58hn74DkRxlt5vIDaFDtsmapzLlErD7/jCCqwOLEHxt9
	 /2fJ54swJy9qklrut4vky4bG8TCJArSaiKqzW0++VB1rVqUaWjgdM7s43f7/0j9P+m
	 HIpxyKoPh5JTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA714C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 18:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171588374281.18366.9741493544458203731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f30654582c2c4e7f0c2ff1504a54d6a9394bc9b140972635dfd8787498ad32
Date: Thu, 16 May 2024 18:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715883742
