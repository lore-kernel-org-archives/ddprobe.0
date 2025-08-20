Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269C313A3F7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755652194; cv=none; b=vGX83l9yjx+kbKQgMMKgihwm7th7ad6euK0wduoG7keaZM2RY40CRvj1VrowXVvJ4dCW14a5BeLTD7aH9Ks0HgvQnOfCA9Tbr7+IGk7jD8vcip29HJoszQByVjOrmpb6YlqGikLiYniEYrBgP9hloOVncBPDdMTEi/BCPDaCPl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755652194; c=relaxed/simple;
	bh=3uNBnBmkzPgeAl3wvHhMom81o85aXWUGPgqO5AXoiCU=;
	h=To:Subject:From:Message-Id:Date; b=CK4HPImY2Ub8n5mOCxluZlnis36cB6XGlSRqum+RWlM8yuOOYsT5a5cIUyx7X013C8pkQfaaWlyw3ZkKPHY46T6sSEjyy2Lc9MygdHtf3EHAmZHRJ+YlOBaKUL6h3A4MjE0sd7BXRyXn/BPdXfII4BeT8/76tkj3995VJqTHMRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcLquIAI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcLquIAI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB14C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755652193;
	bh=3uNBnBmkzPgeAl3wvHhMom81o85aXWUGPgqO5AXoiCU=;
	h=To:Subject:From:Date:From;
	b=tcLquIAI8Ypl3s/07UrPihsIs7Wdc76O2gBi0H2Wotsvn0X4YmyECGkHEt0gnMbgJ
	 JZj3nXgrKlxqxgKbowVjwpllQye05gAsQN4F0eD0w3inOMrlLW19V3S62TaSxwygdM
	 m/TMJddGRiFGgBq1+/+okp3Bw9EoqpIJg8W2sQ1lrpcdxXenvnm77iCPtyLkDgzxsy
	 3S37EtqYp5pXg/E3rFX6navi3OBN0O9+ivAfF4rug5EuXqXyXJ0GpbX6Cmqnp3VkNC
	 r9hH2Y6ziCUn3c8Tx6/0Ub8sHVOlZWwgJLJ3rpGi1MfE5b1fzrCbOYEXURuIEY6Vg1
	 CkyfAhsXvdCqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E825CA0EE6
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175565219357.32112.6268968282566316555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae215e2ea1fe1c27f8364564dedf8feda8e975b23f0c81364639ad4f16c9cb6
Date: Wed, 20 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755652193
