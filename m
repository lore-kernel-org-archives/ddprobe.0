Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACEA3F8EA2
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786965634; cv=none; b=gTmFkgt8mqPrqGY97QqhIPDJdXpKUNxGWls+6hY68W8YqogGB4c8qlGjFrOeROIbdfeTOa8Ndhqw05750s0SMw14ZrAMEJ6cRO0mZtuo9WqlvFgdLot8XeAy3FqUn2AM1TZY1RSUjY8lZ3dsTBv/lMvX1A6gwO9nvkU14/GYJGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786965634; c=relaxed/simple;
	bh=XSn3xhtX0TbFi0zjA38MGbxp7T07No6nF1ldxU/RZM4=;
	h=To:Subject:From:Message-Id:Date; b=C5eFeBTeWUcAn+CWdY41fRjxy6dXf9/RyZ9n7wHeyAzbyRjhsEFgUy3UYdqZ4BEgYOvJN7GygEAp+HXIQRRQrEcY/ZtptoTWSXqruVnSSA019LUMeH24FDcZcKRbM9FhYckRvRlEz8f/WNl8vttXArdttOCJ2pQVsXpVvLtw30U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGu7+Lcj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGu7+Lcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8D8C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786965633;
	bh=XSn3xhtX0TbFi0zjA38MGbxp7T07No6nF1ldxU/RZM4=;
	h=To:Subject:From:Date:From;
	b=gGu7+LcjwGeTF/ALgO+Hek6Zurg2WSKl7kcza2yXTcfgAmgtO8HFSKXAId8xPMLcb
	 ycK50qKgDrIeHgFQ+muDduf7O8/8qokXkmOJRyib4ZXWLqhCMR4Jfb2+8IHJD1+eOQ
	 TLQL1KBVBHky9BFzmLmfVu/o14n5HT0HIsxG22h6Xe6F+S0GKpldFv2BgpnMHukzz2
	 eA8KLTvqGIxa1qfftQ78vsIZllVpKMyyMFLWqcD8kUaF4Ludu15OGmOw9PHhMdJOqV
	 /aMMa6zV8Z4hnczqZaUXgqZyd6O2e6FaciQVcG/TtWVCpdhyOIrlurBa7+x4FRrMYz
	 UCiE9la5quuEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA0EC5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178696563368.6645.7440963983386747090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 794f6e9be9b83c5a9ef80f17d939c26e823eada451441a6ff0cf1ba75ccaf934
Date: Mon, 17 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786965633
