Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8AC1E7C1C
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755056394; cv=none; b=Pn8HDBRtNMQI1LOZUybuUJn/cBvdUe/R6KkKwok+vOQB8QlN8yveah53JjrfA8lhG/RjEqJ0uF9dVJNJAIeAUZ2e9fSsSIgtSSRLXytdahJUsWYREpopRruRWS+h+Ia+47hk+H+F5eqVmeebEJ8xrHXlA03PrdGcs9LwNfGf/wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755056394; c=relaxed/simple;
	bh=U4mTjAEFWZoV6ymMRB4lg0X7svyXXYWQ9Z7rRwZ8FL0=;
	h=To:Subject:From:Message-Id:Date; b=ihc5MsEoFVTm2YyM5A4BM+RLh4XYGOsvCBKT0him/VJfgc7OpfvjE6x3qVH651howREB0zfjwA2l69pA9JjHguL1asgqDQjGc3eNTr7vEigUCou6ubFIczTDfC+wI8Dgx8LNk2E2CHAHyp37MQ29PtQeQPCYhvTVt9pX/JD+wzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIQURtrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIQURtrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1922C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755056393;
	bh=U4mTjAEFWZoV6ymMRB4lg0X7svyXXYWQ9Z7rRwZ8FL0=;
	h=To:Subject:From:Date:From;
	b=BIQURtrOGuP1dWvgl7T5t0Uu3WL5q2b11Hu5XSfwBqjTDiqXhVPl8D9VBYwz9DU2W
	 gxjN9VISx9ATZ4ZKYHdFSc1UYBPyhBuVQTMSKJv/NDgjuWXtdcOzymMJppBIqdXWqu
	 VH1w/nNRZlslgM6bdT+VAjadZI0VmKhDftBb1wapssvlbgp4qmfeawNajZJgWM3U7L
	 EmKdb378lTn4zJLHscOhvGpFtvrqpnM7IKiVvKgsa4xY7xnAGwHykllvqHVuNcRtNh
	 WgjKyo4q+zQe6eRMjMmA9ZyXRZTnfVF9mRzgQKW/h3583qwgw66K0DC4n3gkOrEcUM
	 vwkEU4/xeM3Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBABC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175505639358.27940.11316568932914824798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d705be6a78e08dcac222e76fbad4899b8bdf08f18dc3460b6d49d5cb44009095
Date: Wed, 13 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755056393
