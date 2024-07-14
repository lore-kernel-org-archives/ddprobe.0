Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4794410E0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 06:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720939223; cv=none; b=bfg/nyXe2Lv4mbrmrpVZtMyvkWnSUzuIfHlaj8kGg5bfEDOvnBupH21+MLLNyykSi4Tq/bDX6fd699pDouG5wnjXKPvVzDnE/SKlSVrqB/qADytZVmUVyu2UqKepoQIgGvZ7d247q80SjKESZJoa8ilnD/5uK2dQ6vAv3tldCF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720939223; c=relaxed/simple;
	bh=+mBaoNBN6HR0zTtn+g88YEfknI4oLzcnOAeIdRwISPc=;
	h=To:Subject:From:Message-Id:Date; b=C/8Bj8zJUkNnnlV8ZWCWPC93XkH/vIcmc2liJxpwJhnNJWObUoIf5gogrTgh8viA3txxI4WL/mXSUZcod2bpnMPCzp3oBPa8qBpMlAzBNoosStZ8gAhINwZZ8HpSw7PN3TSX/8PAmYWwo6FApm34KjaNrFiPYaHiRs3vj+23OV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekDE0CjR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekDE0CjR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5722C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 06:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720939222;
	bh=+mBaoNBN6HR0zTtn+g88YEfknI4oLzcnOAeIdRwISPc=;
	h=To:Subject:From:Date:From;
	b=ekDE0CjRynKrLRAb0KAriXkrPjXTny1PBefcX8x44eyQujSVkvlafxi9jvYKj1PTc
	 Ru4rkY0zVvZYP3Vt4wcBaLTW/2WCvbEapXSphPauBI5qPZ/zMl2vdqPhH2rRI/AMfF
	 gzSly74P0YuPq3+fcp9vpvTITr0MEzKWx05qn+IS0APK12sYk5HXi6xCLYLNka/fg2
	 XkaYZQWYRagqjPRkkuarjrkJvJk3UuJiLJjIRzhy2gZlUTZNKh8kS06rEK8McwkHiG
	 IdDhG+bDX9OAMx9oVAocQM6guEDrKYVqmnLyNzYVI83BGAM3eD/cc+UVjqL9cdWryo
	 zfE2HSnv6OFNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBB2C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 06:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172093922276.29049.14186280547040072061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 098c9f08d6112b33847322131a0c4204bdced78cc5f9f3ed3435985e5ba26401
Date: Sun, 14 Jul 2024 06:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720939222
