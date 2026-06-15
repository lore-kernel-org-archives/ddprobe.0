Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433F235AC12
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781509594; cv=none; b=BlCgXDcLZtUenVdFu/DnwzO2MLHMhSgMrHZatw/6OhTgX0Qo/cLpHLWm0JrixF0Gsh+l91fIRjS4TvfJgralqieGjkmeFJach+S7DjPP1ADxQh40wIY/KVfZiLJJ9xfOKNr0LGuSDuiF7/lBvNNnkeL5SY+3n/4OlrAzUPacqI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781509594; c=relaxed/simple;
	bh=wS1fRqbEF/yzlBqqE1m4S2WmfBJ03c/icn0vd1RcXOY=;
	h=To:Subject:From:Message-Id:Date; b=doZVEe6ynn9OXtauSKw46S+K8vX3WZ435rZTXEfKztJTkdZQRtvjR81WOrcQGIH02JJXNV7zZHBpczo8Uw+qLWEWaVbffc4F7ISV0ZzDhTLZKTZbHXIwbh7XaSX9k0qg0+dar56QfjaQrL9tieFlLP8C+Cz/WmRVBgFOnrf8+sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBVzXyuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBVzXyuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA7EC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781509593;
	bh=wS1fRqbEF/yzlBqqE1m4S2WmfBJ03c/icn0vd1RcXOY=;
	h=To:Subject:From:Date:From;
	b=kBVzXyuECXQe6U0fHfxCK9N8DgnvT6D6Lb1U1XQtDSWcmZxaElzb69gsXSYdWA360
	 CTxdpNhX4kkRy+MHjRmjD+cxYs2kYw0CxcQ1QzyYgIIpJqx0vDwHk0ftqqtq76vp5z
	 iLJgw7Ofqt9fOgSjLStCGUXPqYbsicKvaucFOeluANQNL9u1S3XHoX3zaEEES4CKyX
	 HbLzfFkF3RSANMhvPev1Kp4xMb7F0qB0/pmO8FryZ2aAKENJgG7DTLYebBDO9iJNSE
	 +7240lY4aUVhFQ/GrEpMF1ofGwlh0IXUrmIhFR7vUzSI+zwUCbR+nSVaIKHVTn4Cwa
	 hpsA30ag1M3Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB990CD98D6
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178150959369.8850.8144172282853106624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876ec12842a6d3cff4aae9a9b9fca1fefabdb093e0d7a981b06ff97b8926d755
Date: Mon, 15 Jun 2026 07:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781509593
