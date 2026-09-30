Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82DE2FD696
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790781034; cv=none; b=TuPUInYwlfEctNvvdm71MLXSxRL9ODY2NgHt78MyNLeA86QpXxi6HL5ZjlYQhbN1v5bZumrNwObx4Tvb1lKquQCxgwHIUhrWmQgi+6tohG/T4DpZHrapNo9O+6qpdZnqPga/V/SSoI73dPZ/SEPwEADr8YJCS+7tHJaF10vdSdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790781034; c=relaxed/simple;
	bh=8XvWUGjFiQh/y7h/+J1Et7L4eNAigXzYPgmFkETiN8A=;
	h=To:Subject:From:Message-Id:Date; b=sXvdVc9b1b/X21Q4Z+EpDGNDk+vUnW8OogaoU7m15iuuFqbCEnaZqkWRj18tag1XOZrikvAhmjoFdX25MPOncP9bcKdzg1KsTBn0yXxoFxQ9cAlbYxiskk6lzcTErwUjdFh3RC7MUSAfT19iTBX7zsRajhVhExf4hzDZnGQ/smE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tq5PhU7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tq5PhU7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC0EC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790781033;
	bh=8XvWUGjFiQh/y7h/+J1Et7L4eNAigXzYPgmFkETiN8A=;
	h=To:Subject:From:Date:From;
	b=Tq5PhU7uyTNVwMDSb/G0pnQmksrjcDZoO3CDCBSXAnosjeYQZhAFAu7MGD9t0EuOo
	 0NPytpmH/IK2kmUAl/nKBXGhM3NfMj7YhJ6ZPemBt0sxMZw4RhPpsvNXUc0sUjsDCF
	 GBJQYDWiHnSA2/D2odXtPGTMve9pHB5m22/GHdtqE5jHdIaHVRHs6kezqg+oAe6ZgM
	 2sSM/0O64FdOhJIshsw2VOd02mmSP0sd09OL+xB55ftdvUIm7lzUa7wSOyh+bXjWfW
	 m/rmWBTfBrA7vkV9pQf0HH5sGFXc8yZ26YXtDndiyUQZTzNi/Vr9QKf6vt9iDAfT8j
	 fLRPzNotbFppg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD49CA5FC7
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179078103369.6970.5542097615916762218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20033cf5887fe57f0d2486f4891339bb579490d4da03740233abb7010acaf41f
Date: Wed, 30 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790781033
