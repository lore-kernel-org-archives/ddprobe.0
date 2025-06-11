Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0371A83E8
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749658194; cv=none; b=FtWZS0IW+I+S0uJDj0p+aKzUvlsOkXBdSuqURYt7Hv2ffcu9LimIe+cJ6FrilP/7ovkWZN5znfyAY1mdo8tINFpjbH76/ty5l5BxPgIQTM8n9m+0U7gbDQymP4s9cCl5nexG7OblsSiWrzzf6n/lX+DIC6rVJU0sIUmLhbd+asE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749658194; c=relaxed/simple;
	bh=B/DkkFEQ8AXQLVq3w0uVSyH0/Kg7uQ86HarnaYRyyDQ=;
	h=To:Subject:From:Message-Id:Date; b=WtUrr1EAIxIT3UM36gJIlwWqG/Ow0E9dJvsJWNsSd2aJdESxeLfuw5NRiUH6nUpIcQI5qMagxn35i7sR44b1sCuJCuNl2s/asVv4J1Gwzqaz+9W29KD6UURCgFHqtbvWSWeSxqU+aFSbU4ioyGSBcmhXQcTA9WHa3NKzShef1oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuCk9oyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuCk9oyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3276C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749658193;
	bh=B/DkkFEQ8AXQLVq3w0uVSyH0/Kg7uQ86HarnaYRyyDQ=;
	h=To:Subject:From:Date:From;
	b=JuCk9oyz3aE8HoekdmFumtkeGYg6ppUZxp1j9HYOtPV2zCE0dhiAiOwiVIlQAhiat
	 dGVpbwTdH6gSQJRl3bowKMv1JNuCe+cqyIf2h7CQlAim9hl+UeJan+zeqTip3w10tN
	 F/c7VVPbrLiusfGx6eq6L+gDPhtH75HKFvj+7l9JOEneQ+QIPDKQii5MXe5nT8sct1
	 jLqkorKgLeNCLK4JcebNLisqev1yzfH38MT3q6X2lPbd7yptxZnPoWNlxBq0mMQrTK
	 sjzytJ0DJc25sy4BB/TRfiYi3sA6qXAs5bwdD1t1I5JE+g++Ag3wmgHOg9BOdbVVzr
	 YT9YXdCNz1Byw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D725C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174965819363.514.989822318625030570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc323dd36fdd3c669ef157b871fa48c38511b47907d3df928529b4916ddced0
Date: Wed, 11 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749658193
