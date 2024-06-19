Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1115D7FBB4
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 09:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718789363; cv=none; b=n1eXvtEyIV9c/VIWj2CUwQ2qSgKJyi46FMZ8Se+2wGQv4zpRl/gCy8o6EHqUzMhWQytt8+naetp9NqAAIMsgL0aAt6ZQ4o/skqn5DLdSoxONILbihWzHQOp1Iya/RezIjSHwp53w7eSU4f3ae7xvD/5IvNQq+BsMapFMo9k0wrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718789363; c=relaxed/simple;
	bh=NuALtZXXv0zsW2AUf7f4E+Eo+Dy9BMiUuLQKlorfcCs=;
	h=To:Subject:From:Message-Id:Date; b=j+okXzU2A4zVFGwXEIkwuxDgAE2oloWCl9Ap5xx4L5iUXe3PqFBPI7+VlriPv7q+FhY2EbRHaOzuJABU/ztDzU4Kwkg4LUnaIvdXmmaTS9HBJlWNlPMdrfgqntYjspeqmpaIl2UJA8thhxDCw6sC5bggtUDNpPKIQUFuz2iM7fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7IPRQoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7IPRQoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A95C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 09:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718789362;
	bh=NuALtZXXv0zsW2AUf7f4E+Eo+Dy9BMiUuLQKlorfcCs=;
	h=To:Subject:From:Date:From;
	b=Q7IPRQoT1r3tLYcu3KFuvVn3IlBh49yo7b6HEvQdRZAsmtQEpR8HvGg5/Bitee7IQ
	 /oPMPbcsbRMB+LtYlehEIHYF9fPszLhF9SjY63MNetiJoyLpgLiNYZCBoEh7jm1SvI
	 sW0x6b/f1oWrx390+ttVUr1knrR1z5NhqthW48S6oh7bypyBTT8VISB5es2R4ZpZTG
	 /Ku3ORoBGPQR9gRYY9KMjDJZYJVmKN5T6vWP/tDjnwCUQf5KhZFegttUs662e/dik5
	 7Thg6xPSJBe+Lgmz4P6nFDdkfYItmMt1clz1OdZQ72fTHeJaGGSXnEZSUwlxusvmAk
	 wg8ARGRUa0V3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF62BC2BA15
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 09:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171878936277.31016.5417982426414852707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d15dbad100dd226fb41dc40d5f11c43e9a6e84dba3c39c3d1cee7e1e5358aebb
Date: Wed, 19 Jun 2024 09:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718789362
