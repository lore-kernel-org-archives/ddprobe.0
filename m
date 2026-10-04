Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD9B25A2DD
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791076234; cv=none; b=og1ThBWfovjRO2Iyl8rwT9lvIoByVBmPYd19eYcPfwhDJAHidK6bdsMQAruW+cKnoKBtsMOZ1oB0eFfEAdFp4zAYwdB8uOJUSYMA3tDPj+jR6pfCoxpuV8VOrmjauFI80iCd1m4CXR9ZCrR5RoDvzcy0nYsUcLVZB4O4iKdUxmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791076234; c=relaxed/simple;
	bh=gSRgp9637eyf2B7mNGF1ZidBgPt16PibjNQJUGQCzC0=;
	h=To:Subject:From:Message-Id:Date; b=nY/lO4/NR46oW0RS3r3gE+Y4dme4gK7CXppa/zT/HsOpP4ZtuAJP+OS+NryIr50noKGDie+btGcjfHKYs0wM/6B4VuhLxVLZe7D7kilkhKKAi23KeS2dhvtVZBDNZunN3+Ou7ZwkeJnXNk8gXu/9s04HYwMc1jBEJqpFNox9nes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNXl9HWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNXl9HWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A1BC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791076233;
	bh=gSRgp9637eyf2B7mNGF1ZidBgPt16PibjNQJUGQCzC0=;
	h=To:Subject:From:Date:From;
	b=aNXl9HWR+ZWKlMFugN81a1MKTh+tQFqXT5KIeoW/DyRkuit8u+HQV2FW85TxrrGOE
	 Wn0Bi2DQ6/abh/s1Yg2jzUPWWy5eyxurEzS+D91fYn4T0Euqs4m5dZNP6CEUPe1Qvg
	 47G/Jyx2Vob+K3US320YJ1zwebG82n/FesDOvidVXtvrC6CzyjeIOBTq/AFD3cCHAM
	 //lcbkXirwoK6V+qQqwvIjkP2GrR4M6kvfa4fgqUU/5o4nyFtd54GaEqmdrE2Amdhq
	 aXx3Qw3r8g7tGWeB855dQUq7WF7X1Bk9KS93X4H5iq3iJciaSBOR63MlkCzgBd6A04
	 IGN9bPV1mu9/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC891CA5FDD
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179107623368.28831.3778501518981568427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450ce9ced63961b48ce2c6f8c9d64fc83156fb96bed7cdf5924bd8b9f2d4d9ac
Date: Sun, 04 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791076233
