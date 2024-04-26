Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48257EBB
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 01:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714095743; cv=none; b=PYaO3EIfuIVufH7IhejcDsPL5RnffOCILPBxF1z+CbxWiLFUoTpQUJzmHGO/CYuMqGhFSVkMK+kWyidLht4VmY/u+J6ViwKpM2h6qR/3TFotcUfMEzBGZdSpQxQpa0v2dRxJQry0AjGo9qInYjLVZM2SFf99tBx4cnxVE/7PBvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714095743; c=relaxed/simple;
	bh=vFoXyOycwsclSx6yfUFOf2V3ncHOCuv4xrqPoPZ1iRA=;
	h=To:Subject:From:Message-Id:Date; b=jGKl9jj6LVmq5tkaYeT1BAqmJxYs8VWeYvpnSuSJI68rbu0fMebn2lIIdyLJYEOphIoERi0StPjb3m54i4TLDs0R7sYfFeSiZDDSUe75FAOay6LrNV8rzhyUsuREeHYThuHXiVFMNQp7HuB8lhStoY72yZK0Eu1VAeqQcskTaX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o59z+KXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o59z+KXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB479C113CC
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714095742;
	bh=vFoXyOycwsclSx6yfUFOf2V3ncHOCuv4xrqPoPZ1iRA=;
	h=To:Subject:From:Date:From;
	b=o59z+KXFABQTFJ+UyfY0ch5oxjZxaK4664PdmMkVGSC0Yuiq57KSEHwLdToFc6eCS
	 wtdzuCNYmNVkcwh0VjfzB05v6ihjGcUnfTHNwSUZ8ZT/B3RO1tfHK63xxOKTDp33T/
	 pzy12gcsMtE4sL6HXBTRA92KfDh/a3w7eqLt/dXOwY61laRktQiTNh/IceMTBllMVK
	 VEayPskUaPttCUPpNia+ZqmZ/cKJgaSsjPxGWpw2Oqp40xj1UJ3fCcDsmSFiJ8AYpB
	 NVVdPNA6gsDpaxhCghwWZ3GjAnEP4kSA0zlOBFr0OWo7GoCSKLKDP0di88Ebhjyddm
	 FfksxZFysnhfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6725C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171409574280.2148.171705442584526844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f21ece23701a7c9ff22bc85b913d4a790d28d9f3ae02095eb548691713c284b1
Date: Fri, 26 Apr 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714095742
