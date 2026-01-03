Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EB0253958
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767479034; cv=none; b=LarKVX+ZRaCcXGcOAcVDzFo7frCl83PDjg8HaLpHbexHgXWktZEMxOTKE8P7JhKgHspXZPfH8x2NsGuaz4KfztECYn4y+Kbh0xlK89PGoW3g6vMLoOl3z/hsWZ7abVhd5BbzsnSw7Tfs6AA1wrlNDNVtTGRpSQBHGda5js7WKPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767479034; c=relaxed/simple;
	bh=VKrdrFXSjacx0iVJ7dTsajx17Yf5Ua1FSrdm0HwfkRs=;
	h=To:Subject:From:Message-Id:Date; b=jXPVwVkL4qvyf5bLVEyXAI/VH/+A8KWeM4GmjPoYlnNZBEIF3UuoNGfSZ7zlAEFk348/jujp13H8g6reAhC2YNBALX+ks9/qAtIcNC7OWiIsCjsAOwqMRyy5ro4Bz2cZeCNYYZZWgpGEPFmUbKjQ7i5ox09Y+Ld9jH9666NjGzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bysCW796; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bysCW796"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FC9C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767479033;
	bh=VKrdrFXSjacx0iVJ7dTsajx17Yf5Ua1FSrdm0HwfkRs=;
	h=To:Subject:From:Date:From;
	b=bysCW796Pj6JYmZvvzBlXWPn8ELQIfhHd6Un4jutpYZ6SGUK4vKknqWjG9B2nP8Mn
	 kAfH1968bmDLYf5oQEKYdNqYmmUrlXPv/DhbHGe/WreMwFJpZ26ImIaPZ8/BjaogRJ
	 8ffI/gLrct8rBYDO2bqKAA0rSI5wr92eGO3iiXnp0YXXzKbB8FJ3QG6fnkWg3B3++k
	 WsHIT18r08ZpghFBxJ9tR/wt8p8y+U3VTLxtsu2OUQjvmUCZD+sY/h1BwacpNBHSnY
	 13JL8NBaIbOtEdVLurAsGH4Bf6ipZbDeF1XDyIKRs/NwyXuS1DeNDC95XWJkMdQKOH
	 BRp0fyxdsj9gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F5EFC6182
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176747903357.3081.15522009201791609337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 421129eaef7d1c5f8f3f2e27aa80db896b5d36cbd6bf12b85e4d6fe8668922fb
Date: Sat, 03 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767479033
