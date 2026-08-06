Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFC6146D5A
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786023634; cv=none; b=ORfDg8L4Ke4YpXH5OWd91Poqtjtq8SYXzWryUZvvfRhkNa4kv/+0z4zhSQayvn+KmPhtQttMDkO9FiQGtK2IDwh58qSiJNlfeQtDhgYgK0+Cd08hKjkYQRbOX1cN1etmWEeoU9yVBWlpVJdTOVG5kPBhoBFgmrXStgqXzy3V1/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786023634; c=relaxed/simple;
	bh=Yke8YQSnpyDr3F+qB2DDRuYvEhqsrSu5mzRjkZDXy/0=;
	h=To:Subject:From:Message-Id:Date; b=e8K8DK074Eas2JulYZl8KfFbpE80W1z4hp/Jecp8Xt/qMaAClZRt/qXNZlun66KVTWGo9k+NtoVRFDFmgrK7AJUBe6BrBdcgwC0MyG8na7yrYfhMIRwMNkIQDN9PUIJyOeLL1gZqWEPX9T+A6dCto3iddtj5PvkDgJtVi+KlfN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWCkJNBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWCkJNBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0E5C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786023633;
	bh=Yke8YQSnpyDr3F+qB2DDRuYvEhqsrSu5mzRjkZDXy/0=;
	h=To:Subject:From:Date:From;
	b=tWCkJNBZB5v6UPB3kOuCBuRM2JcKZ3pIt1MOvco1mJeGLNU3I79tFDN0AEtOhtFIc
	 1LkEpFbiEPDVT9p0ti4f8DmIKYFsh1PNDsXzRuMiNP1Xyol5oKLos0EUgiAWkHOUaV
	 pOQVy9wAR6cz7X6M0FUDw5jgProabAX0CELa/5m453CsFyJZLWtrgt+Cn+EMJzXFww
	 QJgSFMMnIPSn5XV1r6iqxrAAkQmn1+/Ut6HxfiyLZISBn83CAplnkwiDHqTOsHBQM3
	 fjHxozza9zxRsy5j+V6alGdw1+POmyre378cmf/gi5XOsu0SMKwJjUmURIKPY/uCCO
	 3HHOFuZ3rPMLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5A4C56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178602363369.21315.17280871930122072098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb952a6f01d515582d477f7896cfd339fe1652d5025602764d0a14cde3e6aa6
Date: Thu, 06 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786023633
