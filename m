Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDBA56B8B
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 12:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714654343; cv=none; b=BVLXAc0hlFPY1brVh0MoGWL+ygQktSgIGdwOQTVdWRk/d0tyqhajWfXvm3AjbH4D+8VxNiH9sVcPGDL5dMyTeY6UsK9vJLBO8Kc4Jd8yHj++3N3PUxQlKEB8cLg/S5BhXAGRX8m3iJsQIoIU49uvUQ+e/HsRW+LpMAdFA1rxUjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714654343; c=relaxed/simple;
	bh=cRA28/lKwI7mb2WIKHnBT3JghDQtS0On+Wnz4hacdgI=;
	h=To:Subject:From:Message-Id:Date; b=WS/sKLzw4uxZcv92pe6TpWJqFbLdZPob4AgEp1/VNEKo5apRG3h8d4GFWi5FpjVnL5kaNusqn5DFj5v8s26ViMjdvMAGzeKS+zTBZFa19eIoNJtKBG7jCO56yNj8MIq8CfGiqdb2SyJq/Qy53S++BjcoGiJRSIsO6N5mCm9jwjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGM3b3oh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGM3b3oh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C96C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 12:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714654342;
	bh=cRA28/lKwI7mb2WIKHnBT3JghDQtS0On+Wnz4hacdgI=;
	h=To:Subject:From:Date:From;
	b=QGM3b3ohBG6Xq50DKgzCkU0QYgQA/cLIfsWuNisSSdNPl3bLWMDaJ9sehoqLoOzrC
	 Q4M4LCyt26HkUs0CUXHfHV0v2HXvcjGHpEGm30JGqhuqDKRS8Bi6TfeOuM60ExZAMI
	 QfcOUPSMIfYN038Si4Hg4+RzEEyQnMGAk4v7GTRfzqE9MXIXthDSYseYjLLYosubza
	 Y2qRY9ZTcB5TcDiMkV81c4DTZEFAsn0+lkl7R0of8cpd1UF6drc1cxwHjzJuJ+IwTF
	 g1vagAmy+EkAWEbIEhbODLhue8NbuifapFqvyd1BClXrxQ2n+GP66s6pz0q/lIRySP
	 ON68j5T8JfrdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C001CC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 12:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171465434277.6512.9945452567778148872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7fabc76534d35470d14ce7154f3a13974fe8ca823d4b4b34bd2e8c30752e49b
Date: Thu, 02 May 2024 12:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714654342
