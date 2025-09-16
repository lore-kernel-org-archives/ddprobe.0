Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E54437288F
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758038394; cv=none; b=TWIOAh1X4q1R9gmoeAOvlRDXHJeGRz3rGrcQXfUBdYoi5cjUpeid8tGZR+hVeL+fIu2e9issCt+ntzlpGncqA8aMeOgImoyfSbKlIIw+vDsKOJUkwJE4T6cwVilH+DRjOF3nskMHHDDWoTcq11c/ZUvMa9l5IHTymlsXFtRf/ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758038394; c=relaxed/simple;
	bh=55sqaHyyMUyMDxiqYZZNTNthaysSAkAWRCV1WSCXlGk=;
	h=To:Subject:From:Message-Id:Date; b=qXi0WBpTwn2w2QJ1DmdSa9rzj9S1zrgLQLYvmCvWPZaHmeRYXc7qsD4FL+hezg/cpZfVc6tzg3L+u5yoFqQGj/uMazrEpTXGc8v89Bz3yLLSyk8BHacX9Umns4CK7+QgJNxicKocHoBAotv5hHwWyERTFLHwRLQWsn839CndkbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6RZ14Hm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6RZ14Hm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F610C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758038393;
	bh=55sqaHyyMUyMDxiqYZZNTNthaysSAkAWRCV1WSCXlGk=;
	h=To:Subject:From:Date:From;
	b=n6RZ14HmLRqdFzde7U6T9UneGqxUN3BTd2is6F0Pu+ps2Q+efFph5kzZVe+ZB6Zr4
	 OCrv6qjvKa5VlTfN/cbDzULYt1cykRUP3kqVpLHYuIjm8qdxKYECZ4WlXld+n0vIGY
	 963sl7tKxjk5a3DGGqkJ6DF6oHe1mZNqURzctGsOo02PCX+WQx43Vf2qynXeqA5/Hj
	 WwH1QAIuCxg9VVrotAZXNQF4uPDbNL1E5PiFjMuPq5+E2MkAWmpx+/2TN8sDuKxvxK
	 oMvPHyj+LS4Ohk2xzboRuDg25wqxtbyyiagrMA/1pUydf8hgHqBY0yxYNEYg8o17B4
	 vuA7fSz85U5TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E0CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175803839358.13646.17814156017922350346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fde37afe911b0d06754b7b84dc98a39a0668020f6aeabc5955a1eeba61198a05
Date: Tue, 16 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758038393
