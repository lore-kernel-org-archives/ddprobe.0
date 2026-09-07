Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267F53AFB1B
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788776434; cv=none; b=I8uS8pQsJ5hEeP+usbe/rBoi1Lm1xeuTvIqmlKTEWL/dcQJ3lexKtd2i7U/2Q2w+dABJrzs6sc39XkLbRvQkWgGluCMMQ3LuGicK4g+QMcI6oW98kpVB59SZsrE7GwPELu/fDbrC1jFlb++mkLFrTO9H/L0O+hCvcpydLUu7opk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788776434; c=relaxed/simple;
	bh=jVqKg30R3ClWX6yghB+BGn1IURJSnFQ/6qva1wpiKro=;
	h=To:Subject:From:Message-Id:Date; b=T3EzW1gaU/xYD8h15FeiR726Rrx3LXyyjRefO9H3LDjxIn3wWr6xq+0+gi5MVbp3iLEiEC9E+6awzvwxEMkuBCMND7yO+he2lD1hR5vU5m2C33QCdBYdmtPpmVLbZmN5Gn6XjFPKb09aq5OJFgHxTEo7UexlDCzBQR2iCsRrCJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnzqIs/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnzqIs/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8E5DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788776433;
	bh=jVqKg30R3ClWX6yghB+BGn1IURJSnFQ/6qva1wpiKro=;
	h=To:Subject:From:Date:From;
	b=VnzqIs/45gbNMB7pYcckzqK7edRjSfEVLdxMfs6UjfYnKXV/7Cg229lh2VHvrXKsg
	 gbiKpaexQXwXoLp4zX3akE/+Y65mEWJ1FZ2jPcNQrsvkqgjP3XSi0uyYTal+hoeO7E
	 eaFDRrsaFuBZUUdnTTDKkiLNPmJnQJEvMCZr64l7zKroVMF2e/hdw2bi2JVvf47lyX
	 j/W9vUMKPg7MI6MMUrzSyHgBLUQJbSAWY4uHs1CHQafJXIzQvJJvbVYh9LeLMwOShv
	 /Vka0zUAaS3fySyjYLK0vH8NaHAahBukgM+XCUmxjQgvAeVvJN3gvT1l+jpgp+gObb
	 w6eYNKbod/BEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC96CC79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178877643369.5878.11389750004794191464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5276d8c5098060a504dcd48608d30a735e9a91effc625b30ba2a3eba8cc3dddd
Date: Mon, 07 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788776433
