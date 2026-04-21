Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160901F3D56
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776815854; cv=none; b=L0q1cRzQ7YioyEqY3BSGBtJL06YhZsFWfAThP1fGDa37g74Uz7UED5fLGyK9yDilWhrFpx/uGW5pYw+3PQ9E/nLX0XMhiks0e4DxEgr7D3Avwta6sUIIKwGkay0x0vxVP48amytQdwwE3mFA9+NEVYgfHDyOnSE6EBx4RVYM0QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776815854; c=relaxed/simple;
	bh=RIWFOcKycKevfd2lSXk2oIv8+DC+qEZ2TR/GBUVe0k8=;
	h=To:Subject:From:Message-Id:Date; b=MRvUi3TTM6NFzGrd1pKpbxVNx5BShe27L5+fWsodLnqmJpIJhAgVukjCpE5cFbJx0Tto55IV3v4KWefVCtvxlxOzqBsmTfOpVjvsyxzupEaiOqpzbe3eThKhtFRA8jDLpqmaUSodovvLL6fP5lKj3JYoeJpoet5kcFhmP620Su8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ne6aTkwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ne6aTkwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94E8C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776815853;
	bh=RIWFOcKycKevfd2lSXk2oIv8+DC+qEZ2TR/GBUVe0k8=;
	h=To:Subject:From:Date:From;
	b=ne6aTkwdWw4Kf0gqP0TF70POT+zYZH6RjC6KoK8mIdoLJW9q4c1Ao+IwFYdeI188H
	 DqbZdTuwk6lDYABa0OxUWu0wn+7zK6RTBr7JKAm/GAYSL5YaRK4Gmb3gZO0ASP6KjL
	 NZHuOIzj0N7SZV1cZJ62TGN/aOQOumvLQ+o6NQ9X5zuUbqrmUbraUcYhNgr//BE3dK
	 yrzdU+ofYKQ/jxYunA5IYS/gyx6FcIeSGpb/FymQBRwq/CLlHZLdAP7JKOsYTFKlQm
	 3GtBmB6zwdA6NFny7V3HKkFRvnj8x+LdJ7WkKzZlWG6Z73buKmkjeJSHiXoY/wrKf0
	 ZazMzpL9NAlkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9547F94CB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177681585368.4105.6103246378441757364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9715465344e392158c9ee23890b7371003a8251da23f4f2d68933100942f7e6d
Date: Tue, 21 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776815853
