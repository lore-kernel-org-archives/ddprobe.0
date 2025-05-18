Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABFF2CA6
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747577395; cv=none; b=jJlLtGVek4P4YkJUMWVuhU6k3eqm208sEp1BX8+N2zdGGIcCFONvadmPyQ9xrrf8MiFl6ERGXWeoLgbG4APvhummmqVRiIyIbjT49Ju6bFC//CIsan0LB5+5HSuOFJ83TLXJiu7PCSaYHyqnDj2gkCiBH6eIv7f687ZkH8yTehE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747577395; c=relaxed/simple;
	bh=w76SCKp3ncHFo2eSCsRC8ncfC9w+XiWympt5Tiezptc=;
	h=To:Subject:From:Message-Id:Date; b=jddJDPPiqA99Y1hdf8X/HiEF9yEb50WHmSkf4xsWMY6boHjmL0SXKNZQGI543Wm/sRxzaACQlrY4BzSsSAnC3DhBhOX4TZyNb6CFiMGSTbwc6llPEkPcUkapveg5PPIVaracLp2JAX7WAMWciz730ieiOk6IUP+aSJvErN3HAt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLq1+iIB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLq1+iIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4484C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747577393;
	bh=w76SCKp3ncHFo2eSCsRC8ncfC9w+XiWympt5Tiezptc=;
	h=To:Subject:From:Date:From;
	b=CLq1+iIB68ymXi/ZkHeVygoQcDZ0Gv2VVC/r7CHEcTQ5VkQtNQqSq+wp28tAj529T
	 LLbuoqWPjC8o381PMmt5T48jQ+10ToXi5m1Gv1JIFiHzMNZuHG/UyKaoBvYZ2WtddN
	 mBDJl4JpSuZvIpGJQLGilmhEHCf3p2/CHz2b+0eXyj6SZ1xYRcUR96tJ81Od5mEzTC
	 5E5X7sZIrrv7XVnBmQpM7MZpXpFFeOwtMi5fclkMUgJQkDhdXdNR25OFGyo/SQ78JL
	 ucJA8Ni6AD3yEaWTHVSJrh+HP+83JohfQKiJPJiWPJeYTaFgPWhvlo27zbt1kpqKRF
	 5Te/RDX1CwCZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B1C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174757739357.21259.393391330724543533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a20e590c24c4643c6287cc2b65ed34926b3eacee8e037c76c39e85995d9cb8
Date: Sun, 18 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747577393
