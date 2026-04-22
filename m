Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96D2335BA
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776821253; cv=none; b=V80tokjTviZEPE4MULdKLCO5UPOabEEeCPkRZ6yPah5c5Rchlw/1T12vapfXvwzkdJ7c2nqHWBTAIPaJTb58hT8Bye9rvrWxQ+d/WNi4Yhe7JyberDN/EVcMiUX0Dq51svfC5T5FX1bGOMMJv6mYowl/cpAiSK3wt50A2Uk7iao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776821253; c=relaxed/simple;
	bh=54UIs+RHNa1nRdSEkFmK0G51cFmWDbRrM5LBBtLfG+M=;
	h=To:Subject:From:Message-Id:Date; b=obhPuCkX/99lC1DxpHaWdxWue0etMVq8HR4JWO1jvObAH/wrIyVrV7pMGiBA4ZnS0TPqjUm5v6K99yZP8nY7w6coFfvmVcRBsLmqzTr2988kspTnqFoYpCHBPjSqvLphqqd6l8kRMasIIgNLV3KdFbhfiTzP7zFRyes5mlgD3EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdxGeJ/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdxGeJ/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA30AC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776821253;
	bh=54UIs+RHNa1nRdSEkFmK0G51cFmWDbRrM5LBBtLfG+M=;
	h=To:Subject:From:Date:From;
	b=KdxGeJ/5VU1yVgp1mZXBrOYkKqcQeOKaEhfjtEbq5Sl+GVXGC994RYNs2FvaCS6tS
	 Fzp9+EB8OrABYimkhoFGWE/fVLDbB6aU36L2sTt0uMwlMUuwgS3jCD+K108QjvwrYQ
	 Qgj1C8Hx5ynPKOFotZ9Gb3WkuCKEMtNlE5PEsDDdsslEAlVf45MWGTUiaCR672rUKw
	 AfoIZsdKu2Ftc/JOR8agSOy3tV7RDYZLuMSkjnbEtmPw/udf0X470R4yE+MeK9OePz
	 Hq3R37r/E6XQwf9TIKqYwoIARkXTZ1oWjdpRfrM88axvL3mDy6mPYqWrk2dlt4cfjT
	 QBNriOAI6mnbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9538F94CA2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177682125368.8607.12682543280056374045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02c0c9864a51d04da4557e5276caa7246dbde87043ef8f2f392a0d82be0de62
Date: Wed, 22 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776821253
