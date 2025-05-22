Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47AB13DDBD
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747903793; cv=none; b=OWk4X5JqaGC+CB4lCbEF5McxGDv7CtANNZ7J1Ja00xGB8THgufc4DdAhWNisoZeTWT0yRpzyFk5GNgl76W1DLC+6yfTfk5bmdXd7SG9P83rxRNIx6a17SW2bJhb3a1q/CTstPFhBqIsuVTKuGNH1diWEGUjXT9YVE4xu+5/Zerk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747903793; c=relaxed/simple;
	bh=xKOYtUwDZcy+0UfKXuB4aXimo9bQRlTFONipsNJ4qSQ=;
	h=To:Subject:From:Message-Id:Date; b=R4u2EF+wV5DU/DoCP0Rl59JPoBiCGHre5tUACPtYUljqGFR6F7LgfvMFQi79eBh4Sov/fFxmiEjjZElOlwQfOmNm+eE+5aFg/k7jcuT6Si1idSwaYYdgOP2K3PhX4kLkfeAMfobomfscOR93xL2FYKK5Wnv0KcAHYaybx4TfrkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4IBE6rH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4IBE6rH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C972C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747903793;
	bh=xKOYtUwDZcy+0UfKXuB4aXimo9bQRlTFONipsNJ4qSQ=;
	h=To:Subject:From:Date:From;
	b=a4IBE6rHHDooRjan0nRrzZ9IntbbZu9H0j65Sf4FZvmeYgIFDkkTTfLci/jPgiVQj
	 fiuKtsCn4J/GNprx4dGmufN5+xCYYFUhxp+2/ju6v39UgunmkSHGChmd5K981S9Fjm
	 8bNIphNZhm6j3uDnmEW9CpclIA1v/8nTSYNwxpWyy4dZ61s4+pMwafJ945MdxSSwvD
	 D5kwKn1Pp3gD3ae4A1SMfeJUJVTdW3q5f2vSJ/mNUy+U5TZecDPk/F8UeczsVz0uC7
	 fngrh629EA7T1g2z5EJy/ZddxtjkMjmrceVoHpG1Qlg9cjDinbi1uhFt+dNblKqOcC
	 2R4oHaSOKEKcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB42C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174790379358.16717.14398760552178818593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a94ba378e1221a83bcbbb65a04421f7dbf70e2ee55c783bf1fba0425a6cde003
Date: Thu, 22 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747903793
