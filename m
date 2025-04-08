Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD6822DFA4
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744133994; cv=none; b=DaBPTF3xLT3x25FFywjCEOiVaef0UdtgqWwSKiBpF5k/2tT7KsSdzSD5d0jeZ3YJUd0zbj8eL8SNIXd0UZhzeUN2HmraaAAbax2kCx1JAF3OB0UeEx+7JvQKpoCWeDOmdO/4RAgxMguwRvTuZ0sEvXXAM8Wa1kSh+s437Vp1k/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744133994; c=relaxed/simple;
	bh=GDJC9f22/JKw12nU2ZgsS57AKxvdn/R4ZfPl8H0vN9w=;
	h=To:Subject:From:Message-Id:Date; b=jcgAUHgKiwrZDVb9EEPLddFWM71Yki4iELQAPCHbUmNXoWvoihOrHnbIRqOUrbz7XcNmIk9DI+hMt+Ke1WdC8n+RpM0ZZgQ9TspIBZjPTZDjxtD3sx5IdFtpi4caFydLx6cNpiDi5IMspFl9mvyMaIre9wlgl+40xUzL34dkb7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vm+R6MSJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vm+R6MSJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16C2C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744133993;
	bh=GDJC9f22/JKw12nU2ZgsS57AKxvdn/R4ZfPl8H0vN9w=;
	h=To:Subject:From:Date:From;
	b=Vm+R6MSJwrLLXAA93FFOxKNI3hx7lRJraX3neYvNOeLwDr5fYNik3Irjm1rx4fVqo
	 MStPK/HwwvuNgd9UMH0SBPgAByFLnXhdg78kTnAL8oGN5s8wVgJU1AfM6VVxVozB33
	 YFR6vaqlttdb/LimEwg/eH6xmLwDXR4laVEwUqAylF6g3iQ92yRMU4LmgMQKBeejHt
	 V3symQMlFuGLr//3ESulVW4CZkc3Xn+ijMI8roRsCfee5gIoTXNoQibvag+4iFe8S4
	 u2phsNBF7FgQaGE3Ym5oyaDcjJvcUcCdHdsBHBnB1YnMbF760zkqDVhRKPUeDug4gC
	 cp3N/3dY7ZhoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9091DC369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174413399358.22091.10508821767931889505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d86dddf68a62881438f984e76bc1614f0fd91590a9a5e184eef51dab8fde450
Date: Tue, 08 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744133993
