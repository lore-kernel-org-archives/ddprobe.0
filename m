Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169A02DECBA
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761701994; cv=none; b=pfWlkLjBhqbxPKzKIdChy6EfVbsxz/nHaIlqw9sr+fK5n4nncCailvzHX8wvE9P5Rsiv6C3jrT9tmw8X4kR3Ti4iiPnzacFlix2+7zrXyCGGFkXoEZIiYYwjElbvww90bz6dbIHzjncNBgvjb6nAQZpiPkkrVnXfaajI1owu+mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761701994; c=relaxed/simple;
	bh=pbciGaUVwSViIyihNQ+ujrkd6sABiriFJjRlobV4zvM=;
	h=To:Subject:From:Message-Id:Date; b=TySTKuwVnICelKhg6u2EH2VwsRByQOsmAVvMLK5vM5Gcg/mzdFefkp+LL672p5/i+YHUUIUHqFfe48x9Oe8HioZxwrMTBnChsybx5BomR6phzcbPBoULlBo0Bo4T8IFFwmZ4TJck+y3Sf7Y647AE9hv6xQ+kExV/hQirU4TADoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0wY+B17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0wY+B17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2946C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761701993;
	bh=pbciGaUVwSViIyihNQ+ujrkd6sABiriFJjRlobV4zvM=;
	h=To:Subject:From:Date:From;
	b=h0wY+B17/pKJNeF3/gYoSip4ht7Q48RIm8EZGdMzV8OJV3xyjHtQQXh8L4aw9/GAB
	 MRoszoRR83RyGigDGnlMlykW90VxVs4HEFuP9XmaF1PyhE4bTYjCxEQUExQu03Y6sM
	 ZnSNxhJuHmiWUsXtsl9q4qxJ8vqR/q/DXSdIFEYsIkzJbWp62OmeVMLLLzv7xn/bL5
	 dibM4XgVY8VYxQ08kzUOUqJZn1LH7udHJzO+OPU6QKL6YxRFfAtvn6iyDvR56ze0Ss
	 EzraE35UqmM3n/4jfJk5H/KkR/QQRdN6zjtjmIzXroBcDj00jmyHhjHr6JPPTshNYa
	 7mQYDWL6h374w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B93CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176170199358.26546.13622788794304360000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daee36f4752f386bb7ad4cc85a39a2e7a04c51845100d8b15953bf9a02bf64ec
Date: Wed, 29 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761701993
