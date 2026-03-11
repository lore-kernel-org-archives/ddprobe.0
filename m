Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D7F30BB9B
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773236094; cv=none; b=YiO60mJrlpXdxR22ltcOQcj5rgQW488w8fohXUSeqG5MMdEuFk7TY2y41myEuw/ec7fytloJcrkPwOYQCtJzsiTTl2gvHZFccMvHGxLdMCLXhIM8hPJGk9P5fw0TFIDiUCzSBi+/VvS4hckNx4o/hc72sghzIoKusUcWuyFDQAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773236094; c=relaxed/simple;
	bh=lEtZJl41oMhPSiAEvpw/ALofQKUXtUNVP2Kvvo24JaI=;
	h=To:Subject:From:Message-Id:Date; b=BQ2/53iQRwipUTjpKIFAt7Iyey9Iuq+lZ7GMTrjkbLZRvFPEsx6T8tYMiITkxV2WK5Gfcpnj9dn2ZzpgUFdsKw/or6w4IVoo0KgGX+0/Id/72udV0CN6jfT/edUk2CStJeyZ4o6PmuRer9P+9LFWph0fNgNFzok6gVgW1wGO3Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CivJUwxD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CivJUwxD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72F6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773236093;
	bh=lEtZJl41oMhPSiAEvpw/ALofQKUXtUNVP2Kvvo24JaI=;
	h=To:Subject:From:Date:From;
	b=CivJUwxDNP7DrIeHB+bt58Vaw9Nm7hI4gFDTuXdVIZIu8bl3wRDNsGeE/oMf/LM6Z
	 PRwbXmR5dyBcHGjMDEQ0FdToUDrrTOZfwL4LdwGOOZxrkT9sATEvjN1VRdvV+b2vO8
	 5p5QkdQjquKkPZjw2Zdn7HQLPkzn6N06ZceAtBwJfuIRpYX+8ilyCb/O2aSMbGSkNM
	 mS4ALGIfwGk2Tk7i8ZBqG0U9+eU6EFCB1skFHeDmFy0yqPAXHqAB5jvQqKlAmWpZ9/
	 fn4qVEHgqJSi/JSpD79DQ5/g51BcHGwDppwiE/Jh9v7RwTELAqn6QuKCFuM3sh+6Ru
	 SNcM3mwwJz7HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F231125803
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177323609359.27049.9171741899993396016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e82f5b08fd781eb8c3107f024e62612f664687fe89c365f0653994df9ab019a0
Date: Wed, 11 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773236093
