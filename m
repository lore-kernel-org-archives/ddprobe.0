Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D281EFF95
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740682736; cv=none; b=V+UwraSNtplaiL8F7SH7kMZyU6Ro0jZkVUADgX2nHfCVKs6Nh3MQdzElA01FdZ1Ue+Ebi46XHTabmCwinUGgX4miHRA/8eojNln+jm3F4SIykH5IwNTYIa/WSO0bv6ArBicuBZGxPq+NH9gKr/FwzwOy7HhTjBFpIDcmYM7w+3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740682736; c=relaxed/simple;
	bh=b+SKmZtHUu3ODc50j8XLtXtsyi0SVf7TePPuF1sFhzo=;
	h=To:Subject:From:Message-Id:Date; b=hOuZTBrPeTSHoDFWmD1Rq5RlnYcJjeLANPZhCbi1hjMX1M/5CltCvcyaA6eA1b0CiG6YDctfJDLh8E8BjHuQsIbcosBlndglU7Po6kuXc1PIGL0mu/81KOpupxhcJZw14YMChf6lb2B7tDjiWVgns//iIoSR1BqhLDHH/tV/ebU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPOxyMBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPOxyMBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7182C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740682733;
	bh=b+SKmZtHUu3ODc50j8XLtXtsyi0SVf7TePPuF1sFhzo=;
	h=To:Subject:From:Date:From;
	b=PPOxyMBmzIsYmBdFCrvgpvNgOeGZXZQxjfrYiwC2PZGLr0Ue/DTtaGn5PdiPkftDq
	 fv9YpCv9A8agcBxSie/g02RNcXmngwgyCWzL7ARAjVoMKHDNANMCisce1uSTD+tNwH
	 D/Tsz/93KIt46WBo+4D+JOJROzU11pZ+xPgauecv/NihEyA5QUljUu3RyS03QhPz1t
	 wCMBCeze3Y4ZYFLdhMrwIr/Xuyoux4G8SH12rHBQ296OcBHNmyqQ3/UTY43ubAoyfk
	 x4ojk2HIbln+2F9bB9+swn5CZis+a0H6i+px1Igh5ARb5AprZQ24B1fcYr2yn4Eybk
	 0WPkJd41+YA8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E6AC197BF
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 18:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174068273361.13941.14148275976252472957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b078da200404f8426b8defa552ac379b77523b09ec1646661449bfa9712f82fe
Date: Thu, 27 Feb 2025 18:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740682733
