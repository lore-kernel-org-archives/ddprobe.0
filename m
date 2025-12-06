Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B6C1FFC46
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765062774; cv=none; b=evLE7fnejXdUAl3NWcjOyyT9KmyUiPRoTpqR6A19bbK//PCzGAadRQauH4P/XqDiHKAZCWKPVBtVAHLinWd/Xbk4egFOPMpMx9lLa6hLJ8S8rBaktCHqgWhxbiX7aQVWsuzByPo8RLPRxtqozAlsTD00Btosgl+mcw8okpT6Rgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765062774; c=relaxed/simple;
	bh=cpj66z2q3plRHnPDLU2wnFFQP0J56M56QejM/U10Juw=;
	h=To:Subject:From:Message-Id:Date; b=ZIF3OcqDdEUmH9wYUC+dWbeo8lBROIK1XwAuTLbR+xSS8NFfrjTcoEWuvq0pPuEsRd8ut8rN3m+ERtS9R6usf8hZth0WQOGMRB0m4pC014tH3K6xBfZ+uRbXTKFTHIFMF+E7RdVTh52hyeZc1qjz0gIpsvqKkm/lEe8i611vvto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abqk0tbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abqk0tbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5248C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765062773;
	bh=cpj66z2q3plRHnPDLU2wnFFQP0J56M56QejM/U10Juw=;
	h=To:Subject:From:Date:From;
	b=abqk0tbViXHJJmVEnI12AkhlTbb/m4ylhXRh3TwdQIu5STzD58JcuWk7O0fz3TJhN
	 mCMe12cutE3sHKCKNxwYluvnSxIoe/00G1OVvrV9Z7Trgxt56fg9dt1Kx18TT13gtD
	 RdoEiBdhrv09uUF8fTzvkcPLpccQE1ukIkcnIwXcqAq+dZW6KitSOhjXD1idDLFF1G
	 ngpG4V4v48uehEnP+puyvYTZNU9DrgsVpWWjiAFHdrjDdtuSp4BscV/oAu9aWFaZbC
	 mQ01sWlqLkHfgBOgpVqzn8fxviv5L+Lw7qJd0BjB9R9T3qLi/qAbJ9X/nh5DcKqkMp
	 ECoTCbzhXKehA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91999D3B7E5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176506277358.30130.8226259922325491840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd955b05668a144da9f45fa6c68a9bd459d4898a77945c4918bae29f479d435
Date: Sat, 06 Dec 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765062773
