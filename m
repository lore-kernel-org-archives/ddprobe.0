Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD08399031
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788607234; cv=none; b=H/FK8GN1am0Hwy1WqkjnK2TrL0T2zjJJkKVHThaY3r/P1wWdR6dnDYEqkaJT2fEBpNak7NImRX5KsWsTGPsBVmMJLVWvoW56j77cipiy5zQzv4Stlgnw2yTy14DiwP3mhyuAaQ4Xtf8i2nPFy1LxS6CDMx1XvxC5pSkOd+XXBhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788607234; c=relaxed/simple;
	bh=5J6X2jopdqQQY4O12qQPeQ/ThxnKep4eJ1pw91gvblw=;
	h=To:Subject:From:Message-Id:Date; b=U5yDFPYJDKjfT0EM/VLfv4knES1D2UONJ0FTJ8r89TDUDVwdd7O9TBl5tqlFAzszzYGqgEqS6RAv+O1lnu9Ev4OiC5riTKOLgAwVnzV6m1htEGbrEbq4HcTkJfLYUpKkO2wXvpfr6q1QVQI8y3Czjlm/gW52cvQ1XpDVgZmwtSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GE2yO3j7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GE2yO3j7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24C4C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788607233;
	bh=5J6X2jopdqQQY4O12qQPeQ/ThxnKep4eJ1pw91gvblw=;
	h=To:Subject:From:Date:From;
	b=GE2yO3j73K+LIKSJcaDVCM9SHpBPwON0E4lPp7L91RuQLuHQcyBj0GOjOvMDxrQLv
	 27X9di5OcYeoTGJEiBqbtWou2UfyT3zl1R8WCs4kJYvtvy0QnCgMq9BH7MFqWTllTE
	 TXZKnWQDBMtY670TQUS4xx3T2+88gyF0ykqMjU2zkTwfynvQehzz5yLQaY7s+LHFx7
	 qwCH+wYPjiq2fhvTq5qKOLQw2nFW+Z1vRbp4U9B+Qk63ZZ2lSQKB3XI0MhCH9N3+XG
	 f9IVCTit6lWUOB7LBG7l6NEMyQdoVu66Y1RyoDmKBQ9Z4OUfRcU/cfJMjR+y4Z46xC
	 pBREg82pcq/9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCEBC624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178860723368.24411.9665674747987677862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4814e912000f6013bc1a9af7c131d073d63d2705f9ae83ab1ad4df65acda6649
Date: Sat, 05 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788607233
