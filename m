Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E782C9D
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768870434; cv=none; b=pe/wNVxSYYuxoYbw4oPeVh62dnFHJxEC8SisKkFYEBkIAg0NhZcyPI9Jf/I2zAeG9nA+gxVu4s3iwIs9/IeMWVWug1sqMJ4eKyhLi9QljuIFPeb/StyfM3BPZ4YKXNm9dtvU92PGhZHu6mcBaB3EZPOppFndonDl6sxOt916sdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768870434; c=relaxed/simple;
	bh=AAqeJg+bMsFiMYYg5QcIFwq6SxerCu0gK/K0r2/i68Y=;
	h=To:Subject:From:Message-Id:Date; b=nBt8S6Nxv3wH90eOEdZUqp6nuOhu8od5uLl6ySCMxVUfEZcy3jOh6w1lP8/tlgZKmrK9PqqBfkZ2PUFOoGcH/7Kvf/fUsxt+NRrtW8irGry2FsEOFDWOb2j1lXsNEVvaFuRYXpymSJimmmE2w3E9BQHSrGTkkbKQQ0CHsWyy7tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PE5Ub1/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PE5Ub1/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7342C116C6
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768870433;
	bh=AAqeJg+bMsFiMYYg5QcIFwq6SxerCu0gK/K0r2/i68Y=;
	h=To:Subject:From:Date:From;
	b=PE5Ub1/PDO3q/b7JcU9yi06El+eMtR+j8b3cVlX7avGR/HTg6bdCHOnX9gnFA4Kx+
	 MCK2FXW6B1mbMuhChEns8cxI9sALOziS7gW9W2fi6tHg4paEbsronKQ8jYZS0NYzdE
	 kUtu+DYKaQAHZw852Kor/GJoqqqY+plMURiyZXEm0+rbyreeSLFz1ey5R2X54igMOs
	 di24lO8HvPpSlh/iNJrUT4YCTOjyxYxPEjaC/SVIJoo1D8u4S7OSbRJxssY4dvyaT8
	 kZh+tUn+1NaUa2DlhxEwSxuar/HcnAGntkGXMR9MkJwKToGdT+nTgT+JDAeFkG1p++
	 LnbMGn7g6s1CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E48D2ECEF
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176887043358.1519.1767627097947837683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f31adfd3d49f1caafd26f0ec56a1fa8a6a6e476035c824e99e884023e4a073
Date: Tue, 20 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768870433
