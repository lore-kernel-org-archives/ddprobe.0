Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4517517BD2
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 02:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713840623; cv=none; b=lAgLGVftOEopR24Ji/VdW3KdRhJvuh3ZmP7EA9ybNTZO67UMRpBhYhz90kzjDbqqc24Ib/sfT3tuk8V3lo0SKvxZ44qeBJmeqkeBX9pdOhh2uZ83P2hpjVQV2Pgy/mdVlaveqrFzdbhPlMOjgKEAHugkmmE57C2nYE35J5qnKMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713840623; c=relaxed/simple;
	bh=r1F3RJJ21Ac2joM36iLcDANsbBg7NavAhLjRLFtg2X4=;
	h=To:Subject:From:Message-Id:Date; b=EYfXeE6phbEyLKE/WU1t+uARW7kx1M1MwAQS31TGg6brIZLUmPtfLc9+imiLs8pwvMV0WQfbRW+nS4YABVQ3scFiedrppINF8vd0hkTloEWtOnxuYxJ+ERnaX6cslrUo1AZf2gdoHtGpX3QoMSBa5I4ATa2GLg8d5nJ6pvJaeaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3CSFfgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3CSFfgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7578C113CC
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 02:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713840622;
	bh=r1F3RJJ21Ac2joM36iLcDANsbBg7NavAhLjRLFtg2X4=;
	h=To:Subject:From:Date:From;
	b=a3CSFfghZcO8LlqxfKflaDLugfIgWYXRJGxuJs7kcll9SMm9OC/+FUlN5cPwea6gJ
	 BKFCk3NJT+IyV9+aWrLnnosiXahCt1/pNEPFtaIDJOyQceU9lKv5v9oqiwXsHnJ3IL
	 H9MjsaSGo86HcFkwnYxFDEDimQ50rPN/BEW4JyaDxmqH+WIG1kwdiIDpduAObtg4Jz
	 +ESfOXeVYTdVyv1kjRAV52Pcp7pB1InrVMlSDfl8erYIIHz2Z0K7ogt1TWUUlHlGI6
	 OBX2sfxXupvtRxox2uUYztySJ9oSNnacrzY4Upxpa88q7nu4uU32WreGA5ZA7h/YYp
	 WbyW0ADh+szZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A46C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 02:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171384062278.6047.8056064521409901962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc5ca2bb27ad3457924b978b40a3150b1de96cea11bf4c75a938726e95381dd
Date: Tue, 23 Apr 2024 02:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713840622
