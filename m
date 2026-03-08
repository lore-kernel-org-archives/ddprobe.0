Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01AC130F816
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772957694; cv=none; b=jVDmh94VhqHI05EWQf7dHfUy7o4ooW9XXfC2KQ+podslYONR2z+1AHNRmAlUqkbOFveO8Gl7+qKjDfOq9IowpLJrPxfS3baAi37lPC1VoZPVZ2z/ZIVlDHMS8lQubSeo8YUB+yRMwdDJNupApoSjBkY6DiHMdC/0UwYVoKWLsbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772957694; c=relaxed/simple;
	bh=0kja+2qxkmVOSkNZoU+L/yfWSPOEjyW+dgrAHPFclbg=;
	h=To:Subject:From:Message-Id:Date; b=fCKnjJAYdd6cRXVqE3AOUdRv67HFTt+Fz4K+Q4Os5lwVWl7wKYpQUpQn7nJxITg6L1AFcXo7TOYGXYpXvk6/2B499Ce1On9T/niZBk9LMPrw+rJkMys/rGTImlWQ430+yFRD51m2T2DxBlRy4b97vAWAPUgrcEP0rMVY1EiTUiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MszBNqE6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MszBNqE6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28EBC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772957693;
	bh=0kja+2qxkmVOSkNZoU+L/yfWSPOEjyW+dgrAHPFclbg=;
	h=To:Subject:From:Date:From;
	b=MszBNqE6T6v3Cv6gjWwYx93g9OQHR5qY1KRijYibOEGATPZBrehbpp+QGCGwUaYBS
	 dytxG7KP7dOB0uJonjLRzmXiVcHVHqsvu6wN3UbnyvCEWGzI3017nItlCckneuNQR7
	 XDAQ52Q8mS2nH/VvLsHTaU20341GR/8SbIUmaeaAw+Koko/ECTvAR4HKbQ0h9nQRtS
	 hi/iH0/ETQt7wCYlUlQqobJIdIdqePtRrhAMfClO1GU4wfNahK1BY4GWoxvASRLxeh
	 LNKfKsfRf3ChEfKbpuu2se0dgGq3Ddc5g3MIwNUd1GkKc37If+WW1hqsGQ9ZDUP/fo
	 KbI0GFODA+5Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FE5F55137
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177295769357.448.1370148748117689212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d254ef1363cf16e4f2be7d79f4a79391910ad1d06dc4dc30e44baffe6461c43
Date: Sun, 08 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772957693
