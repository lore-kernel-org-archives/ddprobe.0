Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8675C2BEC52
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777374454; cv=none; b=ALuUgqYfr9sQeVCg/MSSziwFw9ZciDcjxjODrZj/eazwwMLcw9ThQC0EtIkxEs667W9goOaoyPWk63oMpbJmDyyYZtjprLduc2RxFfQwIu8/qyqWQwPUuIN/7qWoDgO7CzdQ72iQd95R1N//YKvvLB5iwGrUNCylYUbIr15d5R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777374454; c=relaxed/simple;
	bh=HHzoje/m7435hYnD6/dY9IBLMfpvZ6pjrIr5+v8/rHI=;
	h=To:Subject:From:Message-Id:Date; b=XlUZ7MjTZlKa9SBQlImE1mVSumsqxFV2WSxigjghueYKWyCa+IKzQoII26yDEfvhQJtgtzwvxYpOQvalneszTROPPBtOEe45dNgqcyAGo4av5uzohCco8Q7JcH52YwmUq9e9zQlGA3Hu9Sz3HfOjmniY1EXI023e8yhznLE6pIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rl3TULnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rl3TULnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B665CC2BCB6
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777374453;
	bh=HHzoje/m7435hYnD6/dY9IBLMfpvZ6pjrIr5+v8/rHI=;
	h=To:Subject:From:Date:From;
	b=Rl3TULnXGH84VDVuOWnEI9Me/v4raeZW2rb3PIxVcGwUxO4Y4wyIt2aGzcX4NrWG3
	 H0v3LkYGDZwQIWtSlnyN5zKW+I2nl2185SY9PuX2n68jxCxzaEmOBGNpJXxWPXvbMC
	 V6lMgi3ZB9JB1u2IIRjKDLkLSZup0zfkMqVnhW0+IkbWtYPvSgrrxw8sC4cUTBKXJ9
	 52wcC4vuGIv1u70Y0AJNplMox/pyEv/e23I3syod1/xi6TPIjB2E/5nNVGzWRvUdlg
	 ZdRRl5d2jWL4g15SBjtAs+tDNjCRCRrnBlUsgp+ltC/wh6sbzphqwczmLlyB1VL4M6
	 hKF4FeXCe9z8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A905DFF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177737445368.30389.8768199885008132050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8224289dd39d8ef8447fb6711919730ffeff532977b32c721433dd3f611d9e2d
Date: Tue, 28 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777374453
