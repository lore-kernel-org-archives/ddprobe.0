Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6674AC13B
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 03:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713585023; cv=none; b=X/mbcbXPjalysc2I5DSyVO2H/HrsaUTmSfajyjhWHe//csjCaPMdji0ifVnio5FbooLwMhUyPadAk2Z7R5zBT6AzRhDD3ZK7MJAsM9IRrshIgrvx7Qs99xmX96uF2w9Kh/LC0N8R+Wv5nTUxflznx9XGul8OOpf/iNVRKtfrRJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713585023; c=relaxed/simple;
	bh=U5DF5XroKuPjvdBeTl85rbrAprjzGVQb68c6RcWlYWY=;
	h=To:Subject:From:Message-Id:Date; b=bvwC7/yM336+p44bOZtY3l9V2UkREDhDPWw/WkLZmqu8UdjZNlAsx3nu3AeR326YNUK4sCePY64zMut+tbj1K8/by9XMopvU7F0MDxA7lSU9P5jGczwwE0ieEkfWWwVrVLsu6+frUtOb2NT4cEUgiE+T9hUZTQvn0aMo9MvJudc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWjdtuFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWjdtuFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3EFDC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 03:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713585022;
	bh=U5DF5XroKuPjvdBeTl85rbrAprjzGVQb68c6RcWlYWY=;
	h=To:Subject:From:Date:From;
	b=oWjdtuFHuFTYEP3MRrWF+PkmTRJTBepm2Uau7qvvDggPQnJWSgfw5ec+ej6fqjvbC
	 O/MLyvMYpj9mD9fGMdcQGuhNqXKHc6TVLe/bNBlqJTSsfnbYUbPHXZ6yRDKk6hU8C8
	 t1YZF0zCsD7xmLe/iyAodSTOC7/TFNZH4qXSK7DCaRHdsHrAZLmlngSVSdo8329DR7
	 NQIg+3n09CkKYmaUhe0mYKn4/oPA9V8k7UdolQ9m4xnYUaaTY8UcUqqeZLkagrN44P
	 bia4KigOEWFJAZcLf8t/HHUfzILvhPJ6feeNK2TvtL2Y4jqESLZogShOiIgJ9tfdOD
	 AJCTGSc9SlKrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C72D8C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 03:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171358502278.18893.8107970692706312240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8691e44e346947be7739931622468c2c8283c71f5911bb458d37b2e7eba1c6
Date: Sat, 20 Apr 2024 03:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713585022
