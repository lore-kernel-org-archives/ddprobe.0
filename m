Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210FE2D600
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750216194; cv=none; b=Ptoc2cADWowjn3DZy++eacOfOeah6hJQ4aboUcITRDo1v6Nj1t2Hi+PwoBOcg980HNS1/22JyyTsPfB990eHmQBNxLx+Jt+3ZeK5bAo/S4P/MGOjV3sjkpNQjvO38opFR5Tq5429D9H1X+FLgX9WHWg5GzM0WyGur/1hICTkudM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750216194; c=relaxed/simple;
	bh=ujCgAvzlmr71eDzMTqmH5tM8HWmdIa1miM0Z5TIKFJk=;
	h=To:Subject:From:Message-Id:Date; b=l6j+t+YDJ74IKUQ+sOR9aJGp0Lr/xp3F55g+HVDVEdMYHYsiR3DybJwNmNCjfqrgk4ZxQaAPUcU+2jBQ8OyoTGIaskWqhOG/Hcjt+x0UUYzktQRXMakmSUlTg8f82hzKMO25VGfXKT4AmdEojuJaPI1+IaUEAPck64/WFAuZvA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbVs1EH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbVs1EH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A131DC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750216193;
	bh=ujCgAvzlmr71eDzMTqmH5tM8HWmdIa1miM0Z5TIKFJk=;
	h=To:Subject:From:Date:From;
	b=ZbVs1EH4hjUSLoj8zs0Ip+hUCxH/M7eKVgQoDrEKU+i7KE9pRK2gxxOaDXUEcA7Np
	 ArSxBp08GXOzPib5FtZKQV2pO9LsT4Ai7ey99OksFy7bh4foYfjfA6IzLwzR/JecFs
	 Qvu60K8SDtrS3SOmOf7Cpg7S7vz2eX7lJUlNqp0qjK46wuDLjNf13GcjWuKLOdQJnu
	 uOfvRzF2wyJbnGIEiWXM3pwNoKyxuPrCkoiH40HqBdanydIlUgIo4SJ+OnXXTbqX8G
	 qAhngJP8+3sR1Gksgp4Tqzu0qo0wUqN4WUpZwOAFIJ+Ju55pO5WjyuHogAxfRqKR0b
	 naO8oE9nTH6cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F225C71155
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175021619357.23615.7826271650009788589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75e253cfbaf72b052671ef9b125d37b8d5b8d8c2f7cb8ddc24a3db05d3aadc0f
Date: Wed, 18 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750216193
