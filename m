Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2338D2367BA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750922394; cv=none; b=ftZdd4dZ513eGAuwolsmWDGb+eMI0AkeDh1aLhW+3XvaqMW3C55uwEBx7mZ8uyIRXJWdp9CIRpG/Jr0UYYPAdfh8pthxH7EHj+B9Fvv1RJ0Lc3jEcU18udOdWdTjBNCPN/xpgyZXNh1Lv/dYHroXI5t3gPbnoHHPPQLQQPkRfls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750922394; c=relaxed/simple;
	bh=mL98PpDyNT0TmN6zeQXzD1CLcv3LYq8TwOe8R4MzV2o=;
	h=To:Subject:From:Message-Id:Date; b=sArpiH8pWYRaamAOd1Hmd8ZfYnBcYizIIF6vK+vz7fyK9hv+TAoomS1K/M04Uh0Hq6RMoKpjxVhkiKMEZNhbrHzEHD5OICSltpX53WO/Vx7elmLqBbhub8qQQptzPHho/59ihElBvko6HWuPgCNIWTdjUx5pR+KkHEcUmjRUDkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxFNwmDs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxFNwmDs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5635C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750922393;
	bh=mL98PpDyNT0TmN6zeQXzD1CLcv3LYq8TwOe8R4MzV2o=;
	h=To:Subject:From:Date:From;
	b=WxFNwmDsj4Q6D4uO5eAaViLusL/tnRuVsUKjcEZHgQ7Zb6DQAqc0CcXd2dV/HKYmi
	 t4XUDgPzdmHY2GixQLK9A0oizzsfMSIZRbFMRTOofcnMBmOqs07lPaUH0waNRpC747
	 PRnmVw3kvsocCm3yhtnROK8SBDg2RfjLWFYyLrqLXRyMxv21N/xhojUl851iFnblM2
	 wK1XicpIv3DiuZBrzJFlw7k66RXP8vVX1R8UO9Z8PLglLJ0LukVccAX3W+tQRZwdhw
	 J/cg9xhz9rKMVvnA79GSqqbCy+aSq1vbZR6ygjykK0h2J1W2vSUmonAB06PGic6ROM
	 b4EksXWCBWyhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92188C7115B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175092239358.9253.1587963382878542611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a7d8d8d782113cc0c98ba2b99a943dafc5273e53fe231fb04ef2b1df5b680d1
Date: Thu, 26 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750922393
