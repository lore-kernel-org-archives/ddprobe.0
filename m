Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510273D55D
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721748354; cv=none; b=fFZrNG++9NvKQK8hSoBHrOtePC5C1Ezf+3fMyYVHkSlrDhZOT4DqUblhGKxxrwO9dpMM2nCRMi2HWQu+TZntDza2ohtKG/Kuw+x3FsfBwBqXfquV5ztBp44folkspJjteAN4+jF5JVFyt4bPPT3wIB3hzErImjG67maIwY5aBeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721748354; c=relaxed/simple;
	bh=YR+0To0ox76Fdz4C2zFKS2j1caz/gvNEtfOkVbmnc7k=;
	h=To:Subject:From:Message-Id:Date; b=Mmd5iWmOPfXiw+WtzDWnt01tDSIVWfHZO+8Xs+q03erCTcKk7DiiMDeefc/vT5wq6yeM3DXeFULrxl0mj5hYfacyaDT78XJICei+6Xstg05qZyuTa8uj46hySVvwby0qM9iLiWaTAilZ6X/tvgMSFw7Z/v5Q/nZLHlIoO2YsmZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEvWsMvO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEvWsMvO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF59BC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721748353;
	bh=YR+0To0ox76Fdz4C2zFKS2j1caz/gvNEtfOkVbmnc7k=;
	h=To:Subject:From:Date:From;
	b=PEvWsMvOq8SLTa/lzjClH69wuyVgM8hNDW5uLi+dPXzNwCKDO3FjeI+9nhUeFOutM
	 mo2x6bXYZ72lFp6BWVaUH0kyKmn6o28xr4N53RMVKD3/DpCMnnfg1n+nLRFUx7hnmD
	 Aq4iimss3J0tUeITG4T8zOOp/JTlJHMwQFXp52Wbg0lFFcvWjA9SOcnChmEvguaHzS
	 d/Wqul5M7lyJMRlYbsraz2gfH83wZp3fnZzBv7cEfEmLw07gN/xsdWhTxxHvg+dLiH
	 yikWm7clg4rSijLEaZ0nF5uW8xqp0iKLdsGlpHASoxNdIaTIZMmkWPu2IckPyUh45r
	 rF79zmJeL9oHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE891C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172174835370.7131.9848932866382195188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 249f05e3b4065eaf35fdf2c749088c972833b9e37e8cc07bb110a9208a7cc316
Date: Tue, 23 Jul 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721748353
