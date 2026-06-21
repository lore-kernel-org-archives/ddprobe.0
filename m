Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED121A6836
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782030394; cv=none; b=qdxRvR+Ym7/lmlo0dpdJ5w3cBMDoOVtjwwFwwvQ+ua6l75j5k11zTx/2XSg9B/9/DqvmqRyqmEQOsgauXxafSjxWN+4SJzcc25IecjH/zBP8qLy7QHr6LUDWeFWY7PJKJFgCYly4lwsFFb4nXAVJhCPXT272R8CDTPfnPsZ+djU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782030394; c=relaxed/simple;
	bh=MwnF3Giq4OwxytbrAbq75muk16vtAMKcB1uzirYIjTU=;
	h=To:Subject:From:Message-Id:Date; b=U36BSevDwO+Uw84V8D2pjPuAvrnmdFH5/s9hwkzhA3EEEgjPSVRj5rJ24fZ90PxA3+aGL2i2ImnFnnitjaJrz4qvUviblVEnZSUwoxPC/W0I/X98Yn6w35B/5gglF0KB+WLVHGsVIfMGaJNAffv2XnoeQHBHQcZGAkONKrgj8XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vr1FSdvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vr1FSdvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79D5C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782030393;
	bh=MwnF3Giq4OwxytbrAbq75muk16vtAMKcB1uzirYIjTU=;
	h=To:Subject:From:Date:From;
	b=Vr1FSdvfg0RYBXXfJYeYpHEOLSdH1gSQKcXhgtEKJSbym4cMZfUCqx44sBXGzWd52
	 vAeoMz3v2V3rqBvxfN2VtrFpwiKDwmDDmCMyb4tj0Ai5axaKlNVauN3koXYRkqxB54
	 kLCbxBm3/a/B+okuXTV9/qM9LSUAEHThuedOGAQ68ED+Dl+/Q23E9w3F/lXUyZbGpn
	 JklBtE50v+/6oSrTw4RLMTz17j+Sa6YjhpH9oJxHFCKO2XeIINl/+3hARhaPZEfkH7
	 KyqSQ2osya6zitPjFeo5Zk4h53tRs6aWUV8XYPuo6ShqZ9Wz+l44Hq0zI/MnorkdGn
	 J10lbZ7bQY2jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9ACCDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178203039370.11294.14178043699250491138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f887cb0c1fb3aef236aa842a196fdbb81529d533e0c3f31620fe6c2c3451c524
Date: Sun, 21 Jun 2026 08:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782030393
