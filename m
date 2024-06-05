Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C64D2837A
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 17:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717607243; cv=none; b=gYd6T57j6+LbbC7XUmxxYmsG2H2iFP3KyJLjuivVotN+Ar9VcwAme1Zunv0f79TyRYxbiUWG5dfXJxX20LmWcXh5QU/T8Rg8Xl3IF8fB+o79YhePt3pMw6ela5/1lpSo/yK1gGc/Q+ufnk1UZK11Y6vZW3lEPs/KDxuFDi7awVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717607243; c=relaxed/simple;
	bh=q0HQahGCGTJ4zl/spuVboZIvL0iPeNCPCYq58skG560=;
	h=To:Subject:From:Message-Id:Date; b=YX/bDLAP52SffneN8jisXBH6WXGXFsFR6KTJurYt62u20e7ihPq7z6ImCPyEzkiHYoYiuC3ucdE/Umirf3UxREa0A+5nYRjHHq7tkQ5UxnmYj8FFDo4oykGTSCLuNtEvNLp+7P9bftTVYrn60ad7hgg6c1YYlYuN+Hu2KIVnTiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKRtcJSj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKRtcJSj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE388C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 17:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717607242;
	bh=q0HQahGCGTJ4zl/spuVboZIvL0iPeNCPCYq58skG560=;
	h=To:Subject:From:Date:From;
	b=QKRtcJSjyWbKNee8xG9xam/+Gj2ImEXvDv7bFAogh9J1rx/I9jjsInk4aMIyp+vzS
	 LYZ8eEfBYD5tVdf39nR6hZSOQtZiM88Tl2Jr3yZ3Vd4LH257+hcX+lsn3/suKioTFh
	 Ya+pnW2ISMTs+PNWZMrRcSJECUlx/FKCPILwtYohbeHOguIcHysl/gUp7AU/GaY2/i
	 kd+LKS5g4nuWARDwN8Ev5Zc5CjR4g2oQW6XqZ+d3eT3q5m/0lFt2YTvPDkOiuGKWBR
	 u9D2kUdFMO9zmS0Di6tGg+J6GRnTnOnZAjJq9nhOAHoEcpLelPGDD6rW9FZD6odhRK
	 xYizQF71EAkDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC81BC27C52
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 17:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171760724276.30966.9537194121461404653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c6064aae3c9497881466b3cb0f6c4280025dcc5ce1a73cbaca283e366b24ec
Date: Wed, 05 Jun 2024 17:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717607242
