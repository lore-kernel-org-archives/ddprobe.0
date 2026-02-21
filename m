Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2983D34EF15
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771672494; cv=none; b=E821kba0mdDoAjL6jJEbXgOs03PdbfbxX4e/f4MO999zBqOQP66DMretJLx2qhJJuKsXWNeZSi1iPIp/SEmM56YZCOvaRmBwfZFMMhpXKeURxX1fPPU9SVN3ajfaLivTnFIETQSlOa4lnBrsvK2VnEYsF+y/t0ULBJno9LrX6IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771672494; c=relaxed/simple;
	bh=rnsIyF/uyfNU8lSNrE8kt9Hldusd8ZaEVtb2FNR1IuE=;
	h=To:Subject:From:Message-Id:Date; b=aMzCPYkyQi0rY6CjK9TNgiWNfzMqxuHZhoKZcvnxp3Hh+SHT5dLJidx2H1OoUda13bSOxBtercpXyRMr+BYincZMpb1I8et+EqnxVmzh3YP/HqwcRAyxv5OtX2/nOCSg0ZEmreJNKJidSUiluG7CUI1MS188cjvxrF1IrXXs0ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUqILuf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUqILuf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB112C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771672493;
	bh=rnsIyF/uyfNU8lSNrE8kt9Hldusd8ZaEVtb2FNR1IuE=;
	h=To:Subject:From:Date:From;
	b=hUqILuf+4f0PAQxWZUkPNGGrn4NPdYk/sUMWmEm7QPgjLDwYgZMxqMk+kmS1/onvl
	 OQPFGTXYqyBYOIHVTCubwp9UBbbks0X1RqP6yyg6W2SFOiRWHsrIsRMJvPNRAj2HjC
	 rcj1mS6tHoFbtbapUbE4VnT0fqOdyJD7StqMezdj2P+jYMXZFuaPIhPZ5jvTn8mEK8
	 t49K+VStGgDMp97/jOIzdI+CyV83XWIqQyvy1VJXwDbxoWW+Pd+yH8y6ddY8NT0uDW
	 +90MbuJLTk4RTcBMdZIKzPEh9MMgUhJM7kEtAVgcpIkmRdOgO1ZkKyjxE0vT2yhmkS
	 4dUb8zmBhTI2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9502CC61DE2
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177167249358.13164.6849043724549295067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf7348efa42b621428847ea68ed1059137fee259f070cad32118aac0bdd3aa0
Date: Sat, 21 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771672493
