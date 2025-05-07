Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA122356BA
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746608994; cv=none; b=YxwZO5eDjWU9wyRXcRZDcoquFJqV92BAFk+J8hnEdp94SfNSYu0zxrdvBjfbD5ael5Ca7KQvxIUc78v9E31WFR9/nEZGj30eTdEr7ZGeGpNdsaVwejBAqvTa9wmlC8oNSLuB7H5cpk1bCu1YYzucw2ARyWY5yxuvUayjaNDffUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746608994; c=relaxed/simple;
	bh=8jfREhHjcta7u99DVWtOLKB5l76PBRKqo/XlN9irmg8=;
	h=To:Subject:From:Message-Id:Date; b=anIWDLnT6vfGrtqk/+gsQLWf8ygrqHxQDeJ4Aipmiva797htW95Qb+mOi88AUSHFuakrc3LLM+1TreqkFPCphisSsUj7iSkSCSigPxNkiC8ROxEPlVIU3PVv6cXnm/+xOb6BcwCOHUbSAguNA/9gG8E97141x1gydyskXR7x3Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kk3ZgAQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kk3ZgAQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F55FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746608993;
	bh=8jfREhHjcta7u99DVWtOLKB5l76PBRKqo/XlN9irmg8=;
	h=To:Subject:From:Date:From;
	b=Kk3ZgAQQRdtx3o2RxDcwwJqI7IQa32fADpCTu9BivDqlW0ignU0GT79KvFd6zlhJ6
	 2NCmzP0t1sFI0ua3EYoOBFZX7MGfBOUCBHJfNvxYT0tGYnLPvefcrDsm2WLzbfasej
	 esyFcvruCAkNApKh1oPdz9N02PIPJbKfRBJnXu31RncpUlCkHA5LT7Ur+PF/7yWeMd
	 yJR8XejTjaxEx4GbOp/e75CfLVEfeSf4+CCOg0nzWOojSZ5c90aMJQqrd6T4Fq9ZLY
	 7szrUOjf0WgcTAUmCXy+ACsSFLdM7Uk6Y5wIVF6WEpbIFhgLQ9LeWOT7ErT66EgPez
	 UfgyT6R8+KsEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E96AC3ABC5
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174660899357.10818.16262373527898178768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec05a60c2656ee0e3630a061a73687d5189180e90b0712358bc69b6ded61b76
Date: Wed, 07 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746608993
