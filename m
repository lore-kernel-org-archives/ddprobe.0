Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3799F231C87
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743574794; cv=none; b=nGVMPTWs0/Z0dAVyaHNDhTtN+LEq8mNGQvnVtmCaUPC51B+4lsmTgnl4PEPKg+PtODlYfE49tNEdQNtNrX7/xZiX7fcuSSBnyxBX4JAJyMbnCQ+QfbBYRPux6TAKEpz9emF8AQTUwzbbiTTSK27bujJb0vVjKLQIkRvrfSIiK/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743574794; c=relaxed/simple;
	bh=bV3ILeynS9tdy9j83UgqEHWakGM6t93sgHc7VCaLQhQ=;
	h=To:Subject:From:Message-Id:Date; b=a4SOOTV4gTy49imVu+q9oGZZn9c0nh1ByooCL/AV2AJA/20DXPmlmyz3IO5lhV9bdZXZRBj0lU5wjYKOSShaIX9Gbm1rdkMdywahToOmRvOW46tNsb2OdU6hiXss3wuUGrX8OH7Qg1LN2cK4iSXxaizhaXiuAZw9b7aaUGQwE8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1TLyv2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1TLyv2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98C3C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743574793;
	bh=bV3ILeynS9tdy9j83UgqEHWakGM6t93sgHc7VCaLQhQ=;
	h=To:Subject:From:Date:From;
	b=H1TLyv2KOBe28EQw4qL6hfHG6/ctfDnlsLXHVQtKnxRyBrtphLG7zaWv6iKqjjbNo
	 v51nsLwqaHj8cKKMEuwOsxW9Xyyus9+YIUtnYLXBaKLle7qp09DbOCluEYIN0cDCKj
	 wQ4U3db8pfyn1wIS6u3NFDV/0r++zVVyEszZOArvQ7e0pfFB6ICDM/JDWW0dJ4V5Ww
	 Sbcd0URRimGMTccRDHCp1XsqaQOnTkjZh2stOhgdF/122M+/fyZplHGCkPxKCMzxzg
	 X3OaxQLb2jEUUTHK7OVwGe9ODcw8IGBHezYePIu2jUnfA2+OR37kVm4qqUnoii/A1m
	 IfzkeJ3Fy9sqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9432BC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174357479359.21260.14934053728833085115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb03e318bd2777bfd707c5a60c25f77236891cb1fed0f1b2b96bc47983423b9
Date: Wed, 02 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743574793
