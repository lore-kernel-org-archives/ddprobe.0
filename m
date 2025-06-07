Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A5E1EB2F
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749303594; cv=none; b=A4zSVTy+YjCdkJaYGNd1Ht+HLNVfJluOYJVNAfyvb1GlzW1FxY/J6JGVoPAnoiDUgjM1plKBHN+yFI9QDWt0y/cyXLN0oJPEv5xh3PsIyRPr2Mzu9UKlRmZaEMMebXMtRxd2wIyZH89eNC0VVyga4yB1tbY2kVCar5WhI8oUc1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749303594; c=relaxed/simple;
	bh=8BDTs/fq5GDidY8FR0EH7fj/ulYlPzEc5QbHbvouI0E=;
	h=To:Subject:From:Message-Id:Date; b=MntYstGrrj15/a8PvIMCZZNWx0ar1M9siNEVcPIGvTI9VdxyELkGpkDXXsgRoYhn271L3O+WeBJgwFAmBx9tERNlrP/uuwrfSebziFTJ8M9FtRbbkDEICZX6jH1VTv+s7a44lsatm8qMY9KmDsSYwnvmjirESk/n8WKpJbNuA/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHvTJ8NI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHvTJ8NI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B96C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749303593;
	bh=8BDTs/fq5GDidY8FR0EH7fj/ulYlPzEc5QbHbvouI0E=;
	h=To:Subject:From:Date:From;
	b=mHvTJ8NIEkxZzuziOyIXloRDNccWpGm3pT64uZWfL+QNZq8oyk4ODVyGwEzoroEre
	 RAgBoqBlO/Jo5dEYhdMa2b0ljR1XsK5dhotnYC06LDn9yAX8wuqcngB4meX+QmaELS
	 b/CwAtmPutPaFVxkVoviCNHmrD8I4iO2tZ+f0kqMrkoc6BvHRUjL+6v75500os4OPI
	 3BQcvT2V97XQuYD293UO2QZgpkbneGODOmXhw1siEGWOJVim3ZDMrucg+k3Y8bPX7G
	 ccDVIiN35eAX86Xil9ado+uyx2lcZcPmZVJzGAbpBB9FhMymdf1dWdNivp9wcNF7Zt
	 eZZqxjTAvuJTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E8FC61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174930359357.2594.1516522993915656151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5b6e0d514b0a499d4743561da190c4c52048d28ca1c1507fb0b76ccea83a6fd
Date: Sat, 07 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749303593
