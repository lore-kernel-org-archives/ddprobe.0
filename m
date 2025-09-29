Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A03285072
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759137594; cv=none; b=habx2xT8l97SD2Y0qUUPlOky8gbYBpHqQMOK4H2AtdNMQE803gpSMGiZO8++o4b1bVplQ4VwWCj0yQ4tYjIIobEwKXLExEhvvmHIUhFqKn1dl643gdVs3GWqz0q2uPwOJFwiIknwS2/glw/tEUTeOK7jnfe/hXC7y6WNgg7QUkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759137594; c=relaxed/simple;
	bh=5lKC/98Qwa2oROS7Pc4UMhsLuklG73kQNG1a6IhupJA=;
	h=To:Subject:From:Message-Id:Date; b=R4SlncLFmwjzU8RxEykyHUXGuP4lYQJfpKialasLzxktsC0Q3d6HJi6F5ocrknwoWQvTz54hh8X94yBnXvt+lPTY5PMci7hvWBlo3tuquoXr7+7JEyRqn0YB78v4DpUJjOxgrTdFui5LmfENkPebWnDq6ldV5fbmTFSK6VYuNt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLCXa3vW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLCXa3vW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4144C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759137593;
	bh=5lKC/98Qwa2oROS7Pc4UMhsLuklG73kQNG1a6IhupJA=;
	h=To:Subject:From:Date:From;
	b=ZLCXa3vWDkcL6APqcbtaHmNMXYfeX65hn8AkbjlYoR3gfyc9RzWCZjavjXZjxKFCk
	 a2EdpyqqLO9qU8A4RUAnWI34e88j1P/U7rYWxd6LdKShaG1XcdgXdezB2XpPxsWwLE
	 cw4ZkCsI8udZPFeXweqijhM5A2oBvyWD2irghP6lUYa16y6H+LKGxICZ4TeiNGDZf9
	 ngOb5eek2kFtimx25Cm7OxsBe5/pY5rIqO+Tpc99o+C92fC17hcsszDzhHs4VFcXi+
	 DeQMs7K+gUKqUpSLmGNhK4ELuMuzmRvOIRbyPdK0YJHBzDieNvcR2wknJAxSCLkzec
	 ZyJuyuMiEpG6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CE1CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175913759357.12924.17261360262757496843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be0cadc6a7f41f86cd3044ce3bbcf1a090c9bca9fcf6b7f903e25f4cc04fca0
Date: Mon, 29 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759137593
