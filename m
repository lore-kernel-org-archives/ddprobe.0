Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A19E62810
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707868097; cv=none; b=epBnQLaXmwPm15heLf9kms4CT671W8lvZKtE58y8JnjGrYTFiSqSWzAVrHrbKEKJjIiXDwFotDb1e4BrGuFYyv5LCZggo6YsiUTfIfU5DL7sERPwpe2VqLW9NZTxMhmkLgbFjBVQrWlC3git2XgpVAJkmBHGPE4MxeKyn92I/pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707868097; c=relaxed/simple;
	bh=WHAJVtst7tdDn8mzkJH4JFpoi9zRzPmJryN26XMWZW4=;
	h=To:Subject:From:Message-Id:Date; b=UZHB25Z829mIs+RHtThycvpbj2Ix5iJr8rYi4YYcBttWoJVz3FvzUUgvmKSzhRrVc2yt6gF7/NZmES2rTQmLXGcE3A1SNl/rvpAc3UY6qAT4mHOEyu2ae7eelsM3hf4lfYJVxKXSEsn6eX33OCsAdU1s47ELDTDV4UY5GFqwX1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khF09m4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khF09m4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84DBBC433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707868096;
	bh=WHAJVtst7tdDn8mzkJH4JFpoi9zRzPmJryN26XMWZW4=;
	h=To:Subject:From:Date:From;
	b=khF09m4gzGvtOBtf6V3aVm1o2PRoDY5zX/748yRByI7iaR3bFI+qUo7IzohXw2OTV
	 ywkrIGYms0YRPgdh7WNNTew3y8an3y2aln2lY+iNXd+fayfECO7rnchtFOywgi3IVI
	 TabttGqzgxPA2l5qpfezF8P0/nCeHdmuTPj/P95QaOexsBn78EUodNgL5BI6zaQbmC
	 BIbyJZAlfRCFqFFsKh9YsoN9y+ZpBok3VdWXotVuUO+4QwtdYxpyu6kAu6tVUcs7uq
	 NjOv3TS2GthkDZNqwELhr5aR26G1DSgblLj05AEZ6DiBuwynctQwQiRjHnymKx8lZo
	 uny6b6hz744lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C111C48260
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170786809641.28464.8296019868306566197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642ab0a46a4f3d194056621520d5c5baa29991e9dc0742a96ce60f8c709b8f53
Date: Tue, 13 Feb 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707868096
