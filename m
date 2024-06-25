Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F623FBA7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 01:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719277403; cv=none; b=s326gxUN/BcwBNrEPEwUmyA2G7x+7bvcI3tUF/5dT/+Nw2iGv+NySQ1air+HKAQDOjxq5m12JhDtx6qZE+WK5LYUbyhIDhLtQNZs6r7wND5wF5w90S3Kv4ULPUWYp1D0NoWam7kggw25DQPbM+o3DEwxk/NpwFoOTbfYuh9k+Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719277403; c=relaxed/simple;
	bh=7UxtL+oZO42tMK2oBkPc9PGH+tDoH6dJdVt/fQKw6Ig=;
	h=To:Subject:From:Message-Id:Date; b=t7ISHf2ETB5AYAIRVxhJZjILhpb90hsjA+xZ2HDp02GWh/G05VuIuMaEuGSb62gT+KLbobcMLhL4UzzBg6wkvcHjN+Mj2JrKregRPH2AGSSVkoTFYbp8n9C5PYBJeEtnhsMVZxHGvQ0SIu2LYP4jU+v0mBBHy/0VJSXHzSfBnfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4jD6l67; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4jD6l67"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E28DBC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 01:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719277402;
	bh=7UxtL+oZO42tMK2oBkPc9PGH+tDoH6dJdVt/fQKw6Ig=;
	h=To:Subject:From:Date:From;
	b=i4jD6l67GjDwhuaGvj97wJUnY/stw5+jqYVn7jMOEf58sgRC90E45Ay+TdIIjvIBU
	 gXTOjz6yjSds9W5anKal0GDTZGUPvzolodH+9PZAPb31PBEWHIlp1Yr45Fhy9Bp4a9
	 XF9ClRPKFMRK//zy6JeAUNNZ2v9tl0eJ4DsEzsCrc98fDOqdcBuwLCqh96APcsO5hd
	 svUXL9sfhOKabsGz7iz4RdZIkMR3fxcYB3PnZX89JEHs4V8fY5DQ0X1pqHTWrU8P2j
	 KxbyjW9AN8NhOAUuEg+3V0pFNjdd8fWQXN1uV7januDA7lEIx0AvxxnPh+xoT0Z6Ml
	 EQmToz1ka7NBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD85DC2BD09
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 01:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171927740283.15520.13173991936104150624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad42a1bc0c7d3a19e6aecd7f67f6049bd98e8b202d9c0d6b43aa653d16639479
Date: Tue, 25 Jun 2024 01:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719277402
