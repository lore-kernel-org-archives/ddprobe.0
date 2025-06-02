Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342AF1D54E2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748825994; cv=none; b=NRulVl5eGRnxvnsa4Tm1b7TMKaDhjOw1ewnvAiODzEzFru6/Gkp3jX/2qrOzzdSD4qV4QjtjQdAeHKDCTZ/lfXeMnMIHNciWS68y+gIFbAZdC51v10NUJ62UfOoe3EOTFiV3Ro62Cd3e/TSX4Wk/5KZKQVSRNqE1+y33V12tOlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748825994; c=relaxed/simple;
	bh=9w/bJXyrLLOmBb+Vl5zdSPTrSNpH3ZOhdZ0YcnAu5HE=;
	h=To:Subject:From:Message-Id:Date; b=G21JoDIgd6C7Sms64TZBORzh3okL3XC8KtZv6XKDE1Zn3IlJ3Ruo1NhYq44Fkvup3cvlT7IGsRuI8qe4SoI6ZHXy+ReSGwHnwo9at8YqEGQLQ19XijLIcgHxCvK6YDKPa+5Ur5dNO6FZEmVoFKL1NGf8Bs8JTyYvnY9+GujNKk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFS+mlf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFS+mlf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F48C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748825993;
	bh=9w/bJXyrLLOmBb+Vl5zdSPTrSNpH3ZOhdZ0YcnAu5HE=;
	h=To:Subject:From:Date:From;
	b=TFS+mlf+CnLlJFMPh+7j6+42cHG4pn9ykXwJeo1bSXHYVGWpczA98pl1F7VWBxn8s
	 CIfENPm5azfCUcmEKkyxpTYO3X3ueU4LGuqUktY2cZo69zxwCzmz6UAO8VDrLn0SbV
	 nf4e6XOdeDV5JoJJn73hfdbdsxtJcuHl3t9soD0SEO5PC7Th6pkUWWGtNPhwM5t6cN
	 kW1jbargQYFwnrZe7ht+4h8Xtz2GFD7zsPPVUKlb6EIKxbLJV7PhFOfT6n+zFvY6PW
	 eA3Vibt6P8R69UeNQOt+g7mWb2MgoQYX3wwNnyKLL/yRJeRjSU8iXC9w3t8I8mgyyB
	 5r7WVuLzYfqgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C24C5B543
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174882599358.1596.3959210469856099467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e05e1cc32c0a0e5c4049a66840c25e3f3f4b01221d89a39f3b47d307abeb73
Date: Mon, 02 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748825993
