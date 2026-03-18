Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C848E2F83A2
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773855893; cv=none; b=CnYHby0bxaBpesciWOL9+jM71egRlT3uI1SqMwQiCxAI9SQ/ugfB11d0u4m6QVFRLJywgvTVRnpUikd0/V0Hen/Bs/eGieH2DJBo8XL8Q00ym1XCNFd3qPkXOTVIsr7gCu7+d6zCYm3bzY6vmEbOaAMFv1sZGyTeTw08Gor7ROo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773855893; c=relaxed/simple;
	bh=ruYdycu2B/MskLU42FjIDcUp8H0Q6SofA5NSe6pmJt8=;
	h=To:Subject:From:Message-Id:Date; b=uygJ3SiEh+lhb2mMEQPRP6I3h2V3i6Z7PwCmFMt9CRJKiu39exW8szyWyrbaDe/IGmVCbmxEKrktmZtvsgg/Fi2NFz4cFlEw9d8HpwOJY9jn4rNr9f6HxhXjlODxJ0JA5MwYt4Hiy2AG12R5/lljgpFR1MjsjgFJiqBus1YjIwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLmHdIFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLmHdIFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 971EAC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773855893;
	bh=ruYdycu2B/MskLU42FjIDcUp8H0Q6SofA5NSe6pmJt8=;
	h=To:Subject:From:Date:From;
	b=MLmHdIFyq+iDaMmKVqLk91zQ2UEzqSFh+4SVM8iI6s26RClwD/VUov5uggNuzApo4
	 HzIaEn+BObY7JPU5DLVBog+DkgOWJDSgLjBw3VKF57chfIB2I9nb7KD0SKNfuly1h2
	 nzYtik3KGZxMreTginJSOx1aB0W2h/hQFtLjOiq5cXAtebi/ZU9j4FAnJaEPN3ml8S
	 k2N6xJaFNRe4TKrAk1eG6dCg9zsPBmmZAONceC9Enc8epz8uhUNdCuHu71RHwQT/p7
	 8bZdq+HQjbDbyqq/9mg2fIBbGxFcZdX5Y6cNTwCN5I34zrkjebldbNmfFLdOpzGgPw
	 ucJUMI+WzwfYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F85310775F9
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177385589358.29442.917751244845275889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7f8f6a5f8aa88e4f3599e3bf48cbe786b87c67ec268b17d651f0c48fdc3037
Date: Wed, 18 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773855893
