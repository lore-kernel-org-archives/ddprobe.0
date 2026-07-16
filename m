Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6485638238C
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784176714; cv=none; b=aE+f+n6NmYxKVqfCRi6lQoGgvuZugFcRqF5mv4AlXSCxwWXEvZxNw9M9i+3biFccS9r+vud2eI7as8NIy0lYvZr1hf5yMTCQOkwwv06PKsRtqW3v8v9yNu2fuxTbavgv5Y/mN3Fdbka7EhHec+vQT0RE+erk49bCwiR9mV2onwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784176714; c=relaxed/simple;
	bh=gJDuOZ1ZL75yGIx9geB1+b5htNNt1eIuSrNf7SwOAN8=;
	h=To:Subject:From:Message-Id:Date; b=Tm2VHBKE4gRt4d9KVPh4khSHBmDpeEx6ErtJOyrEXgE5DQHEFObdTT3leO2pj1XsBEFPYPTVFjtlTJh7fhwdzJqblz7Q3fYWuBfhCU0uDu9XVpC6KUZ6s16NtoAjI5w60ScrNdV0FPoHeGGxbWcyRVCEtcYLxBFayf64AWTgOzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBhdcBES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBhdcBES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41B4C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784176713;
	bh=gJDuOZ1ZL75yGIx9geB1+b5htNNt1eIuSrNf7SwOAN8=;
	h=To:Subject:From:Date:From;
	b=bBhdcBESTD6OX2Gfue3Cf2RFySiO7ZyawqSphlttFAQcn1dawQr9TTgAYZjR0r7nC
	 fDK35jedx3b1VBDaGcw7m/c3YYGAXFuuclPEv0LgF3yV0pSZEmZ7BMR9LTmSfiHNxa
	 +aO3CNKmw5bAU0xbc8DOjfH9jDXMjQfyEqcnFrpv1T9Y1FdKDqBnG77zslghOD5PEx
	 ec/cWgitWFhrXh1vOfyUbWACrkitmiZaeq+K84pyAQd8RGxd07NHEMqQ9+DbuCLocV
	 MarBZW2hO/Lif5mGjQvZYhlLBJXezNjyrsQIvMBRqA44chqIIi3uySD+4weTQZEj/p
	 NDwn9CTYNB/cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC47AC43458
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178417671368.633.987968331119225370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b796c2fed78050d97e61a3e0c7ac8252c4242de5ed17e07b0c7beb0870aabf7a
Date: Thu, 16 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784176713
