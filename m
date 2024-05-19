Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6231E8825
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 06:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716099143; cv=none; b=DME+5b8MO7N7OdQAis2zYkqlSF8DELJFiTN6Op55/z8iD3pCwc3W1NEJmtOsu77Uuni+cCd2a81vrAE/cwc7fM8sX7uh+ZlRka72wTD/ROOJMmPX4PVAlWPxkcZsS9pdGW7hNd/Unb4WRLjyzzjubUuDoTvYM1IyB/1ftSeG/bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716099143; c=relaxed/simple;
	bh=v66OEiAnFSyqcB5Ya3RjH/1rMHLk0uTjhc/nNkzySTA=;
	h=To:Subject:From:Message-Id:Date; b=S4dDXlPrbBbJa+XojrBcR2zT9VcFRGf9C7jRtgfS5196RC3j6sq7NrGfzAuLD2nQYd3qw+lCJYxL6tphdR6DhlWdZlzTeHxFAQabaaU+7CI/B08jC/wQlDyyN9HaphwJoVrRVEv0MKOFRWaQSGJ89zW/mflBjKVdCHWldJhBI0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2Z4Tgrr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2Z4Tgrr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED216C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716099143;
	bh=v66OEiAnFSyqcB5Ya3RjH/1rMHLk0uTjhc/nNkzySTA=;
	h=To:Subject:From:Date:From;
	b=P2Z4TgrrFkCIs2/Fpr/wXix/dM3JyWz10m38lzR9oh1fuW+RrM0SIHHAhtjdLcPmp
	 25gJFFwg9w0mWoUuEQrPcZMWkhNN8gw2R3OqGI940WxgfIaKWS/VXhztCWP0Gc0rl0
	 AojmuTd63MD0Q2x3djgRz8EmnWfIYhVzE3fDS16C+yqDCoQ8i7O2Tif1W7Qasf3bEm
	 dFTnMYq7n++YPdfEOcooSA3buvrIasxjTrUH5LGqUEEgDOR19ZtQ9KutPi9i/dEq0A
	 eFKxrJGS+z7ss9eKdotFou/QrxhFoKzJgbAOPdJdOdibck3VxlW4hAbwGVp66reAan
	 joZyx2RLLNPrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D48AAC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171609914279.16656.9147780566733874080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01951affcc05faf0f9371893a81899143675700ccbea216a39cf51218eb1f86b
Date: Sun, 19 May 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716099142
