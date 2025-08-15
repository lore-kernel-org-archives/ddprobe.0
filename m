Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBEE1DF24F
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755242994; cv=none; b=cYwFvPQt4ZwOZXj6m7yh2gPoZYFWyLZupC4LX26FvzLhFcmD07y6UISjYED5LiyDja9XRqlulUv1X2FTSu/K/wr3vJx6T+z4lvlrqzWQ7TuSgwJGMBeS1hNA1tzdr/CggqNJGaxvmb4/Y6Y4ABhfX8yaXIuSXWkFa5tZG3DxRgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755242994; c=relaxed/simple;
	bh=k4UeiFasoqDGVMUjGeSMn8w1zrMx8k3HdIejlHpQGmw=;
	h=To:Subject:From:Message-Id:Date; b=HWE7qf++M11eUFnJ5/cfZBdxef5TcV+dlG/oqn1t99y7OfaNfo82HzwfVSAclfrdeO/fIsSqXwopRzA238DUNp8Z0BfQerbsu/fUJPGqSXXXbFeakDKSi8Kq/ZjWbuRkUD47pqfpyGDaZHHs7jljkP5I60Uzhbar4Xo7hoyBvd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRNcYyfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRNcYyfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1C5C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755242993;
	bh=k4UeiFasoqDGVMUjGeSMn8w1zrMx8k3HdIejlHpQGmw=;
	h=To:Subject:From:Date:From;
	b=RRNcYyfM9RxekNgc3dQeja51T74jkFLm3wzGg/vCXpAOp/0LrH/fXGvW/J+8zMuOC
	 Dh3GCBlxP3o6tgA6CBKLl2O7N16fQWXF/NAVJYEwIuNLLH/7k6vtLWbyaSu3Amev+z
	 5LfbQdhT+vHV0gWszP6Etpis7DIiVjndwXnS4bmjEfskfgGDjCQzKuRGRgfE23vq1i
	 yPJ33Rna/pp6bj2lR2/7QKDGQqcTa90BxQiqJactW8fin0/L3a7/6kjChuzL1t1KMW
	 Tq11vG4v0dQKxbYl43wgj1xJerhfbTompc0gr2Vye0TUkg5T2ljLCHO2TevkMVLTV8
	 YfdqsPjkTSQmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B6CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175524299358.1277.6972904616592714871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6cdeed30ded4065eb0caa41d44c664490c45e7b7de7e24b7690b12720fb74c6
Date: Fri, 15 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755242993
