Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439223101A7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781646394; cv=none; b=bMmeb0umj7QG2K3eWwZVRYuP/uIuA2sGrwes1tw5tIOSozTTwtrngDon/0pCQkYvU0zlYuZhsjBUnq9zMRO0ThErYqSvNP93n0cs88mPcg71OYsWnDDva3Iz9kT+3wLAzSOGxgv0mvuYKsDNL9tsxJh8TyCTdGA+NwvF/fNaiJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781646394; c=relaxed/simple;
	bh=IwY/IeAEstlUQ/9zt5ATVBcHvj2KtDa1YS5CDKZiKzI=;
	h=To:Subject:From:Message-Id:Date; b=eUZxukZaB6viNXg/kq8q+BCOwVrDaJ9GRZGZSWaCEK13NEBs4w9AM7s148Q2k8r2Dn3H5QavKgMRCOAT6RYyuQFEPyqarJpAxFMV+yqs2DWokaep/gE3nJC6vopZc2nUU6hC5ataxlKA30BDKunOYjdikk7NpsGPsn3nIPYuJ9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLHioxUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLHioxUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8140C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781646393;
	bh=IwY/IeAEstlUQ/9zt5ATVBcHvj2KtDa1YS5CDKZiKzI=;
	h=To:Subject:From:Date:From;
	b=vLHioxUEuq+KVWpbT1uhx+akPe2uEnYPNlVCVyguZW4sDtPD8NWzNVd1fqX2iCeGm
	 S6bjrFB6oDfn3zpBHOp0vJEOHhVMlGqwVkTt4PxDhHtOL+y+ghlrYOnxVGVrEYLPD9
	 kW65mpLOK4eObPFXtNUu7jhNvaEE/FzCGDo16ucAsTSg3X5YSlHZnj7lJx9P7ODi3s
	 JwgxkFSMbAisj5NRJQc1Achuy1gbLcuEjjGyWY6CxeUvJp1gZwUssAl6gTgFut3y/U
	 GztjpTjjY9wy8PHFzf8bOvkUa0AI9ThbCEkvIvJeM47lsKHrslyA5A3/De8Oh7dK1k
	 42c3eDhv1d4Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB88FCD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178164639369.14868.1705069366670510090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 453a63af630386710dd5c52a3c7247ea4389b5fad65d423e2673c383599e5082
Date: Tue, 16 Jun 2026 21:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781646393
