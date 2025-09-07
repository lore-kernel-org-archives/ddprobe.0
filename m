Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C84A3597A
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757285394; cv=none; b=J9KyAB6sdBiYQ4IcQnFh63juFelVXZXEqebDZtH4ZsqiivKd0elWLQcww7xVR0xF+uVBCgECGXAPv5tXwCGz8s/g0UFDMD2TI4bgqSPmL1m2QhQtKF1X9mNTcGymAp8OoSWh34IwOcJJrfV80beK5Rz7tk7pjpwurgtCVR+vxdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757285394; c=relaxed/simple;
	bh=XC0/ZyzEcWo8A0PIoooMLTaXRYjjnlzR8I7i92gmlfM=;
	h=To:Subject:From:Message-Id:Date; b=HF91ifzmMnORtChXTTuTjECBMFRgGykVwZdhtsvTEdce1sk7cR+i46SIytTnglYQOXyjNwl+S1OzSlw100z9brFWiSr10tVZU5grs9JLBKwA7igi9ZpjrVrJrgJvPweOX9fhnnlzDHpFxtPQOYzVbjoTc+3bJi8vkM8pPnbFHnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCq7sJYL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCq7sJYL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53C6C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757285393;
	bh=XC0/ZyzEcWo8A0PIoooMLTaXRYjjnlzR8I7i92gmlfM=;
	h=To:Subject:From:Date:From;
	b=RCq7sJYLeic+JL+TQFybnMf2WC8pc8lHgiHrLw5KJ4U1e1AQyDUC4kzuffzesibUg
	 OVS6Zi9T3yd/n8LcpiRuDYfgl6umzqo5KStsqsDL89V4jz4AX48uqIi8E7Xk3awe3d
	 qOmthaWDSnA19zaUvZLcJS9F3aEIw7MUazVFQCGpGQX4+NTu0qET20oEWPLKCe2dbt
	 C5a6NSXfkOUyOGHuffAk2hGn8gwrKiHmaYRnnROqfkrNepez0k/e+pA5rrjG5KaHB3
	 rnb2V3mNZe08GqUtKyQmyvZ9ayoG+b179d9ysFrApPn3SIJitX9WqoJ3HvzSMexZkK
	 6/u46kvppbkMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9199FCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175728539357.10390.854783359749618401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d289b189e9e3f9676ec0fe90a780a7a65a79f46ceb46cad6ca8919b147d691ce
Date: Sun, 07 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757285393
