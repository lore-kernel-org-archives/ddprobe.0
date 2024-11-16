Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B4B12C470
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731758754; cv=none; b=YSFAq/h43QROW8I4wOIqkwLIR+DwMT2IJQe7ojKdgGCMdihpuBCcNxVXzASKVuNxo7NTUkG9u5TmKvxBR9BD2Gc87ejLt67mG8Mi4+70ALx0uhojXQXKywJryyWalvngvatuQAmwOFhtINsK0RkPgMFEn8sopJnQX+HPbe1+JNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731758754; c=relaxed/simple;
	bh=ZRn1d5IgwTIE0q1oMY9GzUy2fg5+5a9oz6xtuKqvXRw=;
	h=To:Subject:From:Message-Id:Date; b=Zkik+l/DjPeLc9UCbtVTiD/OBHkjHCupEPUQ9nA5q2Yj8qlN5HEuxAzsy56uLElkbugoIayinaf7PmAVVew6hPwWuYNJdm3kYqqdcV54yWd379g2MgAXo0gjvWTSeQV3/T48Ativ1N62z8vafK1up9Jxqr+OrB8eoxh7syWjufE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cjmwk+Pf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cjmwk+Pf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7206C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731758753;
	bh=ZRn1d5IgwTIE0q1oMY9GzUy2fg5+5a9oz6xtuKqvXRw=;
	h=To:Subject:From:Date:From;
	b=Cjmwk+PfNundMUVFSLeSLQ05asod6sMjtmtw9xqCe5+p9LOjdYpwkDJJ43uI7YO84
	 zmmf8fBzJmLw1vE5cZJeC5gC5MFUjLHy5T3qYm1bYukde+3NJgwWsSMslucX6IqtsR
	 P1OO4IafJSRegJr+LkofTo79KMQdaVSz6Q/EYuT6/lH2NhwjXtqktyQTiKXmqcXGVi
	 QKSoNk3dt0JUIAxS17l0j+X7v+pCc5lDMzHY8qasBwVydiE8dzR5T+vulS89xFsTeo
	 yeykjS12K6MAOMlhOzaPbyBoG0kbOjfYwTKnt1yidl9V8maTMRZZ7EqRg5hv5tMIne
	 jaqWn7RHDyEwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27C1D68BEA
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173175875364.23236.16880699298081378750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a9d0713b50781f251eaa1362ec5069066af476e4fe72bc02e1aa22333efa3dd
Date: Sat, 16 Nov 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731758753
