Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E48C35DA76
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779247834; cv=none; b=omCm1BhkDE9Jv2zxz1wej2Tc3PR1ZNe1BAVYISAoCM8yV71XtpCPLZ8BxhtTkgpCnMPWKylmqE9TjHAzQK3wgWBHHotFEN0of4piKQfpYWSnTJifUZxXQr6pC+iq4gtjLgRlG/3+Gny/7ltqbcq1dumhW5n/ZKr4j70V6wnnmRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779247834; c=relaxed/simple;
	bh=j0s6KERVKbMVYmNh8uVf9zIK8sSkQ07kiH76CzOhzmY=;
	h=To:Subject:From:Message-Id:Date; b=Ob+imCCHm3szbyAh1O/8ZWikgKKwVCENMJ4DfwE1cG3jZn+vDrd4/ASFR1jM6A2bPnXjwv+wSZwqMotffzckpWEGbRvaDh/FuZXUGVE8nB4Ya1kgJf7EUPFtYqrrqDPKCaz7OJImb/V/Pu/6S0MzFJ+HghkVzrL745EnbPlbFHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmdxOW2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmdxOW2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB260C2BCC9
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779247833;
	bh=j0s6KERVKbMVYmNh8uVf9zIK8sSkQ07kiH76CzOhzmY=;
	h=To:Subject:From:Date:From;
	b=hmdxOW2wi73LgLVipqPaIT2RDJyr1vHBfSXsD/uPIYea8p88I3NitSBCynW0Mid20
	 omx6kqfvTISXzdlh7QEWZeXgdQrwbHQ+ipcpxif+I7+VW2mWyaH+UOObK/0mAzAKbB
	 II1wsMI4ToJ+G9q4L8dSt3f02r430xPb0tW2oDxG72EeH1xwuTzSgTCPK9QXbvq804
	 hapC0ujqMlhuwsB/AM3JGhlW8a3/zA+6/0AGTUaJ37QEnqclAdW9cgUWI3Sm9qjuIW
	 NKfXzYtGOew9j12IXVJ7BDaLaADZ2OgIHr8M7ZgW3mrkf4mExj8GFu8Qf8aZVKoM0Z
	 0C9VmWjSubx6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40E9CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177924783369.3753.3163254223567510841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f50a22649627a4851f1499bb58e0e317877d3ecc2fc0eb7ce258da653250c8ca
Date: Wed, 20 May 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779247833
