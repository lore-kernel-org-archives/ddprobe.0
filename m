Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2A943B6C9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786557634; cv=none; b=hEegROvi/gXoUBrxLRrYIO1Q51JqJDo3ewSxW2Y6X+0NSqsIxmJDyDKDzUp0BXD6iN8lNhEzzfJ4DGkQlCuKi240Dm7J6LIcwr0McVxpXbPGG/S4XjUPOEI47ayCqj+ExcNxyJq8/dt03qAvFW5iE+cBLyUhdz9+VrMxFQ33pVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786557634; c=relaxed/simple;
	bh=UxmVO8EPFt1Y53dn8yc8jN9Aez1BkG0K6OBMRlxcNDE=;
	h=To:Subject:From:Message-Id:Date; b=QBCxJPTlv5zSIqd6OVDyDMdmVwqQrx3QydMTxyoNeDT8JNwhlhN3dnzNCb2QV4+Q2RuIXR50hfPVADIiJ1T1vHDb6t+i2KV4uU1RqwctJFHaGaOmC0BFBodgAAtjugmVhKwCtMV1zmev+6DNaVD/vGzDvHbhljEhsCnXNXWd1xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIvtei1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIvtei1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1ACC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786557633;
	bh=UxmVO8EPFt1Y53dn8yc8jN9Aez1BkG0K6OBMRlxcNDE=;
	h=To:Subject:From:Date:From;
	b=jIvtei1vWK4yvTRjIIPz57xCwVdEUfEqMQV2bLFvYlmYj6JbpQE9I0koG/ttIV7YT
	 qWnhlIwy1G9K5os5nqdQN+1pDLMEfzgpGJ8TC9q4SFtMee7++b3M9OcC5xP/dHT+wB
	 Ik50bXkxd+dtyRuRF8LwuU7EGWtEZyPD3BJptRcMc5fxnsE3DmA9D2TFLxB9Pz1CNW
	 KVVObfvDOEUt8OIzQU11TTG0xbZue/kA+hTfsfltgu4T58eB/4OseCSNIIv+f+jZ6v
	 E02jRX77qtzJwAiUf/kXxapzrsHTngsmLGe+BGC3VfKiS+7vTzWYDUFkNKegUbLsID
	 SHBa2kRreVSbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A61C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178655763372.14527.17619318929429884328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b50e564f24cb20ffe5b2b04602984df32439be9452d392079327f92516bf3b
Date: Wed, 12 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786557633
