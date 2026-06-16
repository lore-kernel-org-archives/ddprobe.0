Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB4431716A
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781574394; cv=none; b=ezfvh2Pt0nW8xHTvpbLi7e+7Y0I2cEfabQyggFGM8vy923wsP94x7foi8DdXCjc0oBQ0ui3otlVzdFWwjIXtXCrEwX4mLFCdeSfgJa5RxXmqJhjN7BQE61nHumBGB7QrBDuukL6hs/X3thqEMkoJbrC5Q6uApf4D56okwR86QAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781574394; c=relaxed/simple;
	bh=kobfSjS8S2/ErFwqeca36LLI+kCIgzou87f1XsuUbN8=;
	h=To:Subject:From:Message-Id:Date; b=FR1N7CQAt2FXUA69oSLnme9GXQ6EYips+obOFZyLOBDsTdnViMh2hFkaTgNYnsqWLDDTkGzaPt2I8TyIJso5FdPgGTGQsP50WHzQDesfy8AhmPe6ntq1n0NbqNrB8ny2oERMFEyzAMe6FKWgDPaWdUx9lQIrI092IBTU/8ZfcIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5p8B3rD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5p8B3rD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F26C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781574393;
	bh=kobfSjS8S2/ErFwqeca36LLI+kCIgzou87f1XsuUbN8=;
	h=To:Subject:From:Date:From;
	b=d5p8B3rD284ldwvf/duQqzcSD9sKXJ+klpDS0PgVS9zsJMSE9GmOvwqp8DUHunzZp
	 JiteiWN9iLBsCIKxzDx0bkbCqifkaYsChnPQtl2g9A8JKjgH69gexlZMxAp+fVXiqq
	 8dxvz4Kw+vRt5+nmJbDEVwRyY1wsTPp/aOVqMDsJXLWrv4h/UfQJ/68ZncjWa+Se/Q
	 1Gs8uaheovgxw13rDkdjENwc6ymFfpUFKh/nW1+LXkGnQv33kbaK6wXYlgprCc8z1A
	 fWBnZQLiskSPmCDbmb2TPXaapQpnHDvsY4uYl29aV4taweStRG+makjX5+ole/vCLf
	 B40xSZPDMjs6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D76CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178157439371.9043.3810201925204183149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7e4520a50696ff750255210968ba41883eabb6b769664bdefdcaa51e0b5405a
Date: Tue, 16 Jun 2026 01:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781574393
