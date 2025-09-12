Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB71285C9D
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757705995; cv=none; b=mJAHGhcudDfqwxoRbUl9mA6Dp2hyzW1EbVdP2RuZLwFgbiXkX9RUc/esXcg4OJ4ABY40P43nxQ9H9fV+h57tguSa89/+rmWQiAtBjKxfjWW25nckGMy45fvQwLBkV8YHvQfp392yWq78zTr42XqwJXxmlZZszZO3D5dJLQSGycU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757705995; c=relaxed/simple;
	bh=L2OhnSnSrOEftJn7UmYbNweIXIz6iR73GoMv4PFTjZg=;
	h=To:Subject:From:Message-Id:Date; b=s9dgupatDdPw6D6Ult6fS/kSXfctX4oLa4P4oOu3HIa7AcicSqhzZaJp3mAVOpSddLkjrKSBgrtjodncU00CznpmP40TYYsNQ5tvFSaytUPF9fq62PHJcoiKdnzKhwyCbgf0j6izjcPHGYWIDYgRM0kXpfi4c7yXJOF0XyphVxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9yeJZs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9yeJZs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F59EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757705993;
	bh=L2OhnSnSrOEftJn7UmYbNweIXIz6iR73GoMv4PFTjZg=;
	h=To:Subject:From:Date:From;
	b=j9yeJZs8GrMApxsTuLhiYHA7j73eqRBWs+fTa+Hj55sHnmB9o5UB+BzSw3nnIvVxl
	 idnjRvfFSfdWcRJ1CSAcElJOT+UuvhsSyDVP41L7AgzjZM6vaJ1noBYkvQULXcaJFS
	 jFuWIkD7WkTpuhNAa52Pou1M6cD+tyoG0Y7Q8W8bnTU3pYRMcFauI9bNpUDY8KIQTo
	 VXc90DeErBVFjOlesN7/Zn2y92KacdbMfEGb9uSPKEe1YhlckMSgG4jqBK5sjTa9VX
	 X9fpi/dtgmXvyg/1h+ay+tRjVnbG0G5vtfsFDjrVLmY52P5MS3DSuiWQyqznAE+kWy
	 bDWUHYAU1NHgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90014CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175770599358.19791.9590217992618945757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0e51c53c966aec710e19fe7511e186a488b49784a9a106cb47d993e40734c0
Date: Fri, 12 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757705993
