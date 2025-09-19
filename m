Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23D4255E34
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758307193; cv=none; b=gm/xa917anbnFORevCQ0ao+JxqOxlNJYYqaaH9xS26CxBRd6LTQA6Y0Ahc/kgsf2IoD6q6f1MlsSGoLVieCXh414cnxODLV9ihmRoiMexC66GjVswq7CL8b24tl4XwxXgN/2jXP+gDcqZeoURrbR919bXSp5GRxrYpLeBhQs5jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758307193; c=relaxed/simple;
	bh=2ZlqH5djn1DKU1j+d8CjOYslF1iY/QBWg8rQeIp2A7E=;
	h=To:Subject:From:Message-Id:Date; b=LkT6db2OfhOJQBGpiHFhwxbtweS5heDj46/iU0L9ngbV4A2fTeq/TQ8a4LB2ww5sOvGsfH//zr37gVIQNhVADVdUKkLzk8SE/eImAZsX00gJrmavjZKx1KZc1JcwdDXKsN2w/jOUaQEptrR4xq8crkcu4c3Ozp6PnTo0k8lMNpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJX1FI4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJX1FI4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C4C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758307193;
	bh=2ZlqH5djn1DKU1j+d8CjOYslF1iY/QBWg8rQeIp2A7E=;
	h=To:Subject:From:Date:From;
	b=tJX1FI4XmwvYJ0npYt+0e8zBxgLmEysC8keyWljrD152m3V9T20QOI/NHWTkjm+1d
	 e/e5Ho+d+gswPNugnq6blM8qCx7KN5yS53o9vHewce8t+Ql4F62TqhdmwL4qVJ02JE
	 +Hmr/S7lME+LwIMLOuAcPOgdOXs4fZRwOlhGL997hHMW+A/A7C7a78vN8z1fLZjdUW
	 ivZKyjBJpeH8TlwoJJEHaPD+uTSLa+0jvHLsKi5Nv2+Bhu7WgGr1+e1WfddvB5lwdZ
	 9G6JlpEZlbvdtRSCPWkdVxbOd3mffaaeL87jtrbuBdeXykQ4+4Rrfp9o1GH2Z1MgvI
	 udS6zchQ6/Opg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C97CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175830719359.32306.8170206298866997419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07fc2aeb8c80a36ed30cf562f358d85d32139fbf62df15b1c75d38fce326fd52
Date: Fri, 19 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758307193
