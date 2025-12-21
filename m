Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA411547EE
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766289834; cv=none; b=ABd4PVjqbhahPhYgvleKFdC8NE7+lGRmAESGQ9fv1dj0f1DHYJ/d3oybgLwacxxrJC0emSNem0S3UsJxYmYWmhHnHIDWm4yWYjLiTE9hvhlQtmYKYCzHjgW6SSM5eluUeCHl3qrhtvZ83PMBOu0aSENmje9BDD6H7gu7t6FFa+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766289834; c=relaxed/simple;
	bh=YXUIBtxBURO2NnvY2fzo6RENTuylzLDZ9H11Ci248qs=;
	h=To:Subject:From:Message-Id:Date; b=GqvnORvs3sgpqpulxjdHO+nbgEYU56DWVJRNudAbamhahykRPHWKTq606HD61mZeyFLqM3uUEJ9RsyOZF7fv/0bBPm583zHeHSqHjHVSTAiFOXsSrqsITF3d4YJ8viToAGLPxzNaP406o0I2gmTxmz2mXFACU0EILbH2Eh78TjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxdb8fN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxdb8fN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BF7C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766289833;
	bh=YXUIBtxBURO2NnvY2fzo6RENTuylzLDZ9H11Ci248qs=;
	h=To:Subject:From:Date:From;
	b=rxdb8fN1WG2yHUri4JH+JToj7LlJH/9EGlqDnaUVxFoEGXd5apFS1zpnmU6v3hBEt
	 5i3Z8oY6U9z9yau8r9nlPqAA+ROh5SnSQbadJT+QZBsjr7KYp9gF0/2xVFwNtPC7J/
	 OPTpfX/wLHZ0z7rmyz05eSVgZsvOuoHyWC9WLp+8d0UGvu//+sK4jhRdfEonP6prH+
	 O2Yo+mu74B6Jq8/utbnGrZ/cRYskPznG4QdBbMVixVU1NLK9s9DmH0U3vEhfxSQDIV
	 HPWZQ+t2xph81z3gV3OC9crCQlbuMKv1Xg4mn9/gX4GmCNNOg8GccIHD/0leqBRfoF
	 bT/4+llzH0jTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A47E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176628983358.9649.11976959715298482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94af601d56c7defa8565bef7bf3e45e9846e80472425ce41c6bacee0d955254
Date: Sun, 21 Dec 2025 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766289833
