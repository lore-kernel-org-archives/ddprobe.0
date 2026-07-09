Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7B1DF6C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783559914; cv=none; b=DFgGtdlminVoFtuu1f7HCSnIckxi2kMYg5S8C17mfXrJ6FYveRH2TiSHd5GJLXKlM6Zzg54cGou9FgUE4bodvbtdeGJw53TiA3UqHOw8N9bGplV8sIRKY19m1ghcNQcchMR10Ojk0ldnrWe96gJwW1u79Rd7uZM4lXup6iiVWoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783559914; c=relaxed/simple;
	bh=VmoSmmlqZy6cyaJlpWbyTzaEH8L4MpBunxuTQBduYWE=;
	h=To:Subject:From:Message-Id:Date; b=AAqkVsJIy4u5FWl8gAw2ef541W/G83dzbcnJUcDWzy9+9ZJl6sy3ChTcnZ9tHS19ko3a/i0X94vQF7yckIG2xyq/NvRik3P0KoQOJfU/Ie/7/9QpBpYCnqr1lOZq+dw7rX8iP1CLJiSWafGMI7ufaOmH66QQ99u89U4kH9cVDbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqtFexVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqtFexVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2C3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783559913;
	bh=VmoSmmlqZy6cyaJlpWbyTzaEH8L4MpBunxuTQBduYWE=;
	h=To:Subject:From:Date:From;
	b=bqtFexVmynIvZa4DDE+WAd3Eb3FCjZql9O7fr7Ux1ENFuT/3Sd2fMzHStCU+Rs7qK
	 M/FssABwvcQT9V+SCorHgz7ogot3mRoiRyUD2zt5xF6NsqdfvDnt/bMNquBTircoow
	 TB5H198OJ6GE9jL8fYi4GzDSAulFwBEJ2bBXGIpL8kqWQj6a1/B65h6rh0bW5YEU8L
	 vVK5oZbYFtyz5EB82qOxGzg/xVvU8PXu6zcGlUEAS3POdXf1b23ur+M7zFLSdCGj+1
	 kQE3JtiOWqEOS5RIfQOUM04fzcRdWwLxjZ0NWPc09yrEFmbES6nN4JDKIKzaZnYV2t
	 FjTF8D0wZiBdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB47DC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178355991368.2386.14842118594932042473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ed62ea42fdd0c8ba0dcbda91c6a3cd345c2e8ece440eacbb5a399ab6de4ddf
Date: Thu, 09 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783559913
