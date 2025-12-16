Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179C125776
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765852374; cv=none; b=iV+BtaqYKgVqp65mnDY5y5Get2fLTQs2fMU8GXXDBpKPyG+WdIF3Vtjd2BYn8pqw2cjrOeoPf4GO/hZunbU+KRE7WY6naZNRVkousqFkbKMsAk70/Zlgh883cZSHVautIJwNgPPNcK9q1fT6mfxN9GPgYhPyvYHH0nfLQysrVN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765852374; c=relaxed/simple;
	bh=3ZNWfwnmuPNtstzuSjVjJOPfHrVf+gMKvJ22H40AFRk=;
	h=To:Subject:From:Message-Id:Date; b=DeuEMfVrfYj6SnmxOMr0MXe8Pins5twlL0PVRYhEk6WIkuW1ftFrugtoVYALYPwyJQ8tTmsMjoqnSF9SO6qE4GBi83CDqdUPYYlV0F7Wwd6pLWxVwvuxk3MrNf6UUa2IJK9usx/gSjBcnM3yZ8UHMZOQ8ra5bRJVo7PUajGdzeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ph5Moswc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ph5Moswc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B2DC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765852373;
	bh=3ZNWfwnmuPNtstzuSjVjJOPfHrVf+gMKvJ22H40AFRk=;
	h=To:Subject:From:Date:From;
	b=Ph5Moswclm/2YqV40Oy34kbqYYYcwiVvpY2YGBsOFeoxY8szoQ14Ay45KTLQ3z9Zj
	 KKyCg+Xtg2FFZacviJ+APstp4RfPRcsBzES0XwJZ4A8/IARJORaQS5K0O25r13BJHc
	 ky4qVKgTAbj9RxzR6L2P3MdVUKFc15tPgdTIbL1kbEQHuaGSSmHL9U/4XP8i7uN1BM
	 u7Bn+xz9MuDkuLuGBN8WDBDU6LhM9uz/bvQaofyR0sYVBfGhZJz7wpNsDsxkULluHD
	 b4oy1ZqUkwFgj7CEbYzhUs0SSX2XzMygW1V6DsuhscP+EfVXFh2n3C4lFfAE4jRNmr
	 pHqNIvr5p4ZGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94668D5C0C1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176585237358.24670.3095143148278681639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ad2ad5395714f53a5bf3adedcd623c1336eb609d067fae8aefe4071f2d6c43
Date: Tue, 16 Dec 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765852373
