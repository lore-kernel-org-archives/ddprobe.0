Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2800F212D62
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743151794; cv=none; b=NRpPJd/5/a+MxOjqt5X1DUKUz1CayifchtKDj2ViZg1f1ib1oB/QDCbXj3K4R9N9crljXpUW5hIdhkxNYJkg0G+gTuwhj62Ozh7Qd1TuAq3Fx7toI6GiQ7vrMbgmDwX5GL1grrPAoLFtP9+u7X1p9mtt0Ocp8CsJLCmGN8gVeQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743151794; c=relaxed/simple;
	bh=W1QxajalH0t60MWgLxQBz1xkFnR+ley2MCytK/1rZGA=;
	h=To:Subject:From:Message-Id:Date; b=jCnF6ALjuMxKUDmkSqFY11uQywtLDQGQug4AnuUD9GPKaBYTDDfyW1QdsG3ZJGwsecLBaPIImo3K8P7w5TkLedA6ncUvqBy3E8MJXnQdb+RaB0Mbj+7biG8a3I+vQCVDdag+qStJK+hYVXptT+B7I+ftNQB/2ENz7aJUuUNQ33I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6RppQtR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6RppQtR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14D4C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743151793;
	bh=W1QxajalH0t60MWgLxQBz1xkFnR+ley2MCytK/1rZGA=;
	h=To:Subject:From:Date:From;
	b=E6RppQtRwQOTFiJiGqx2CLmOLUQTcLXVyXb8uSK++NfM3S2m7ssOa3/VgDlri4bH7
	 HLwhc5tLUCvwtc+0DoChViIQqWZBZbyLA48YNg41rpUEG/LuT9EVERsGQFqAuB0QNO
	 TA4ipIbmUXELiCNnsucMKp92+uzAFjvn+170NIRCy1he0ebafIgJymNUVgswh4xwJ5
	 AQC2PX3yuDmQFmIPWxWuTpKErnbEMwCICWlJOFLCu/bQ9OabfAtSkDFLYMjhhaK1K6
	 cd7m6JEjoKYw3rPJ8W+AJWaKL5GhYWT4zxCl655heomzYB6l6rS7+kdiEGIBl3gUQR
	 7dPLV7AB/WUdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92466C36010
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174315179358.21535.16663582045969756768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a5595dc389792e883125678c7990565109ce7fe05e3d600cae50cb0944e1b3
Date: Fri, 28 Mar 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743151793
