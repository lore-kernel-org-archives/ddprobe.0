Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3678E18D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749663594; cv=none; b=p+uwB1cM8ipFw8xs+0wgotopzZ1KxAveNwOT4y/u2G6oIUdhkCOo8qTKuhJ6EbHDDUH9+P4Q3OppJ479qSfyPhyQXEmRRhZVjd06CzuENJxTPDgfdUR+ZsamJSH92y7k2gBqvR+GXDzHc2/ax2+ZtLcxI08JpLRo/kK/xEruzA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749663594; c=relaxed/simple;
	bh=ejcJbkb0mprYRgrdSNH2ct3+qHWigHnCNa7jnoq05nQ=;
	h=To:Subject:From:Message-Id:Date; b=Wz5ZAZKjDnpLZi/v2rQUOXd9WvEFlXLS+m9GGtt8bF+9zNdE781X6DOLkSgZ0W5sIom+D1c4GOvaRlnNSv0XgvBT0SgbFTo3eAgyzL/Io+Ly/1oaaKszDFORLHDXMxJpser8iew1iaQGPVsjRmbIWH7/bI8zMM6mdrV7JkzeAqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vL8cFYiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vL8cFYiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BF2C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749663593;
	bh=ejcJbkb0mprYRgrdSNH2ct3+qHWigHnCNa7jnoq05nQ=;
	h=To:Subject:From:Date:From;
	b=vL8cFYiI/spMD3hJ1RGYSVfWOznbTVChxO1VOTOml8xaCX9dCJH+srvsApA866YLE
	 YrameINAVYORdTgrzSnthQU5faR37ORQBCF2Wf5XqLzwRCfHmBhnKeFbUaahp6xeUp
	 mantX8IC9aU/H8lwfYUhzThWDkDVUV58H8m8Q0/x71ihXKgd2CrJCrx2fpi6RwgAxe
	 64ya9cOmdbMUnpU8HlWUk9l9IVHISxERAXhqaHr8fpr169ZNMmkql8Tyt7aMG5KL0l
	 0gDqxCp5EiwBakEQDeVfLdL5+Jl11JaV/dlRRc8WtpGKNCvl5q6U2ElDPJWLOFbOso
	 9z6wA08B5gVew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9225DC71141
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174966359357.8485.209358022746056263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e4126897f7f26cd745573021bd96cee26b64192b996b466e613b86eb8b90541
Date: Wed, 11 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749663593
