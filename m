Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853681DDFE
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789703434; cv=none; b=uWC5XFkS2jDAgiX+SPxU6aRrGYytVw7DBLKGlCGz4pAdlJCblPQXJJN2WUuP97GJ/wZfVSKOTITdYl9n/fAp0puo5U71LukDgqkqH7HwQR2ds2dP/ekRGc0Eoow83WIVdG2wtQba3gp+FV+GEM4xHnE+hoIKINTLsmKssM1MlSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789703434; c=relaxed/simple;
	bh=nHYM3XxV3rQzdjj23kpzHeTdpoZ0qfl4dkJzKH2CPm8=;
	h=To:Subject:From:Message-Id:Date; b=gjx1MlKZljyvuRfdosgY7/DZZhEFJIE7qubBi1RUodYdGxCMZAHA1pGWo3ly8vWrVUMHanghfF3nGuAgsV27ksmJp4dbRbJ8ZmVJTIgA35q85er+zE9AapIaSsG39W7uX2p6H+wGgdkFv3QEmNE+q2o6FYAIWLc/LTLM2mz26/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIc5zknF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIc5zknF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC173C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789703433;
	bh=nHYM3XxV3rQzdjj23kpzHeTdpoZ0qfl4dkJzKH2CPm8=;
	h=To:Subject:From:Date:From;
	b=bIc5zknFtM9v+K7NY2qC7g+6eZmCMpxcw7MqQgqZV38VeVKjucPuIGcPHNT/5+mGy
	 HrPUvqhUZbbKnw3VI85q3FRjbblhJeLw2VN+ZQ/izYDnxKPA38B6SKldo9jNHLvVn8
	 Mi+zuX8OJDF8J0HRkrILEA+jBJ1I8oZ8DrTL5ohDKWZ2ABYu4DF6dqMG/dOmSzWdHP
	 9nM9vtzIqkPGnLatLyZjTma3gHHxZQP2khPMTRn33XYVfiIA04YBIaHzM2qGJifzys
	 18pOlnGzMMAlZqL8fKOv0NM8lz3/A3M+drwTk7n+csfeF0MQAI+SMcEUG3HuzXBddK
	 L8sqLV4Wa/NDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9772C982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178970343368.22061.7798675820674046632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eb3a223768c3545cf0df71ca8ccc421ce39228fee32127f9a2123ea499faf42
Date: Fri, 18 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789703433
