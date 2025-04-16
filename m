Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7FB1C3C1C
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744847394; cv=none; b=HHdKWdNn76vZI5x8qGU70fMrXcO3D2LmQ3tLyiEMSkbd+0GQ5t3ZYmD7jF/jPEf5BjrkIWRFiyvFBL3IcCB4waZXD0AAJcbSnyxdrUZvHEeXkZhNBpmm780RoeoglQXvIvty6vGCFpsnFu4UbXLQ71tZeUESIRBg6EjPfSoUIag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744847394; c=relaxed/simple;
	bh=M9PPhB0nJbZFSPzo0UnFljRlAW7qb7k4gIFOyfINyss=;
	h=To:Subject:From:Message-Id:Date; b=FTIl6oRuYb65o6pT9k+eiDpcU8razpNjfeXK5sD+T8dQAvAPZfHNxM2hp1hRANOtteyx/5O3z7K6gksNv+b7lETBkTGx2JrcsXRPY1MlVEGIBw5GN2/rbry1QSugkK0WMz9WS6WfJyBWsAL+apqp2+J9gCxzZDO7t9rCS8uORLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6AFZG2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6AFZG2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36D4C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744847393;
	bh=M9PPhB0nJbZFSPzo0UnFljRlAW7qb7k4gIFOyfINyss=;
	h=To:Subject:From:Date:From;
	b=Y6AFZG2BTaETp9t3Z9Mn92fyAUTapdqnSZ6kiHEcJEJn1cEUahUx/Yvum1M18JHzy
	 MGPc9i6pp9k3RvmmmDHn4+1vjlkC4aBCg7Sy2V3zJSJsRSmpxK51zPM8IIJaAs3+uR
	 weCmibpULuVmdHtWeV4JmRs7toAW81K+LtgJwcMYI+jCaxvTk/FOdsk5JHg8RV4zIX
	 KY6kjMzMg7ZYbNb3AWt1iu+3RGcIS2pu1/kNWEM6HpWV9gcovazUNgaPA+AETZbqZL
	 LDyWZ7koyYASzWwjSsevTPK1EBESd78Rri10rlHanTmFEqqjG7CcXlhOHm8LcM5FVR
	 GCcvT94vYHUMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFF1C369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174484739358.6005.51671055945466049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e845e7d8b2cafcc47d576b5a2c20733fefd56181eed9758f27d500784f027b27
Date: Wed, 16 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744847393
