Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493C54B1E79
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747460394; cv=none; b=PpcuGXN7JRf0cu3reP2dmpM7FADucSLBwjM1ucCEbMoapxSpzcTKqjkRQG9geOsd6zVUQxrgB6lM86AnX3KjzQVIdVt8lVczuOUZzxm49sXmuG9Hwp+CJQCd3BC+FF8IinEhJ8V/8ZwfMbSsJQdFYqTjel+Ug/RNgbuYwx09kJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747460394; c=relaxed/simple;
	bh=722xyJKvrqPQxSderr0FdBdu50klW4vn2qyNpTEUmkA=;
	h=To:Subject:From:Message-Id:Date; b=D6KazH2Kof990Ov8ZyBerrbUpcgrgltaE/GBd2cTyQnPJt0uvlQheycVmWUnsD10k84aAcnzZMltfR7HmgVrcVQXik+ZrRgTFLMAe7S+wXqIx3sPHZfFxvZo235lFit+vsO1q7MdXc8Xuu49dVJcDLnF6tL0LleGmq4q+UWtVII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INm36ADG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INm36ADG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A743AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747460393;
	bh=722xyJKvrqPQxSderr0FdBdu50klW4vn2qyNpTEUmkA=;
	h=To:Subject:From:Date:From;
	b=INm36ADGQHPAlrevLP/eQEpiCi9o7whgXq/3dh3r+BqOX14N1mJ19MnApfqdQJ/H8
	 3o5nZQPJaQcVWXuwFtylC9Dk9oPBpmDEp/7u091R6ym5PY5Dy8LU0wA9T9wxmZn0CR
	 bPd2ZpEzKK0EyvWnDBs0R+RbKS5IAJqPSY626JoeVL03eUPeQonlkl7XHJsuvom4a0
	 ErL4YFIEqYT1S9jdEcuKWxuHqfqvfroULEbt/cpZdfZvgq1/PIRctCK5TBF5scrUoT
	 IVbvvbq9gQOhVakhP/OIBKqIzTI8PKl7UNJT1CsIxJcWWTMyUQsGW97U4IX4ssGl7W
	 g72ao3Bz1Lz9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F85C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174746039359.30580.17761092093917285944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10bc75e1efc5ef05950c0484dcb1877548291dfdfd689fd927e41221cf8112b8
Date: Sat, 17 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747460393
