Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2774A0A
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750637994; cv=none; b=aSPzqbjBWL1S59RPLrXMcmzTBRgPb5jhcl3rXhS/e7P80oEUhT7yzFMSKwdWOOqhDYMVBD3ngP98vRHEjIR/dVl9w/Wd2Aw8tKoR5P133PesUplZvF4RPrJ6DeY0Z5YcLhIjKSZSNSkzO7W+sJBDWxVPbDwues1XmRLYYJJA1n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750637994; c=relaxed/simple;
	bh=Cw5polJmePpAdMk9bB7sT6HntreZCKBmyeKtDwmBuRY=;
	h=To:Subject:From:Message-Id:Date; b=b1WJgrq3bXqQRrI2NGu+oZyPW2cetOBAEmyHf4Sl2YoG3cv9o+GWrum5IFUrdiPnRMs75IYM+wOAHEFcm84K/iEmQEUAgHERbqYRZYGaUNYw0wwj1075aSmHeCriOkS8U3qPdqNIkfkE66n3qNYyFvHQSDymPDJfIczl7/JRJTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsgI4/d9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsgI4/d9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7A2C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750637993;
	bh=Cw5polJmePpAdMk9bB7sT6HntreZCKBmyeKtDwmBuRY=;
	h=To:Subject:From:Date:From;
	b=rsgI4/d9LrSx5bQdpgsvmpG7MdohwYkVKIKzWm26NXP5rdaw0HTlnrjfrGiq4wDl7
	 ykp91DB7uqB8O+aApNVrAjF6+/5BXFfyRLOMle0KglZqefkO0IrZsETdkVS/xeTPzm
	 KRSMqD6G/7sgAiWbtOA2ZeI6hIfF3iB8em/b0BTkB8QgulkAopKuE3nJSvffhEqjfZ
	 zGHL98yceU1Ec8HPCeUojExBK6H889DIyqjpaGlieGDSZNeXMRj3lll/pDkZ9AEP70
	 coa5/xIy077Mz+4HQ1tCLwR1Od8TpHG6yVl3jm/9g6Pqg6ubkw872lH5zpMuvF28dr
	 HkKvaHH9422hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96526C7115A
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175063799357.5214.5314732728121615036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33172dffaf351022d20dcc2a8a3b50b279b6da22242966b8f36d268051d5644b
Date: Mon, 23 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750637993
