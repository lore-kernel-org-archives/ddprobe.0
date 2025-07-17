Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B272292B49
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752745794; cv=none; b=VkRoju3e/iZs96CU1SD8h4uewtBzgDhQUxiBfk2KvZDXDXXAHy9VQP+gboLtrWpeFEOVGv8pX08V942paGeqeCTG/pI/lduLGbPrHaVDDl02089o1+ndbCAFLYMgZjpdkBpjDpXoP+S/USjjT7TFI8Tn/tijNoCWEOmSU+APGBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752745794; c=relaxed/simple;
	bh=idzxKvUpSfDrTHWZ1NyoyNEuirrKeetwDajG2ektvcs=;
	h=To:Subject:From:Message-Id:Date; b=dctP/mmpWJz6wpemEHXHJPpHBxW1bwp0g1B8OWPPQARhOF+M0TMck8G4bL0qUb7VDO9dBzjgWfSadPq3cpWeEevSGes8tD56/uag5bRvERaP4e23iSJho6BnKdHTB/B6nO+j09gmAyE4wvM8gcBhJh3WVn59DPs9s7mMrNAEbMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpnWdGiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpnWdGiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E9CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752745793;
	bh=idzxKvUpSfDrTHWZ1NyoyNEuirrKeetwDajG2ektvcs=;
	h=To:Subject:From:Date:From;
	b=SpnWdGiEA3xApomTk2jpbbIE/oWlOVLnWO7hjuuyZopQNhqKFWR8cwXLK3NV0wwa9
	 9v4orqY4LqM0u3d806e+vyorLz0BgYhpiu85vl148oAGhKR8susWkBhbc80WQ2IMpm
	 oEt32slHti8IMqVIvQVHa9I0aDccSk1Kh+xDuAYTXleDhzTqwc1rvz1d1V7HMWTm55
	 RqUoO7BTsaJ/aIP8TASATS78bv7Gi1UB1KoRm67RaOo0lS7z+1CwYFcwYy3SjCZxj2
	 KM/tNjBqawFRW+xkaFR6SdbSn0Im1t625Tcec/e1OrecvGblkmNmwTcYKjjulNiiQ9
	 UFZyFU280/ezg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E2BC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175274579358.22190.14911749697908401043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bcece4791d9a9ca20ba419c2edd3fb2a565ad7bc9f8f5e38482140ceb8021c3
Date: Thu, 17 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752745793
