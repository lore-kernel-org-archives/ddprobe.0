Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3205928B40E
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782660514; cv=none; b=gJZoObmrOq6aq7f+r6RssPpkkMic8C2zBhZucBhX2g6wlZazhjjGUCIhgVGlzFexMXuGcEh6w8oQLA5Zvsrj7zngAtYifabAZpVKDI1Izg22VFqYZfXAgcLln+jxYVug/MDBxrv3hfKlLP/ouRtvsYop/jQLE8ktEQX8ZYqBn3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782660514; c=relaxed/simple;
	bh=M5rE4+VTBbKjLqNB2Z8NJgKLYMRNHGQZiyfkrNcPW2Q=;
	h=To:Subject:From:Message-Id:Date; b=LWseaCZMGitA0fhGvqV6JyubP3qtdaUniqkiO7EXMwMrLHktrfgsZVGV/0WTBP3C0nZ/2kItxsFN8xlcbtUfxK9p77lIreXuxerlYZ9MzZle6hU+1qPfPyt5rxLKjM2BYG+ReuxY6S4IhC/i6INaA1FfiLbhZX0QKrD1fPJuD5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L42CrM89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L42CrM89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C44D0C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782660513;
	bh=M5rE4+VTBbKjLqNB2Z8NJgKLYMRNHGQZiyfkrNcPW2Q=;
	h=To:Subject:From:Date:From;
	b=L42CrM89T8zTKVRCPw6OEdCoqNtbuYuS5gWtyCBm4quynNW+HJXza7ad3n5QqyGcj
	 No/MVsTfSJlA+B9J7zPtrFIqHyUIE3RgSiydcRYGAjMvnndMFFMCFPo117PiYqyG41
	 x/5tdsJWuTdh8NuIssXr5xJMKJFkVsgwOFpJxvRSaCeR+Gv787vl3FczZftK+t8qxv
	 rXMk+IexpHnbjy7ujvvcZS5FGgib+mPsPZf14Om4pSn0AQJI/4R/M8XqeoWR9VhukQ
	 pZnGRG0RxvQ7SIBrZiNbvtMlDe8O8zFrVJBcAupvySbLROInLUEixTJlCUmSjzMWXF
	 sRko9DvGRzyNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AEAC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178266051368.6720.1020554487059748344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1522fd83b67491af9865c17779435c762e88a73a55e5990f2f165faf64ff4b3
Date: Sun, 28 Jun 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782660513
