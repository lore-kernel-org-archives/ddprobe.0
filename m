Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE6413B58B
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759004394; cv=none; b=EfkOi+B+Rgk+G2rzqqEUsiHEIuuBm4a5wT8DYD3q/vwHukvtDuV3Aqc8+XkiSt+WpDREt+6ZYFkAs4AjidGTFT86e/k6WgCzylqwt75bJEdKQaZiaiB6XFVz6cqqKti6SguUG60Dh6XiUp8TQ+79UAtXoawN86HqLFSpjmKLRYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759004394; c=relaxed/simple;
	bh=LynYj0JXikyItsv7KujYRhHtbu5jjUfq/JDJnXM49X8=;
	h=To:Subject:From:Message-Id:Date; b=Ur2YynpaqvY3Z7ADCF8jjOLLGeNOsjtWPm71LkDtuHXTvnAwC70n0H097Mwejq+TdM+LFp9W6WrmICpH+N5ZzIT0mG+riY5NF/o+HKS7Wq+WoGeDrYSvKTVYM3JF4C0TEOvqOWwXHjhvFdzzipw05sWLZ/2LxQOenoR2px16+7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Myk2KQhX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Myk2KQhX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA333C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759004393;
	bh=LynYj0JXikyItsv7KujYRhHtbu5jjUfq/JDJnXM49X8=;
	h=To:Subject:From:Date:From;
	b=Myk2KQhX/0kzyDk9HCxEpe5zymPJr20XN8BXLxFG78dwdUqv5fik6/KKuoLmWhMsS
	 5YmSmFYFsuTdBOGImUCPTHHXSP9ZCgfn77TO3fU4z/xMdjvfQGFNa5PVKmEPr3umxH
	 ZuEfM11Tf2GXoOQqXTJUcqWC8EpONU04N+qwEdsPX2Db6epYNG15vUuN+w4rMfUmhJ
	 7d/oYmbkgT40MbiPgqsgAEXqtlUiA2y6kThjcuZC2AciLAM8rFhQtGyIsc3MOcWuBT
	 +UBPqmNrUlspYmoXHbEOgCE6cGn0wkZbAtIwQCrkeHZ6AaEp/sXh+ERe/xh4i5hQkn
	 0jk7qZEjN39dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EAECAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175900439358.9840.11485714698558163286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f63110d78d0b53355b3e2cea105927d714af72f7cdd980ba681c79ae38f2fcb
Date: Sat, 27 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759004393
