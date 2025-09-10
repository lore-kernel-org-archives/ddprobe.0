Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F54D18FC97
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757501994; cv=none; b=e20ixnhvDCfs4s1aKJVK98/JXv4hUJUffDtoDzwZT8EixdjpPu1qYvxMOsAbEtkhOUJhLWToRyoSiOyezGV1ZgZWI3/NKdyq+X+qHeMGtnEU3wO4Im/FtAH037D/dQXA7Cr8PmP4tr7bYj98QJEKTmFDRUThlr3QECfskBXHa9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757501994; c=relaxed/simple;
	bh=9DD+wP+Gj9dVMtVml+4iGZyGeiTdoKDMlDZUe4qNCRE=;
	h=To:Subject:From:Message-Id:Date; b=ErspYJFHMD0S0V+8qeptPr5N/8+jQ21hzUkqnokxTi5butauszPE4sy+qqDBxh7HNT/Bfbl4jcoUoG9uFrchY2MkrR028d5RYLIYKx8uIFofo1upV/5Kqb2+KJNB4KM4NsWAExdIqpdRURxpncrm0pu54Ry2UCH66tYodDpWk4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5DyC9RN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5DyC9RN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09F0C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757501993;
	bh=9DD+wP+Gj9dVMtVml+4iGZyGeiTdoKDMlDZUe4qNCRE=;
	h=To:Subject:From:Date:From;
	b=P5DyC9RNafBVAEWJ9Y4AFziwfohc1Q+7G/dQ2kGM91YxldNHKLcbo4/vxCzoo9Jby
	 ornPLAx2zGEFXKFhelnjaAWh6wzKxjcZRHnHM9F7F6bkeJbIYQfiEIZFbu3lYZ7d4k
	 NFDMwPTqNvmOcUERrhJk1sgL8yT3LJTDb/XuudmIZxbUD/Jpry4/VJ4hzgNyWeE8aS
	 mW+gh14UsclCU5WCJujRG/oROv2HzVXofVKK+qZIQ7putZNVkl1ihAobLF6V0q2/r6
	 K0OeqbQOdtB7+b2wzBI8+mLhoivEJ/2xOtkXiQ7dvxaGGIwA6bH5ajwIbH10gXA9Fv
	 g6eZ5lHafJvPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90047CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175750199358.22978.417713452822109443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9a5800704f4c9bb73caf31bda21129d7194b90fd9821014b8b213ffb752d2d6
Date: Wed, 10 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757501993
