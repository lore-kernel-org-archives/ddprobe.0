Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A974C98
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735347354; cv=none; b=sd3p0y6MIWovFsbLVaTXmUhJdETiGhGydPhIieLxGBLimAKDB1xqawwAxRw8sXLrRczisiZFYjIqBB/oZFl1gmhoUGbNlHsiLQJ2+sGGh20+3MaDj5vaTuuv1FbdQlmJCklLvvA68TgjZhNAGbKz2sopOEkJL1eLKE+WYB/FEEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735347354; c=relaxed/simple;
	bh=3dibJ4qKfKVZjJE+ZP5hcn822/H6RV1W90Qrwml34yI=;
	h=To:Subject:From:Message-Id:Date; b=sNxky1JZe3nzn1o3yxR+4bw9EYFkBaDhsVyKQJDRba1fALFCiXHEw18nq/A65Rf8Ux8W5YW6N5ny0e+NBA04XsvW1LCgKQCO6CjBNXwYRyiqOBdiCWhhX/qPehwDaaAPsc9ZH1hsOAs6rYo2VMgCrOz8+qRZSm4B6IYiC7+mBcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPym+TZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPym+TZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2235C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735347353;
	bh=3dibJ4qKfKVZjJE+ZP5hcn822/H6RV1W90Qrwml34yI=;
	h=To:Subject:From:Date:From;
	b=GPym+TZOeSiBugNbKnZe0QSUr50Vt+HBoozI1hhPyUe/8uaBuu5Gk2TWTKn2QPRUA
	 OAK0cmyidw619hNm0YCqX+C1jS7Z/O0cfAkTVOs6h1RaKAm9yfw8vjVSWmw/nSwMZH
	 MQVD8rM1eXrzryHYkeL36aBbZowIN/DzzripfmgL6zKMb/E3hHeBVKR6qQO77P6z17
	 cTsYRjfLbpSUqndDjUm1CHCko0SZvGovOZkQqOEmqjlStM2nqz/xVKT9UpJPLCXChc
	 d+iPctp0gOT79svrZTRGEljwRhdEVCu5vATTOVFqICpk1wyDDsGpvgysgAAbsIqzd9
	 p8Pq6FP8psCBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2C4E7718B
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173534735366.1131.7811600148580389383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a160afcca55f89351282c91c48e2b63337192121a414c60e5423c54ed08b8b4
Date: Sat, 28 Dec 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735347353
