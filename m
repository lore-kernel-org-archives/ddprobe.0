Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3339C155A4E
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746102594; cv=none; b=R0fKpItK4Vg7rd9dWuy/ASPPPE0BmRvebFy8FHbFoSZ7rop/LcM6w1Jn5kP94Czv38uf1X9D816eqg+IakoKr1zF3U3vq07PeIZVOINh6YNIyegIHbfLf8I7HJc9gp9NTLNDek0BpHVUJQblIlMNvJpdbgCS5Fd6QAGNXXOvBW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746102594; c=relaxed/simple;
	bh=p5XegIxg9yO0RYfdGkRX7/LNEMOODUtUQrLcS+BhOO0=;
	h=To:Subject:From:Message-Id:Date; b=YhqRPDTqC/SS70bPzfq63E4M2Jre4s3e2PSdB3m4szWuHamf2ABEy8JZNUwB+Oq2nT1elHcXudmizPaNVa7s3HrXlcmgILhvCFqZQjXTw4a0DsqkkrlbyU0kOcJDAl9vuRt2LH/aQLXOYkvC9TAlhjX14KMMGxt9OySSDQT9HF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcs+1ARB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcs+1ARB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B9E9C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746102593;
	bh=p5XegIxg9yO0RYfdGkRX7/LNEMOODUtUQrLcS+BhOO0=;
	h=To:Subject:From:Date:From;
	b=qcs+1ARBo4TFR6bPDbSX1Skw1hTG+3K4EDgs8uoTGd4Fdmj0Ww7QyoYJdJCXYeGyr
	 rPg/pxZJetBlYRt1SQaEjT6piOqLV0RYeMAKNPTXZ73ejElbuG73lt3Ogx5NRv2MMt
	 YR3ysymUBBKsGxTn39cSGUmOgTNZordjJAFfiR4VkwQaRNxB0Kh1Z5rja0Ja7fTzc0
	 tNQik2tAJqOcHTw+eI+6FZI9Xn8XDb2BjKC/ymQA80eJgvnti9qkWzOxf52EcZ7rWl
	 qQdWaJ/Dcl7Que5AX7FM63Kpqvck4k/YM2UTpoBRLvMi3OuIpx8jQtgt1YdSTDOB0U
	 soFOyU3elpokw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5E3C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174610259357.17928.15350736073376402213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c45ce4d1d358006713e79dbea0364f2a2fdd1821ff779bc46dbba279559815e
Date: Thu, 01 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746102593
