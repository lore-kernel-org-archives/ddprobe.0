Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C3C34BA32
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759340994; cv=none; b=nypNgQ5r/v1FKLMthXYidYnO5emgabpYKc7rofOxDTN7extlq3U5rrLBn+U4hSqJN0bJRlzUhCoEo5bExP9bsmEzeAHRD8vqDtynqdzU1XA7sQLEDpTEQGbFub3CgE1pdoMxgJWWJNcesDXFxO37lKfOXl+J9G1TuVecaPyLssY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759340994; c=relaxed/simple;
	bh=wGKbJ5Tk4FMC07upFFSgDklJhPxHNnDSfbYjMxOWvCk=;
	h=To:Subject:From:Message-Id:Date; b=GmTTNgZcCy9xM+AnEN/149+mmqN/BUfZJMbLhiWznKCPTb9UYkZ9MlVZPwyrCZlOvu5K8SzftGwgHZQ6hWKyrefnaprJMFp4f1/hbsjYPZ4pIZ9gN312Ec62JwQ6onnBk4Mxb/LqoQWXaeX0yUKjYAsHckN+rzKhD1lqRzswOOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gX6Lv2j3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gX6Lv2j3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EF8C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759340993;
	bh=wGKbJ5Tk4FMC07upFFSgDklJhPxHNnDSfbYjMxOWvCk=;
	h=To:Subject:From:Date:From;
	b=gX6Lv2j3IT9v9YBRjAYJKwKS/i0v+S8nRoravCha6fiT376JYUBqC079Id74UBQDX
	 Zl21VAlKYPQg6HQUed9GnVFCg+M/qI64AXCr6dbv/c9Q2jjTT8QHu5T5jjVQRWLrf5
	 MCI469v6tEY8L7ptggMg5bpDUnHHDdT53XLu9ULDdCkQE1lryCDpw2MPJ1is8ITPXt
	 QF1fpC7coer0pz8Dbs7ajdBKZw8cs1oNSVZTeMFUUJvJ7IWq+fUqZyHeaC2s6BkDe2
	 nJ6OuiOPr4t5bGRIokpI6I3MA59KI55m9bevaYgjDctrPNrPtNqC5kevXcNsOWyDDr
	 K6bnj52e7lP5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E721CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175934099362.28895.1335298215583079574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72819c5f8561fe3e1137164641bb426ab830c60b6de7e39bf5aee2d4edb447d
Date: Wed, 01 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759340993
