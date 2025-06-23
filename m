Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390A12EAE5
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750645794; cv=none; b=UrQ34kavR1IB17JPxaMb2lGnIK/yfH5QzkXU+dnob0gQbzyMBPMGk5mQJY2U9RD4f6YFeMWKhm8bg51TTiuGY5LJ13IliD+dyYaZPZ8cKJrHxjfcU1Z/+q4ZaO6WvNA/bVTh7+GXyY+lMbIPq33siHz5HXmRWhz/FZZ4kamoe3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750645794; c=relaxed/simple;
	bh=k3pF+3A29LmxotDGEtiymBd+RNg8EooMZTMVDC1NN6U=;
	h=To:Subject:From:Message-Id:Date; b=kIGPidNyf3YPERMuibbM4bLuyW7gMIw5iD1MYcg6XhMsZsxu8p4+Au6BykeikOxyOymvhaVRvb63dGHZC17G0nipKOaQYvP1WU+/KQSiMTJ4IVwQys1NuAUFnavxfvOo9CVaCJYN7s5+9lMLMeYgtrJumtEHkVjiKOPCDUnQQqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWniRP0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWniRP0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9515C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750645793;
	bh=k3pF+3A29LmxotDGEtiymBd+RNg8EooMZTMVDC1NN6U=;
	h=To:Subject:From:Date:From;
	b=tWniRP0etQ0emolEhspi6LcUHoyj5vHod6uAlSdguV6JkXIp7YspjMIV0yuAqHcRx
	 zVqHpyqCTsqz+j+IiLCCGepYn6FDL5iJipVrYKymTabF5xMBOLCAek7+aj3HenKQzM
	 aeVHTl5rVsfpfHIrD3PiSfaDVPVbw86rdrFlzrSbgxzLLj0gdt65/lAescZwMgieXU
	 qBZhbR1gDbVKyR/Ng9cCstC6AVOdPg2m4+dCw8v07lY9zGQD4pkoIbRnsi96oGL6Qw
	 2LkW/ptWYYSYe/ANwV0fi3L904iMOfczcIrrg968OhwzRSk6ttO1s0GSIi/xrm0gfi
	 TIta6cbIoQmGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940D6C7115C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175064579358.27982.11728799621778053393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a5991a7bb4b1492dc1a3c28a52fad1293a7ecfea60d486da967c5246fb6ccb4
Date: Mon, 23 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750645793
