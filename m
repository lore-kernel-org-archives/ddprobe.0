Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AC440DFD1
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774757694; cv=none; b=NL61NWVnoAkPn7OhKqGURCZVD+p9CizSASgoSb5rLWAP1Yohz8mfsQwDUJf31ji4AzISGIDn+kZQOQKekIszQU55hpcaEcEHVTxuvKhzs+arSwEvscNA5VhU6bhbKUcifeSyZ2gVRsiOMPRNHB1m4D+cKcsqFRbN3LXjc6xEZWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774757694; c=relaxed/simple;
	bh=wYg2FoGU2CwSE2T3Wv+QJ/UhCLmwDMSUtHG6oRZbheU=;
	h=To:Subject:From:Message-Id:Date; b=LTlRbK2UhutAKFk+YOpYaJuuCv37tvPextfB9ft1JCq6utnFnFGWLd3DfRD2FfR5nDarCc5QvdTaqeeDiu8vZ6Ob2Y7jdbX11UqbUEFUQF6lsK79zINvPfLQEQYkHnaM68ndlTyxTEu+KD1Z7MLr6EsSPg6xLwqjeO3+GgIViN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knElM1Bi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knElM1Bi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A797EC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774757693;
	bh=wYg2FoGU2CwSE2T3Wv+QJ/UhCLmwDMSUtHG6oRZbheU=;
	h=To:Subject:From:Date:From;
	b=knElM1BigL9LPjGXhdvQLOCOM4HDC8vsHxXc38zKn8EfY+stsjTAZL6meHMiM4SCH
	 p3KXaXM6m50es4TntZyN8qSkijZ/fqkJhaDsjsYubxOT1wi8Xofqbgg6+2cSCiqRWu
	 UNz02Fap3K7pDnNSdo+t6OXpjTvJmCYDy62Xj6wsFSkgUinKAIi+x3zdd5CxQXqI8q
	 b7JxV+o4HZopK26NobswLe3UEqFY0w4GUD+Lbx8SIwumXc8C14TS61qPf51gPJJVJM
	 DWsUQvSY//Iz3+69xm6PphVKz4WHxYG1KEn5ZWNZw45gjMj/3GGnU+jNxq9FjlfELi
	 trHDIvihULKkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96342F3D5EA
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177475769358.24747.5575592530230866962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2194b16e4513eb0fc204573509e1647523f19e3fda2c52be4772f8771a394809
Date: Sun, 29 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774757693
