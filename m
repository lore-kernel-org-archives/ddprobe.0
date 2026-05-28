Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355AA34A78F
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780008754; cv=none; b=D2/1w5PasDtwzKT+7RJV7XmkGS4aw3VvK7fF3/P0rTfcVevwu+uHe+eYIbEPb6hhorvd2i+qCZytFKm3945H9C6V0OmUGxFnaVgUSWt+mQabs2nxauAeeHO9BUMQ4hxZaAp51k25PUa9Lf2fK6KUWWbAEPXGTDiPFiw8kSd6+V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780008754; c=relaxed/simple;
	bh=l1XbCbFhNFINPOFKxkjDutMWKZyr7rOL/EgUkVdBznA=;
	h=To:Subject:From:Message-Id:Date; b=TqGEQByGc22NHcpWQy+8x3mDvrptrMBnF1OlvkeWBXjI9DKmwi3LDmrbKiqci51CAgx5urH7CQ+X4fU2WNZsZnA722mig5OFFguOkZYnEmx60t14lzkXF8otDw+GyrAQLoae0N3w3O6HAxllgS1d+Tu2wmqBRVWXS92TUtJuWQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYLYl3qC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYLYl3qC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD773C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780008753;
	bh=l1XbCbFhNFINPOFKxkjDutMWKZyr7rOL/EgUkVdBznA=;
	h=To:Subject:From:Date:From;
	b=mYLYl3qCSYozorHYuiXJ1AuKNVeg8sMDBKcK559MqrjFgQHRZ4gFgVkhkYMwSpcEj
	 JlaDktiyGbfcMD6It5euwabqkzh+AeqEHh05kTO4MoMFKfXJ6qcf3bdVx+6vh0K5tr
	 aR9ACDJq3brp0xCg9x6I1nGY7+smWh4Rj3h1xJhAidppcy9kPq1AWm7myyl0JG0yBE
	 RiHGtGj+suSYdGnmhFaShyLSpVLXqsYWBtXyYMflLuXtiZAAZLKIX3+VlRnDz9t5ad
	 T9/w1Z5FlvWBPcjsaVvpcyiNlyKhk3ow4q/sdraJOSKIn33R1QlBZggzauJhznoIBr
	 2kjFGcPeBkCDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDBDCD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178000875368.6184.6862386921604815187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1be00e4fb7ad217bb25d92a1598b0a63379e56c4f500a5ffa7a72621c7206c5
Date: Thu, 28 May 2026 22:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780008753
