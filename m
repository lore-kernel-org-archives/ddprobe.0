Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5186F375F76
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788044434; cv=none; b=uDchn3ETIL9hK82VQQZCuN7ojL67KsGA+i6aX9oyds+FClDkCG+c6NlZcEmdzA9205/OJ2XrqAfuY9y/fiOl0fwinTfUhzzaFwdDB0I2obb3UDj13q0c4o1+mhcqXF9GwSFfuuo8+U5aYR/W+VMmziTXownmpiP43mcc3Q5xxxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788044434; c=relaxed/simple;
	bh=3bhtxbVEaiVpAWRuZTQxb4td/rlVW+yCPGjqrFSbKLU=;
	h=To:Subject:From:Message-Id:Date; b=Ry2omO9uMAlyKGwp5U0UyOiBBYSCzLCYfpUm2ofx+p+lqajY2B+k0qjWM4wDkt9MOQTb1xJXpy7pfcMCbHwSHAM7HGx2hxeF3GS/WWJL/CqpFyxVhq491cOwPMDlX2USukuC7/g9DnF94Mlr/j++URcRW4edQuaUMomS+5AobwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1LElDXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1LElDXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D359EC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788044433;
	bh=3bhtxbVEaiVpAWRuZTQxb4td/rlVW+yCPGjqrFSbKLU=;
	h=To:Subject:From:Date:From;
	b=b1LElDXRi7xGtFsSTADYVhl9Ch/dnGTNC1n0JA/NG1d6qH7U1hdqYVgMNuvTV+3wz
	 njF9IO8BNqxHCw+v/0T66CpjJLpiXxWeGthaJNgFhnrmfIsAUuB5LsHxK68S6RreMN
	 vdw3bcpQo1MHMHJ1lpIepTM321CLXRSDhccz+brjayL2qINceTtUy0apkX/XuJSJUS
	 hQbKArgmmdC+ZWbeBpt/BUT7P46kqzugiepFZO+JdyOmQ1iMN9LC5b1ZUY6daq+eJ7
	 53s1WSdCeFkJpyPfzc3YEgG3wzyRoFZchu/TWl5bFOuwJOh63VXz8AYpSCe2pP01Te
	 XVV9qzyKVMpRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF538C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178804443368.3308.7872636470509633674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 597e48991f199004dc65ef77ac26f9615cb5b5c2ecf53a883c4e511fabdc100d
Date: Sat, 29 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788044433
