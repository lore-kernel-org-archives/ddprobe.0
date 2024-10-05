Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2605E38FA6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728135354; cv=none; b=a7XRLxPOENvLPdaEvViToCjtPHqFkbKCCiXavOYBEb5UDkvFkqmYYzJOsWElqAZ/6xNZP0TKZzQ58McCqZCfrhZPs8coZeZ1J7+8t8bbc/py2WkaCUjeAk8hwVIdt+JZBG+Kn1Ul123HTtWnstNbgUkyFGnOHNo4oOqijWhvv48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728135354; c=relaxed/simple;
	bh=eKlN5b8os1GO/eyBSinmz7DRvC0BYxANT1tsF9+Te7Q=;
	h=To:Subject:From:Message-Id:Date; b=dFYgnMdQRVIlckaYTQkxC1dRdPKBM3mUnoGruS9K8csK9gbgqmNkKEOq2fp1dkrPtzc80QuCjqdZYlOxBMVFMHu7zvHmy1SXEOgaG5nCzfgMhyfFD1lOjVHaY3MLP4JNTOTeU8UVrEJ+ERlAH1d00lvL/B36FYrbloO6YIMVq8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icRzmqmH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icRzmqmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6400C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728135353;
	bh=eKlN5b8os1GO/eyBSinmz7DRvC0BYxANT1tsF9+Te7Q=;
	h=To:Subject:From:Date:From;
	b=icRzmqmHWJtYJydRz1fpbbgIi/JPALyd7KfhBcHGWKD/VjRQEoqWEBWzTyNYEJ3qg
	 coM/FS8G62SbIcN5qRa5VZAc+68OwO3yDa39ZJq1hDLE4uESD+DimfYlZUfDaEpxti
	 51vw/q7mGxZSZShn3ESJJbReLW1btFalmMQCtZX2wrA6A5xpcZVDa4ZVhq/wVnkTK0
	 7gCp/XMziifvgJinUeWdSXgKfqUQqvSIoFaqF6wxUZ1aCwrAjpez/iy3ZMPw8zdaiQ
	 GWBQikh4AgS06LUfProUR5hISHk1cRB1t5Cbu0CQREysEEP1VeSwjWPGGB6DX+Qmio
	 piuByB9V7xC4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD62CF8878
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172813535361.25871.18425281302580472018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c01435800db31dd026d189f871d078fa59334de3b17f42b45bbcdc1e80b62d
Date: Sat, 05 Oct 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728135353
