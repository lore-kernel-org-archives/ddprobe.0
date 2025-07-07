Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C79C17ADF8
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751855994; cv=none; b=HF5BcLyuvOuYu84xc6oEQo6Adm1V+Oq+DtiNHq39JI2Ysz44kpNW+RwxK8eOGDHzYDyIDsh2vJiv4sW4YsoUeqm3YjEfFma0shO3YhJBoocspYto1p+g09CH2dQ46vbXA4/7oaRldCZm/+Vw3YjNVhgMIKPL3Uw7iyKsX/+J/N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751855994; c=relaxed/simple;
	bh=fX8M9Eu43NzaOtBoFLtNNAq+efIdMq+iogdOB8ilQWI=;
	h=To:Subject:From:Message-Id:Date; b=DGpacGjleaIQkfx+9nT7tkJAfU+7BiyQLqLqtZEjUxQshkUfzOFzjIMuor/leIm0TPXCPoxR35ut2DGJFuO4MQP0uNimqtp7YZ4BPpRgTXwY3FSlqr0ULU+SJDokVugSW9eU8Rg1O8mvSwzTkIKotQ020nvYiUctxQ1co8va7Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcjpqDql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcjpqDql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96B06C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751855993;
	bh=fX8M9Eu43NzaOtBoFLtNNAq+efIdMq+iogdOB8ilQWI=;
	h=To:Subject:From:Date:From;
	b=WcjpqDqltq2ErKWHNYPMPVlJ2WLwQVggjuJR+L1HCDhj+Bbju9wEf8gzDLOFFXAHT
	 chdiIjeoBWe3nZS148sV8YjuF4PqsZnhZT+VoqO9/j4WYWMpZiqWcLHorAnT0xBfdm
	 WZD+IunjPmBwsiF2VFRnoSNetjCaokjLCIj9nrFVNM8NSFDe2rKDN35FfM6JBessBM
	 9Q/YdgqeW8I9FutWHOP6bI1vAUIyQeA3X3xNhKbCDZpsQSpyoxVD8+z3WseKJzSn/u
	 Fz6294fH8mSiuJKr+D/1L5Xa8EN7d1jLEXI+jAsGkYJvr1Tp4sEhaeI6VhQLtE+oh3
	 aqTWRAgnUajfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFAFC83F03
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175185599357.10835.5114602418062837139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ab9139e3058380c5faa672103da7cdd4b8ecc5bddc17bbb11f6bc26eed71ea
Date: Mon, 07 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751855993
