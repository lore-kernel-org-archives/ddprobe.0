Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2D8217F2C
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729922754; cv=none; b=DOkcdwWigRr45NLYeoUjxZ+9xRYOzJCuT4pbqyl5SCAcPS6aErW/s4Ue32ZkAqjrMMPbnyKkMoNYCkJAepE2tUGOmRj+A/V0W/suryewfmeNIn5D9ZqetvzCZHjqUhpS6MKLAZLhm2uVsmEiFa+ooWudiz3G1FEo/JIJR28nOYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729922754; c=relaxed/simple;
	bh=QcHG5z28iDSlY388U/wCS/yoDDso3ZoPzXUmsi/z9pg=;
	h=To:Subject:From:Message-Id:Date; b=KMiRTgQj4X0Ix8xSda5rssbRzrW5BjYDZWSM9U1ar45pfMhcK3iGba2HXa3d+330/pj9eUXJwj4GkPcYJPWwjaTwsb4ftEfMGWo/JvD+ckJ5OeZFdr8VkjQlTwCIps7cMllT/dzzPSBjXld7lJ54hPhNR1/PFRsdMm1tFrsNPww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdw2ea3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdw2ea3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABA1C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729922753;
	bh=QcHG5z28iDSlY388U/wCS/yoDDso3ZoPzXUmsi/z9pg=;
	h=To:Subject:From:Date:From;
	b=kdw2ea3wf1LbIIQMWViPizJbQtJZdB7dvPAM03qh3zEcprx1gNJPFETUyLH1MnnIL
	 ujttlcwQCik2QboB57UhcAOgAv/u6dSyFni7c8weFVWM/FbpG3snZoOp1qXS5zljws
	 67kYJfeyo9QtI7PSjywUC8b6T/Z2LN0Kzoepq8KlqIsY2F7W4j+NiGamTmmAOqrl34
	 c3KzBbL6O8B5A917By3RGjSL4bgEpxNIfBKTXhFmXEI7OyxACoWeWmMH21aBoZR7Xb
	 D/m2ay156YQUdh7p9JlZ37A7opdOZbAttSn0JyAAB8wVcEz3xwIie2pC6y5WZhwK4w
	 a6t9nkriwnBwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F9CD10BE3
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172992275359.7858.9400530482787156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb67ad75722e27583d652c6567f251ddfbe2ffa17c91df45ff81160dfa2b3078
Date: Sat, 26 Oct 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729922753
