Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17933133426
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707232697; cv=none; b=XWGKJxAeoKN89/WTtQC5zZG8PWqnqKo2Wp/xkvreHsgSKuKs/7eY8cfIKVDfE6eLMmUdqFSxxgLTCdHvYXKjePex6NI4CuAxGbTxDLGJ/eh884VoeotbayYErBmSu+QJzXUJqePo9LKWyxZ5m2yFb9ePpDO6N/mpIRRi9R6rc3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707232697; c=relaxed/simple;
	bh=qu+OgBhHGHlTGObGAMAvX2OkG+gY16f/aOz7OfNkIBA=;
	h=To:Subject:From:Message-Id:Date; b=cwKG3EQJcrbk5USuWZRu7WzKBaJ54jV5KbaRxAc3k/zksNq5iAtfXm6XwEk91YdE+eNY54XDq9ur3/f9Crbd2gqge+DQB2A2saJkhu+CgRM5ofLroIOMFwI9GXOHlwYP5grO9+TI6eufAeyx/5BivRiMIeZY1EO9wUzLDbzAW8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mv9ifXgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mv9ifXgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AE6EC43390
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707232696;
	bh=qu+OgBhHGHlTGObGAMAvX2OkG+gY16f/aOz7OfNkIBA=;
	h=To:Subject:From:Date:From;
	b=Mv9ifXgwRcAYMf23B+nkijK2d5ixTpud2muCMGsgWzDrbYPMxujC/aZqxmZ+KJfOi
	 KeGvj+pdP6csTXybGaWWsNpHRlJvcvPmxpJxZMe7KMCedFEkAtBdZ7mWRvAUNa+YLr
	 be8a9hU1BvUoFj1GzLlLSLvZY+Fwy8SiW2ReZKPEEvzBWNcyPCXykArdpSWMsEzVo1
	 52sqbBrT0LgjH7iWX4GIej/2ykz9kLnPGnCaMmX/aV0RMFY3OJDdkZOotQAWDyh8wR
	 9+DhSg6agvH1ad0LJ3YbIdfTSkSb2pkyF4lz6p2r45a0pNIooWf+c3rnwnPc9SntPv
	 8LltnmnU0YgtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76707C4829B
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170723269647.17223.14058362066383719022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 207fe5126e5577afe7c4309f7a8d7917ca07f2c64a541f0d5f79942c0618a79b
Date: Tue, 06 Feb 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707232696
