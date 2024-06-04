Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687A584E1C
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717538183; cv=none; b=RQ7QNRVTJcf775JJUzJ8kCN/wEyqRbk7KI+G0Txr4BNNF5II3vUaV/Bcm9LK5U4kj8UvzNw9R9aneXl4RmowCifD9bwfVXmZiO//3NVoR+8Phgh9T53wZjSgQmJKQdhNy1NQebWTPkao92H7nz85c2cT3Qp2rtt3qJ3RKlUG/Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717538183; c=relaxed/simple;
	bh=FLi+An2FNu9pYFDxisVHaTJF+JmnXPAg0rx9bqPij+g=;
	h=To:Subject:From:Message-Id:Date; b=Hl75+3VLeWOhRXcdRDunTC53emGuvRnuOAQPZxeGzXPJQbed8ZLrp5rE8VWZxPSJMeSsAgKXLCBsLUJjB1aQyp2aXWgGoQZmEoew/+Kv7uMPPqa2kkyEr6h+NlUDGTjsde3YyKKCS8aWyQ1JgusspPOHx9WYD3WpBKSBTAEh1BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8ztR/tk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8ztR/tk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED249C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717538183;
	bh=FLi+An2FNu9pYFDxisVHaTJF+JmnXPAg0rx9bqPij+g=;
	h=To:Subject:From:Date:From;
	b=B8ztR/tkzOF7ezV2nyIx9ns4bsJFzwa6seW9bMwBaJGazJuN6XaUXA12+4XUheCDv
	 kb2HwoRSGLk5PBcEdiqpU1aOG9AqGuhXvp/xQYKUoxRMvSfipMqLuKcvqtsa/djI8G
	 w2U2fTxRkrvsgxNRz1c2lF9tqn3+chsMLS6KGMl6VCpzIZfdl+o5vdwZ/70G010jkN
	 tI0Gvsxl0FyIThBo76b7wCnwKpblxBgWy3X2Sf3Mp7gmEbsFWWbjSe8TXEVqkj2L/w
	 doRhrDJiWz9ofKIIU133dJP9gUh1zEQai54dfCNVN0bul7Rz2l+uuzaAGmlD5F7mf8
	 LE5iicTIKA6EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2A61C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171753818285.32222.1858198243353377803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72eef69547ca5107fa0ed04a0ec859c89375dee6842957d9cbbbb343547bd2f
Date: Tue, 04 Jun 2024 21:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717538182
