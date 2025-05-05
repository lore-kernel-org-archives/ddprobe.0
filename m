Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2936A1F78E0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746482394; cv=none; b=UfME1K+95QoXAbN809gHamn8UzqF7j6qB1zVR1+ykisxiX1FofIpPxevlx4L6hzfLSJcQn4ZUQk+2/i6v3shnTiN0PhgFmcHAM7cKTBwRqG7hhAIT8r89afErOc/ETOsk0KTozrr46JyG28GT18wX0dRGHCuBkSNjWrSXyzT4u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746482394; c=relaxed/simple;
	bh=011yYJh7UPWzJ4WiNneattZmKZh3N9/2EO56jvr7q3I=;
	h=To:Subject:From:Message-Id:Date; b=MbhMcCjXggOZ1jmjgKAOteSAjTWJe6zbvtAjxNev+nk5I9YBjYBfydSupO1eBD81n3i0SmcryCTej4DYg41Lp1hh1jKtFIfn7L6EBdz56aCD+SDXAPMimhsiUuOx/9iYt90RxXgF7kuSnLRIRye8wOifvyx7ZudcD9Y0dYwHt1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVT9ZE+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVT9ZE+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D76C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746482393;
	bh=011yYJh7UPWzJ4WiNneattZmKZh3N9/2EO56jvr7q3I=;
	h=To:Subject:From:Date:From;
	b=lVT9ZE+hlq1992koCK6EeuWU9CR0tz5gGkh9Qvm6mgdvFP/xKqInX+vvSHOd3QZ4F
	 LrSTyN8yN/Qie4Wsqa8n7qffQ9bV3zThkPRd+1axs0kqGHdL4jcdEgqTdnMZ6pfEYQ
	 YNjbM6EaKLiYtZzUPa2r9nbUzmXP0KJuFX0EFytLsJ8uViZfSXA7ECbuLdRrHVmOby
	 6TgfkbHiwuOuqVGyfppb1zfc/ysFBDF11oRwX5T/9HNlOsWLm2WkIX+r8qkdUjLF7F
	 Jx8HBygBCeRTL2xNmb4cX8qk2S2YMhGvOBn+HfaH0b/9fQNNyMQJvIpdrxWB0opZuE
	 LS/GsUvUcFp8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E1DC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174648239357.14665.8159747401937751550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74f1affbaa1a40506112f052fb58e63c96add67ce9bf0d33c21a370675affd9
Date: Mon, 05 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746482393
