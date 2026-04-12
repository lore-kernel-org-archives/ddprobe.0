Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD5F5C613
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775979454; cv=none; b=A4CJcp1BAEDtNWZOYlCQAzZTrj6XGw6wWCaPSEm8De6IlkR/roPKe+RcnX4fbG1Sj/c7d126dfHCfGkO+2/aepQzHRZEfO7dh5mOSx1/FaLsij1BcgPWR8xiq5PniAKwMkmEmZ1yIvdPy9zqhOjY2V9LimScLc5waTuZ2WYDy/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775979454; c=relaxed/simple;
	bh=/bcc9Tm6d+DeeVv/q3WKMPx+9ompw934kQooQAq4Jso=;
	h=To:Subject:From:Message-Id:Date; b=gK6uWlWvIHVS3dj6hhUbvin7EQqdeXRdIFQ6aQnUKvRavqoybA11vcHmP0h3Jvu7vFPjAHM/MMcG5a9/shTdsRbNaZDZEExZ9JVVbR3qozYg9UIjU9Xpgo4vza/ZlCb7ahSo6JQOkH7efNZIO0YZiuU73Yd7tmyGOA8uLy3SZIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjOjNsjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjOjNsjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CD0C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775979453;
	bh=/bcc9Tm6d+DeeVv/q3WKMPx+9ompw934kQooQAq4Jso=;
	h=To:Subject:From:Date:From;
	b=QjOjNsjT7K9kYt7Y62q4Vv13SG/ghs6FStxHY5MGPIYNPjmh61fRie46BHde45mKE
	 /s6fIMYAwjDBFTBYte7YvzvI4nZLyqm1+wfd5B70CWFZ5FJ7B252IubxZq/MUXoxSA
	 BCd2P83D/sOFlL26ao33adOobCxK6PghMjkYDxymEYFLLNtWxLE2O8z7F2XEtHCHuQ
	 U0Sr+yaSDItTD0BSqo6p3+jUXmsCqlg/OYuCpeyvZQD23KF/ad8AxPsEi9E+tO8kUd
	 eBn5ELMaJ5tcEDAjKmhuyMj031KTDh6UHchBkKRQTxIpwbHKsRSOAeOxUv5Ew7J2+8
	 0coQH0mZeR2jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8B6F3ED6D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177597945368.30078.8214159997740494799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f13fddbf46eb6f7dd3a804c6077af9d8d8a53aac673a9dead2c78b7e7cca58
Date: Sun, 12 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775979453
