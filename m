Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA053B14C9
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788691234; cv=none; b=n5dQp2Ur+qpUjtAxbAddjTcdrTJh5x9eIPhd7Cjdwjz+aI/Ngi/Cj3rzuEw0cqFZ2uuG68a4PCtWVYfWyoiJt/v0qi4TmIqqbJeY4UwJcwrSAPbeDjoD7o3EVoSDXDR5D5/8iZSormPxacSB6UwD/gFrHoWAw76F9HZr4xJiEpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788691234; c=relaxed/simple;
	bh=Bts2v2+EA7CxxG98B10JlU4py9gdsvUStEqFriZun4A=;
	h=To:Subject:From:Message-Id:Date; b=CUf0dy2FRSHUSVic3HClk5BAaawayLGeUAEt0wXpDtXbuT4y5DI5Yb9bVUWJrbwYjbUGCqYcD4pyt0OisXJGMZ++EQz24E6JX10vfMAjU8Y+ifvbWSoszEekBlVPzP3uKCklkv5epJxB8r42gRsg4uEh70yExq2W6j/ovpapXpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8Jc7CfR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8Jc7CfR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF21C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788691233;
	bh=Bts2v2+EA7CxxG98B10JlU4py9gdsvUStEqFriZun4A=;
	h=To:Subject:From:Date:From;
	b=b8Jc7CfRuNO3ZlM+CURya1aYF8mBdUvqLkIFyPRFunWPAzCaHV8ICcBJXCBhbrd+7
	 lZEaFwMGUV2CYckYnE4swjgT7IeK/5GkO3BLqm2RXUlxF63yoGDjs9qL53YLI/7+uL
	 TGX9l2ajEdvm0hMA806Qx2klVb2FQKFfYprKjyBMmxg4BAO9KN/fisOPEKxKI44gej
	 0Vy1Ub1CcVbJbrEbrNOm4pgMGYwxMwwsdqwlwNE98nBls/Y+L9vDwbg6YRmYtwHfw2
	 u43YeWFfdR7/ixq0k8nc287mrNiCx51/ENFSTQghahO1nHUQkr2mlLbmdBm7GaGT3l
	 Mg2zRQv4aT8yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3DBC79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178869123369.2879.9297319933587917352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14fe77f70183c5252ccdcbf38f1a15671756b4c08a09bf609b50ce29cfb076a
Date: Sun, 06 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788691233
