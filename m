Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59742F507
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789112434; cv=none; b=ud21EJTVlx9bSJueHTbtLEezvFi9PDaeGnWIt8gShKeO2/mgJg+B6EuwuUWSC5GTgoAFrVhXSYOGvhRk5xqQuTnKpU+LrkMbEcEYFO82sQnF49Kd7LwSa+kcknrKes0d/0nIuP4/KO6pJAdW/ds3JbuxnS8kLVdHip8diEybFcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789112434; c=relaxed/simple;
	bh=+TOnOPDYGckKZmnvgkIeADwbp8PP3TwjAqMobvmjcFo=;
	h=To:Subject:From:Message-Id:Date; b=RLbXb/kvJDU8ayDtM/B8bWkQczv2U9blj2Aj4uDTCFjCYRjjLcErxtl7WieQyHjkGViTkL8K8MyMVSrU+JcJiiuo59eLG5DMChKD6UpYkrgrfd2cVSihVQw2pQxXGB8KIFFPINwpDo11jDTWo/4dVLSRplDm+9HvA/UsYuh1b9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHcecbw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHcecbw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5E4C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789112433;
	bh=+TOnOPDYGckKZmnvgkIeADwbp8PP3TwjAqMobvmjcFo=;
	h=To:Subject:From:Date:From;
	b=GHcecbw5aVjF0Gbkr/URDeQfx2FV4d65Pwiu4Zm0K8sPSX1xbPPMLTJ/Zq+WJYdcU
	 aJs2RsgJ0btu5HNNCtfSagrc0R8ssaloFUg3zbp9sPIMcEYxfTb6fP+1EAwwydf25a
	 8bcgOOvAzS3g7XWbLurxdPybsoYuMCnQGYBT/rriBGrM58UASjPBG+PQe8fQrOpDFH
	 59j0lDpx3Nxq2cnsHzeif+EK76Xj04mK646XpnCAamhKVIy13J1apR+xUybXfajbIf
	 n6fArY6YzsKor4gJRGap2ooGcY8M+o9P29qGQPIpRFE9g0iUeC+6yOPtsaBZBcxRQF
	 2IuAoG+isM8lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D9FC88E45
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178911243368.25236.13847001094056834003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253d063d9f6695bfebd7d18f20c3e0c5be2dda9432dfc3b8d0ab486940867cd7
Date: Fri, 11 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789112433
