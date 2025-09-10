Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F0131D397
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757464794; cv=none; b=MaGjhdIPP6CSIjTtZ1SYaJoMJG5/mflH/uktTLFUfwwt/dJZk6fq5Nm/TLTLn995G6ngVobmHhEXxoPoO8MX+njinUdX/lO1bx0jMlTKJppB+D76G3ZimgVfBchGXkzDF0yeSKy52aUrNx1/cZoBEZfT0lYR5vNLF/Bss1qkrfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757464794; c=relaxed/simple;
	bh=ACugDY4ivOCSQ4rKlWZsCoXFdHTDXngDRmwSI8RRHjQ=;
	h=To:Subject:From:Message-Id:Date; b=I0Ofed+pneBmLTz1Lwi1P6/XORgXoVNEi9bbno6sDzzD69l+HxWXN+6pgrFZ/OSY3MMnxT+S5H/jgm+0t6C4S8NM3TCg+aOgTWGsJE+WrCUWuoW40c7oZtCfKm2s85P4V/vIXzhtbZaPEmuqDiejZqwcaLFni747tV3/8zG4QLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1eL2n5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1eL2n5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BB9C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757464793;
	bh=ACugDY4ivOCSQ4rKlWZsCoXFdHTDXngDRmwSI8RRHjQ=;
	h=To:Subject:From:Date:From;
	b=f1eL2n5XiQLQrCFD6HZa1ZPAFwrxjFz+862mkLUQ8RD6x96gobLxrkV/GOV18ULyM
	 U9alAgHE3Cw+/PvgS6VBvK1oM8oYDazTgUEfUeb2Lsxm1s6sAJOPKT0bdwDXwIKcJB
	 M00o/MIkFPLxWwI9etsS/A6bSwqneN5UDhbwqWFFxt0qCF7RYtC3FAldtS9cMO/3cc
	 ddvkzD8fPJgm7SBC9NLO4gIIfJpNkMlwkNUn77J3o33B6PIVQMHo3OdzAmdVLtiXJE
	 S9LeK5/aUY3ggQIF38IUy/npVgrPMjhoVW3ySVaNTWd5fG+aUouMdg8dommbtfrqo0
	 ffm1fzQ9+QDbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E247CAC582
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175746479357.6529.10583214080054663595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c62474b2bc8b61e8c4739c8fbb9e137a5aa080f4142c06fc5c17af76e19e319c
Date: Wed, 10 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757464793
