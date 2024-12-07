Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EC522C6E3
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733557554; cv=none; b=JOJBDlS1+ttUT6yZfoYCXvQnKZpxRmeF8QCo+9hOYuqm+LmZtc+unYM3R1DYeO5LbaTg4e4ZNWgWxlt9WuyzFVZc94/21K4m8JYq9iwC2GifeQ1ClfKIYVPNP+Bnhu7OKHqYo2UBNKkteOUP5sicMdZAxH565dbGyf6Qu0SVSWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733557554; c=relaxed/simple;
	bh=Qj2LLTiq6GDbn3Iz6rWjTXDTCIyEZ1sNt5l1yPnpTS4=;
	h=To:Subject:From:Message-Id:Date; b=jUGo5QiNW2xdjrhCAXz8HyY3JAmlLFf/xZuVjIH2Uoc+/9YwwkvQy1QTA9NqSn88WCg191qp4lG+z+hyHnyl//649o4KFf2PdZbQHl7PRBOpMaCuj7zFR5yiiYtrV9tNgz+g0Pn0FwWAADBaov2i2L2rSH61Ia4q5E3m6gBKglc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSlKigbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSlKigbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9164C4CEDC
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733557553;
	bh=Qj2LLTiq6GDbn3Iz6rWjTXDTCIyEZ1sNt5l1yPnpTS4=;
	h=To:Subject:From:Date:From;
	b=hSlKigbMaAgudpZAnlxv8b9914uzFoM22B94QnEz2ylLOmNrA6yn0SqQc1lZLIxv2
	 FmIjHW+dGpmpfJAmCge1yKPc3ZPK15HL2BCWBcuRUTVD0u9l4NUXqvm5bQa6xw4kht
	 T3DAy/NQ+U058YoEiTTBUq+50x5ALc4o8RKBaDzEpxweInlSS0kP1x1uG05EVBt1eC
	 GHXxoIQVle82WOYk0ZXw6HSYK7M17Hwvz2fqkGo8cEBgKe5C4HQmsisZ1Wihm0qVVc
	 m3S3CUPECVNJ+WtexwkB8XR4APqyDnfvzF6Cz9gRYaWIf+PKrWj+GkGh332VRVCW+K
	 Zf2lYNL7VMNkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99285E7716E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173355755359.11414.14958540308313767070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c41109dc79c61aa2bc2a518fc8dc5e73247eac3ba8b9e427a54b8098528378b8
Date: Sat, 07 Dec 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733557553
