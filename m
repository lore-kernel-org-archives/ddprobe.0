Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177A3817
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733269554; cv=none; b=P3sXXWQci1nUvllPYK9GOCMLdf9t+NHRn2C4ENXs5dSKb++skizs5gj4KTyPlyQ4uSQjOpQHjQRTab88J/DGLZzGIh1sgCSgmsyYx5mE9X3U2fzLyKi5a0mL1O0zHX81eFSVAa9rjaTf8OO8iiIse7TiRQqzp/dUk6VvVPLQhdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733269554; c=relaxed/simple;
	bh=FJq/rdq5URbOs5ZStk7mUW356zIPClkG5Pv2rQArRes=;
	h=To:Subject:From:Message-Id:Date; b=B32ZmdsETmZeugiPJDwqYNvCplEUzRlGM8qyC67BRdCgiw2KGIPKhGSg2lp82x3f7CQzftIu2jqmgEEFoA9780mDDvHVw5TSPA9qm7s4yIf7yUVlGOgWy2ta2jOkfgEVvXyghyb+j/Zl5KtFQaVBIBrMhv1NMtwGY+UOdNVQN+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMYqbv7/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMYqbv7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A725DC4CEDE
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733269553;
	bh=FJq/rdq5URbOs5ZStk7mUW356zIPClkG5Pv2rQArRes=;
	h=To:Subject:From:Date:From;
	b=UMYqbv7/1aFvEU5LVReSosBmHTbT++k8fzWlZOO1PJDOf8xgYJGdMl1qlnpsQ0nV2
	 x149OgH+EC99mNZRee8HtsV5RuKt341J5I4J35Ndj5UxitulT+T+T1jhJzxAxtURhR
	 TzfNFZk15a14be4EuitQin84dl7gcxHvgjtA6e0+AYpEqKQnsfRJwfnWYTC4J5IRrJ
	 +PN/dpHLdebmL1dZpI2rFPcPC82irxaAuxj4h1SeR9BSZihJUokwqYPZLhoIXALP7e
	 gNtIKBSZLBWZuLljJYwqvIiX2xrRJh7azlxF0tpfXnZy9B+N+PRHmsYa71ratWwCg/
	 4KO2RMyGYE8BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90488E77160
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173326955358.22820.625853161126295579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f647dd7140bd575f70b633d4fb3f8e5a72155eb3a1f17af484b9ac0c16a4a3b4
Date: Tue, 03 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733269553
