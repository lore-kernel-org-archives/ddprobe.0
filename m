Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334DD19340F
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732615554; cv=none; b=mQWAOPTdboj/SJXdh9lUwN97471+DPkMB2H4wz6n9ndIeGbTwJZlFzlDhIevRqiTHwbbdg3ZDC2JU6gVWyz4q4QhTkWTMP3BzEkSkEDUNKHCY2j9q8GMGZRlwYNKtAW4z166jfoUW47zS0JdVLstoUKTq04qZitmY62dTjjtip0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732615554; c=relaxed/simple;
	bh=SCzY9BXyYHO1TGHXwkxpAwl/jcyTF2ow6lYWkfFtu8c=;
	h=To:Subject:From:Message-Id:Date; b=jeTR6sgDYgpbBNQygmvNkSYoMewtWhHVhwi3Hmu9vzLNThYqQCpCIidR/Luah/htG32IV795iJmgNrpMosl+WzfLvrLm7Mz4acqnvUUXOrme2yxBdz78lBAKkHsIku92xpZoDF60G0ga2Rb4prN0fPNGhqwdprF9tuoCNF6RiuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2tKjWx9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2tKjWx9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D10C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732615553;
	bh=SCzY9BXyYHO1TGHXwkxpAwl/jcyTF2ow6lYWkfFtu8c=;
	h=To:Subject:From:Date:From;
	b=W2tKjWx9W+NxzokXgw7/1DQIBiDleoh3tzBtD+nAQbYX4jIWe/MLVNp+T9b923byP
	 TL3d3SPVJRyyUKgms6TkLmwSs3ZlHGkHa5RJWPpzP6j208aTQobVB/9JegERABjj1e
	 Zar2NUbZWrWJII6Wu8XQX3L9zslnbFOvThHnKoUj3e67wzZNLISARWr3A9rDt1ckqc
	 c5zLa6CNX3Nogpdi1EwrU5Yj512rsZR/Ztt1VsJJhpyxE6kuooUtsSCmIHQkMlrbL5
	 BWk5xaph8AqZtyDQIvx8eeZuLszAzX07Y/OwiY0HBcW6oorrCe9Y1lqaqEPkTq3Naf
	 kmHSAkxjrs8Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0450D3B7CC
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173261555364.18403.594566878951778806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 810695f61517c6210fba696513370c118e50e907d69c3f532638243cd4b122df
Date: Tue, 26 Nov 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732615553
