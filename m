Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3813D33F8A6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791036634; cv=none; b=U11ur7IeYnGU8J7MdJXRaPUlqvRKAK5XNwJMmfJbnFyq3Bf/xQmEHbl0q+oI1q8G8Dy3YEP2/TAmsxqApejpedMLV/nanzpNB/WshIBSbmmsD3ontGCRisT63w3d0JhbMvtWxpx/RKmudX+dHQWCNCgLG90kEma0wHLb6vNQ2NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791036634; c=relaxed/simple;
	bh=QLi0BwxGOetOKbi7DP7FfjXBD3JQ/IJMnKStaaP4nmY=;
	h=To:Subject:From:Message-Id:Date; b=FicQXMfpWTQCu1XetVLQbmjxBTJM54byeMMcZmeIRhXmSsxPgObsQ+RJQfFwryQluouiR1WsW26b/G76xZfsncK3HxalqjzNdWagM+/Sm0TIJvWfUrwn9GRu1icoyFeLmlfcT+XzxkXJVaKItZKWYPCEneMQRpCkPKUwJlgIweA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxJz265R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxJz265R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20E3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791036633;
	bh=QLi0BwxGOetOKbi7DP7FfjXBD3JQ/IJMnKStaaP4nmY=;
	h=To:Subject:From:Date:From;
	b=uxJz265R0DsHxelAdzUULKks6aGIsHDnmOgtNjxp3OvkmQ/sag+7YN9Ptbc1jG0Y6
	 7MsbtGpNfaIIHT5QOyImd34/IUKCAsIv78tF5jhOWuDQOhKCtXA90L20HaRhfwvEsS
	 JEkXsZKSgjBBoxnxIp7rFLruxxuvhqDD9Y08RX1hQNltxmU4eGDLeRll/1Kt+5kM1O
	 Jl1u/Twk8QoBzE4ZHkRwblbTjISWM5CIqIl5zqjTzLVU3Mf8b+qWPpvTqtRx1PaVn6
	 9AJ4ylFEv/CVfa95ocmPaIb5LHoGo3mVJS4zf+zUvQfLm6ybeTierjLhRxIUiV3U10
	 o5sCFqP2cWvLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB479CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179103663369.17252.510720613527017786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1b8cadbc34f452c5604bdc8a4614cd38338f3de38dbcdcb25ccd887521b9e74
Date: Sat, 03 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791036633
