Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BA4378814
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784027314; cv=none; b=Dh3Y0mzDNhlVYgiQZwmfk1nxUif3/sHhKtIzJUGII7JZGW933fhJtIXDF4z0M8KvAgmFcs5vtG4AxhCOR1JrwuadGHaN5hqBwuagkhvGVYI1bzH+nwaiEiuYBTiCIqb6g16xrMLlUNkQs+tBGcuwquZso4cppp1qykW/kviiY58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784027314; c=relaxed/simple;
	bh=iLS5iHJLD8ch6huk+clCHQ5kZ3dolgPidKKz1NpwhQg=;
	h=To:Subject:From:Message-Id:Date; b=I3Fe9BWWURDCLEOBS7mY8HdC+3O1724/3I+y5eiqk45XVL8+40/AaQXBpn6QTmZX9K+8bthxxaBaLXRht16speOLM6/WlREGTyphLY3SEgTA8zciAw1a1Nt/qy8PXOrl2OBqpaqx8hVJ05ALNKSaSk9iMb95/sSlKBQNgmpPrHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7fkLDY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7fkLDY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8FEC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784027313;
	bh=iLS5iHJLD8ch6huk+clCHQ5kZ3dolgPidKKz1NpwhQg=;
	h=To:Subject:From:Date:From;
	b=V7fkLDY+eEkcKlqUHOfD3alD+Iq7cijYd8nQHLu3DtL+/XaFDDLNjC7rK0gzpmT/y
	 f4+ZZREqtti5TVxriK9mOU0VGm61PgPOjz+bAoPMsVoWkyc+hK4ywQPK60QjtNldED
	 TMdmio/wVhOsvim1AxQdJV/9Xw5epwo5EAs0bY/Q5AlbEv0z0YAkw7UKJz7Roxy1ON
	 QPMmdsxIV7fjycmNU5nS6kpSh0dvqDyrGL6Z+Ean8MNA2aoxIOdML+tccxm5S/f0WW
	 2Ri69mwD92cHdPtSTmEhJRk+93ZroaCtPT+gw6FkkSRHgBnqPw5NASlp6AGvn/NHGG
	 0u+4S2TNJCX4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F17C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178402731368.1678.10385129042944835787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a25516cc132cc78ea60e5b30a51e218b0887b07297452a4711b018cda7c83c1
Date: Tue, 14 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784027313
