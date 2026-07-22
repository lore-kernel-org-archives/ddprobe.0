Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99A79379C38
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784711314; cv=none; b=BYuKMpp1tEgpMF5wqcjRACPmvUsshcWxvcTHAdVgtZEiAk2oxwn8m6fS2+CM/wcMaMUS2FcnzRlDOxyOmR6ZJN6KOYYzt5NQub/+GCg1j28xMPBLeooAKzmFshao9NA6mAzdqMor3mjs7DJdOLmZ8+tmcbNCLiu/nrjpQHREMoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784711314; c=relaxed/simple;
	bh=1v6ojfs3QGzFiM+4fJYm4+44Wd4GU3gbyyrTS9jX/bY=;
	h=To:Subject:From:Message-Id:Date; b=pj7XJSG6ON9UV3x1MdgE1LoduV+c8ptvJI5t1JGe+ieVY6gZJlOSwJrvlp3ej03M72X2Mcqhl1WPhDTq+9Y7J8z+sHGc69I6RxZzifK2BI3exdWCKkf106yG7SpJM8KRH8siNEillN1PfbI7bSvYHEkVJ4Wq/gTs/8a2t0a0d6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDka9sBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDka9sBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2FC6BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784711314;
	bh=1v6ojfs3QGzFiM+4fJYm4+44Wd4GU3gbyyrTS9jX/bY=;
	h=To:Subject:From:Date:From;
	b=eDka9sBAqN+yaBmJQzvvDZP67jIsAsxra8nbaATu4w3N6q4afBLlkLv/AjvkBR3Zf
	 swr7TmTDhciHRzgdTrEwbG2UPi4ANvU6nav+9MaS07Jt1H6tXot5kSFP4MFUSurwBI
	 RCZ6+93BAoFcenmN6eV3ZLQ80vCtieR8oTfhND7hXG84+ACSdQoABLy68VkeER8upr
	 ZgrDn1MR28wPMxZLLUrbwVwdv/F+pGnKjazu2vRIIxXNIrogOBadZzhK7WfthvmE2N
	 RhKx+kogtVNboz9rmGQsjaYLEP0drIeNsZxlhmsH7GQHeQvOnldB2kn6jsWgs0gCRI
	 HSM4XDuYZy1aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D68A5C44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178471131385.8066.10860915800830262306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83c55a12397a5749aeda3ad507677bdc7d3711dd14ab56e701b7c434fc76bd4
Date: Wed, 22 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784711313
