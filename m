Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7AA2DECA5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758715795; cv=none; b=rZns2INIltVL3Ek7JkipexgWs15z/+vR+S0kioF8Ps5veooRrej2OH6u2EZr1btYIrJWFLglWLr9PbVyi5rREfF8oomuaSdBYQxFd21miy3xlQ0TjfzSZZN85R8ZJMwoForNXunT9skhmOMGw754TPpZaCS8bt8uetfTwoWw/fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758715795; c=relaxed/simple;
	bh=l6EtNm5Tca2IlPTRMnIAEka0VkuT8DX0a8LzXeAvL1E=;
	h=To:Subject:From:Message-Id:Date; b=rSSPNoaQmUq3iNzdBfwibM7uiDHxqqI+ySOSzT2nEdc5MpmTo4VZIXJyISZM8xTxplp71+0LBC/U2ou/5FCQsGQDKttBY8m0MdA4m3mok8QKvD87+WGH2yxJRZIP5K58VjnQuJMTJWbI9bwc6l/GPPKqeIf+WwMRFNy3vvojABU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mK2hKKSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mK2hKKSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DE3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758715793;
	bh=l6EtNm5Tca2IlPTRMnIAEka0VkuT8DX0a8LzXeAvL1E=;
	h=To:Subject:From:Date:From;
	b=mK2hKKSoDHfw2YqVdwHH2HgLqAjNk4b2Zd9oqNkMHew5kIQ6KKiuqNnsbMG3hs39r
	 v/zc/K4OAV4n8hOmmDYbs+Bv3PPVeRyhyilCQAVIr32l/1pdALfZm6T+2EyeNxBJ2w
	 UR1fzPGbKqBL1tU0sWA050+fU2Nb+F1T97xKbsM/Nq1s5aVIdVJGO0jPd0TN66nB8S
	 t6lKLt5ZBoktI4YBqshtczIyZbGzLNj6OdKh5O5wVJtHzYiPVR4auhY3DPK2n1gsmg
	 l700LlOcGvd3rAF2gdsOzVdRZxRWYtJxLNLmAnoE9TUvGBWTNcejGhq4HJtw0lNXVm
	 PQf8eBgYsMdiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C25CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175871579358.18759.291730417061366354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb7ba57396c6134f7b2adc4ecd0b2a8310069fbf341938966980e5befe2bafad
Date: Wed, 24 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758715793
