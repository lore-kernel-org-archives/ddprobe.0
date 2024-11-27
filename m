Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D8A367
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732665954; cv=none; b=Ug5AjJvDY04wvU9H2poP+E6MDYIIVoj5eE05F717XjIq+XR/PWDd4zFYXh4gt6x59rQVy8fc1+sdRpotjCO+1Gi/S6Rc+Z+l46NswrB33Q55YpRr/b01VFAfdAQoU1E4wmSq6IHlmqK1sIKu/bKHD0ey3Fl2t/JolGZh8fA770M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732665954; c=relaxed/simple;
	bh=gd8Hwcw5mV8Q4ihwbvgtxYImqeEfaxJ2FBE6nVPACXU=;
	h=To:Subject:From:Message-Id:Date; b=euCuWc56xQE20INkJqFjIWtpUcInm7PwMq5CiKqx2Pb7ZMBG1vAVnQ++Yhxfvj2CjDfV+iix15wGcPbqxPhShaTzIrN91qTXw/6lR8QRduNPwiEkVY6uEpdjvqnmKmrZI+oIgJLIWpNhWJ1NpGPXdWSCpfrFByIWC0YW2nrubZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlrDQxvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlrDQxvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A40C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732665953;
	bh=gd8Hwcw5mV8Q4ihwbvgtxYImqeEfaxJ2FBE6nVPACXU=;
	h=To:Subject:From:Date:From;
	b=QlrDQxvEmLAhYBF3X9PfxpPB7firPcjNbubHd1mW63ym10r7oRFykdN2fPOzWtSV+
	 QTMt9XMGd2t2QlV7B9vkF+IwhNIm9Jqkv8I+rFcqBOTFF1H3O1Zl1KS4LxlxLLmJyt
	 Y0aVSR4iBfReAMRYn3wmYXnnOiFvSPKMOW/++jq1FaLtcSe47YlGaZ/m7wWDyGicN+
	 5IgOwFQcC2tMMstpakv/lIqTfM52fJygHR6RfXRLCRQOtIQCHYUmFNYb5wOQx8/23K
	 rSS/5xpJad6QqqrJiEGSSXf7Rk1+RDAassY1DL1WGnSkRhJl4bCyDvbY/ToF/Yhl7+
	 KhEesobOh43LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF46D66B9A
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173266595359.23491.5215025120901984174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa99e53b96c0a871a67744c5f6ce75743ea2231cea284f59ecba5565519d15d
Date: Wed, 27 Nov 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732665953
