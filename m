Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E034071D2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781706394; cv=none; b=RS6+jJHLdMZDmMOgLXqMUTxlYeEm61RTOOI3urOaVsk14klFFV7aGEJ7d0SpPYcdngu+SUAnieVNr6oL6R92vGGMnCq5JLsg0Mc9CxOVFZqT3ouLpqK11PbjFdxmcmSNN8tJygr+T7/ciU1mX77v1/rIfI4TjPynalNNgijGE2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781706394; c=relaxed/simple;
	bh=MIlqtnvwj1HHsDntnu0AHRXllFIi7TrBqynXsJiTzHg=;
	h=To:Subject:From:Message-Id:Date; b=C7XDlZ3slWC02mKr0BkQzSiCrzyjIgL73x4EZSy76rbLe5fskNTQIw9tqWO2WlxjWdo2EFOGhFOxi0Tbj0XPGhRqtzI+wzPsuINqKO1Em95VK4av7T1jSlUF9qS6lDk/PzkgJ4b6eCmvZaiwb8DXQx4fde33xmLlUn/AJP/CmPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFNU6Ob9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFNU6Ob9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8243C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781706393;
	bh=MIlqtnvwj1HHsDntnu0AHRXllFIi7TrBqynXsJiTzHg=;
	h=To:Subject:From:Date:From;
	b=nFNU6Ob9rlwHBydGqZdW7Scgzw/yMWjMjvNOva5PT7R2Gp78uxzIncvHu/M8JHrBE
	 +GEErm/+70TBn8ctMEMiaebhjV6mdp+9YzVKQG8VK/bx10f1voF7TaJFBWXMelL5tk
	 hgy7meY+TTwNuOFqaGN7m5iBqjGqzitZyjUuh3125qXJ0rIMK6Fiuf0ZdEVxbjaNI5
	 RqKzcHatGk5H36VNOpS9WFWbR5W4y8DDYgagg0Myf1kRDQ9oiYYJ6mXWlC7mCWavRQ
	 6JgJelc4PZWq+stxX5U18se3gwCRaFWp39emrxzCJoplagsDUwjBJ/7uBabYE/sN1Y
	 3YETYHkfdhxmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB9ACD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178170639368.10248.13638090797535646122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 410eac8b72229bb6d6c624cf5fcbba3fd87d2a3da62e79d41973b718ec3dcf2d
Date: Wed, 17 Jun 2026 14:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781706393
