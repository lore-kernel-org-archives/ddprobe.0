Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6794291165
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744709994; cv=none; b=Prn4aAmi9e3JQ0VGL3v13RLg/dgjWDtyettn4I0P4dtpuIDoklhdxYRYI7LSwZEuRBf6qDOycbzNsw8PhDkTroe95SlfcQ/tdwYGDjGvCoTYD+aIB2YaAcDdUiz675C9Djt5/Oyv1YDdnfF8XtDfOC/Ehc1iHgiId4RMlf0JrBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744709994; c=relaxed/simple;
	bh=DSXQ0ZRweE6hCtmeIN5UCbj4NXM5AcaFePZgbIh0drE=;
	h=To:Subject:From:Message-Id:Date; b=hlcfsMypXhQa+APkojhSQ92ogStzTnpF6tGI0YZF0v1MLvd+z6ZskJGf7BuKcHY02BvkfQa0jmbeQW0MVYu+tuzbqxJ4cqHa5MHEwShZxwUBOhh6YJNP4E92zUDdOTbRcXEhed59I6WixgwVsarSrtQQJO/awDrbIE1WkaWut2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlR9eGrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlR9eGrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0801FC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744709994;
	bh=DSXQ0ZRweE6hCtmeIN5UCbj4NXM5AcaFePZgbIh0drE=;
	h=To:Subject:From:Date:From;
	b=NlR9eGrVAfa9zRnDIpSrpYqEiQUnRbmEakIIR2N4fpt67JgR7Ia0GVQkc5pgKD7n3
	 Ua63pbl+Gi09PCk8rEpdOX5t3MTs/ourno1fVqo3WG/7Ui3OIpa5SOqhuXz4ZoY74F
	 4hHbmHVS3d0h8nC2ipfwAzEbK0p/aYuE8AzDVszWHeyaRLjGiCYC1UcIHFKbwfkD/I
	 XYg4sxjaBwtpIwoTqlcj4jli3mA9PI/LBAPRNYJRVs8g1bX3+MA1YncqBXo16hyh/e
	 8qHN+e+4H1KtFZHf3u2Hm/tVXe+db+greZDrZ6Y5gqyrXgt+F1YZ8s6KCyWXrRu5m7
	 +dZTpma6mu0ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A21ECC369B4
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174470999364.1647.16722180020920283318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 629df0fc16f4f7d908a54643eb963b321ac3981a340af9000c71380e8129d0db
Date: Tue, 15 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744709993
