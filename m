Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6751F3BE178
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792262434; cv=none; b=hSH0zzmGh9oO0dja+pFoelROuToPoDuXcnY+OZuI5k1ccI+uOZy8S7kKXy8bQwwDuei9Z26NyFHIz6RnUHjlIcrY+DD4TjvkWDoaATT12j/0XJJAlShDuQvecnE4Sso/utfl/mrO5vlKFgvp80HQga44D+dOj+kJX/+PWP63ppw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792262434; c=relaxed/simple;
	bh=TKe5uK/M7G0YOv+6l3+81axP1+EidDd3AEyU2aWHXzM=;
	h=To:Subject:From:Message-Id:Date; b=GqsVILORcnnLgSA1DcT22guhX6sx7BTkf54COdM3JVRVZOYsEDJSsSAlui0J1yih7Voy9byTvMA9ypUTQo44CWaUWD6lvQL19VoojH/F6BXYpGJeyzBW7FQpYsUVbnrIof5lVuiUe0EDKdxLdnCKaxTBMgi9kgGNnsK4vNy7Neo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ty0pKtM0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ty0pKtM0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E95CFC2BCFC
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792262433;
	bh=TKe5uK/M7G0YOv+6l3+81axP1+EidDd3AEyU2aWHXzM=;
	h=To:Subject:From:Date:From;
	b=Ty0pKtM0s4n5449UEroN39jXvx6rUH8ea7MHiFBkhuzBDthQmA9VhYLPxZmwoI+Vo
	 xMIk1CzqBTVxBFq+0Zir0Vvr16fC+rfZXZHlyzV8P2hMn9MUNiaf2a3suNFl1aN4+Y
	 Bnv1+PUaGDB2N+FMRZZuqH873WY5+sWN+SRa4+o0q40mmk24x1/czk/qPshNpD6qAv
	 DpihGjTWisw0N48FeARaITSHEVGljuRgiCkuP9z9GLonFNM0cUjEMQXu+8PpxL3AlW
	 i8wYIw6Puc6tNwMVyLVCVI40hDxWyG+ryLFl0xySboZ/94uEwCZLSyoSuV6pYox/hR
	 TCrpci6Uhcc0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1565CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179226243376.32529.17953286369374081537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6314eb33c290d6d68ced9495929e672ff08e9ec1c5e39ec78fc34418c12bf4f
Date: Sat, 17 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792262433
