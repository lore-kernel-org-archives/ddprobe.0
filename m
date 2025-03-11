Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408221E833F
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741724934; cv=none; b=mOUNA0NOSVkOJMNyyubgppflzyjVPZkHIJFhWeg5Y6pfHEkDS0pu3n0WGF97KW+5iqwgfQBAUyAJk8CFZvHR9dqWtUvtjYjO3oE+IkFZsb6dcaEejUGJuvDMterPUjipk4PfFVbHIdOecUHA/5JQUs9A/5hSc0vrH7NZrM8fuPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741724934; c=relaxed/simple;
	bh=uMnnAigGiY+b2HFVeu9w1Vc4Ng5dDtfnbYJWRlVRiJA=;
	h=To:Subject:From:Message-Id:Date; b=hbrbHH42k/ZTyV8wb+DW83zHBil0ECyxnxYJDVaLYtWrGV3pyS592XgO1S3teLD3yWzhO/26ZE3aUCwHPgZUw0SORSY/NFBGdYXkjenQUuxH+xyUT0hOzdLHIlCJRwwjNierxPLwFyBJONJCJg8b65AW6AFtXi78lHt9csyVAvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkpOiplG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkpOiplG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DC4C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741724933;
	bh=uMnnAigGiY+b2HFVeu9w1Vc4Ng5dDtfnbYJWRlVRiJA=;
	h=To:Subject:From:Date:From;
	b=PkpOiplGPv3B1lbhyYOXdnqFq4fKFp0mtz820RDXBQqP/ZyX9n/9yogd28dxNUe+r
	 tTGDb7awtQ90VoDfaZCfhWuMEBt9NdM21ROSWrIYvlRIqaeTr0aU1bRpPAjBIR4Xy+
	 yNd6B0goPKmHgsfkbK3Pqxd7SQZGKh6Y6D4puatj/s/Gqa4457L4yIfJVIGSGrWRSU
	 SHnVfBu/ej5VvhqZZXuwJtdTS3HypaWTcaeJDwgRG0NhwO3KRUeatR+ecJVRelQcfx
	 EfToF6DjNTVNDK+ui9iICuLhCHk/JxoeU1a0Vdu1aftcSVMEUeUvfDTvqKZTWd3l7n
	 NPGhAse+6I+Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90501C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174172493358.16814.14593437287499040036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af4a7902f58c2bb93a4b56095c5f63f95a64faf2b5521ada0af68310ec9587b
Date: Tue, 11 Mar 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741724933
