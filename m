Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF2F3016F7
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784009314; cv=none; b=H63w76zdtDzc9If5IkgzES28JNMZnkaLNBdcJclNkjKvry3yj7bw9XzqdApma5Tx8uucEuMxgwoL5d0Hs3ntGhfScrs3hB/KGVff8K3onjriIB5BGiNCHZLDdV72kq5xqPAEOvUGnBKdWa/T2/AWJXAbaeo08wDx+9ZTwpmdWSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784009314; c=relaxed/simple;
	bh=n0FkzM2LMfVm/CA7QfNCV01QpX7r1nIHkmzLIfcF9dQ=;
	h=To:Subject:From:Message-Id:Date; b=RR+IUZHEng86ZPKlwuyP3cwMT+vrHXBEft2ecYptwQhmvqvuTUwthAwuTv/RjrUBSEXRRAQeA5cI/ZGopQdJgWX2Tk4Q+vGiZw62ocJj9JKJl/AScWDmrgVVGDbWMTNXOfeqwjeh+3D7skdpgi3X4w1IVh4KrN4TVnhwSbZ4ulI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeWY/zgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeWY/zgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8DD9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784009313;
	bh=n0FkzM2LMfVm/CA7QfNCV01QpX7r1nIHkmzLIfcF9dQ=;
	h=To:Subject:From:Date:From;
	b=XeWY/zgHmgHGaPO3Msa9MlWSbYZwMOf5vZP01IFEr6RjK6TjGOiHGSDIP8CTRJzQN
	 hEsxhujxThNyQDTJUZBAJkKR+glpOuYJdnGJX8OxXags1wDNo4Yub7CstNUXcw/Xna
	 FOo6YpBw86tvbW+q5ywbG0csPk9yVJW69l59tnkHsr5hWRZrUBcs03WCx+sadvvdxw
	 GlK+MCeEWk1Fo5A8CGQgGTvaHuC6pSnCbKXL+xu+NCGG6qHtvLbzaXzXhEQ1VFGpV5
	 pGASkziVcNrfTTva98XbHkgbmpAJRLgUwL8nXl0jwjtQffxKVk4Tz29HfDxGO9X6W4
	 SQNRWgt/5Jb7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E28C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178400931368.30455.1250502876128079393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0d1c89562afeea9533fb6f8e8d995b619a42407bcd95ed066b8d24c2115e963
Date: Tue, 14 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784009313
