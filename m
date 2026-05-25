Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A9F39734E
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779690154; cv=none; b=haujwoX+u45rQAaCJQV+jyZ0peUoQ8CajJoEI+oHTOPK3FNHZ+1rjvg56zP3gzMUIz3Rj0h81HVRm0w5gwFSAUrzCbSYk+ARoZNRLD1BfDtqEhwncqeXDR0k71T74dInAhQovlrl1Ebj4EB2w+P+iwvjzAJBnuHIU+qfu/jzXa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779690154; c=relaxed/simple;
	bh=uc3Hyrkj/F4ZcOuojOLcwG5aR2w/Ta/MKromYMJv/7w=;
	h=To:Subject:From:Message-Id:Date; b=XLs/FeFi2X0MjHfJGNlanTphUYNON2WmETwOvZoXOZs29SNeWh7Lm5OUN1zqfHR2ciuKOksuGzNnett/IsBIlxAJFrxiFlCVrtQTXXRKtGzKk3SE7fPRjC+ldTYibBIgonA3gSxe0ATW5jAredQrgzsDqbqTpv2SjyjbR5gVkOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGNejYWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGNejYWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D9FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779690153;
	bh=uc3Hyrkj/F4ZcOuojOLcwG5aR2w/Ta/MKromYMJv/7w=;
	h=To:Subject:From:Date:From;
	b=rGNejYWkOIrReHAJFB6VxxyztHxtacrtl15dhDxE7I73iYigKb+U7LYQhJ6b+edr8
	 Yk2csRArRP5chCnw0XrXlOxesZWcxzOHllWv5VvFFawwIHns2rAyL3Q6SQb1kiQQob
	 mdR90fOOb0X+DkJdEDk3fvn1XPeqL+8kdavxFdZ011K/8n0aPDOi4pOWH1RfjLd+UJ
	 kaI5otCy+VhIVdj4jYv8orQ4F0wasEy+TnRJ3ibMseBzcsFaEP5BGdFdbbZLfsbnRM
	 3pZd1Nx/MzKR+KVhZmNc0/J/SDaFkuCuHsqVl7YljfJJP/ZFqm8avdL1YfXiNRD8mm
	 w0NmHdn2BN4vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A931BCD5BC0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177969015368.5369.6221968441826445376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a256caf12e115afa37328e9e0e3fdc213a4a698d8a435aaa721940f9327693b
Date: Mon, 25 May 2026 06:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779690153
