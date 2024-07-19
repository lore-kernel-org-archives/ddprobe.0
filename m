Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD40C147
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721357754; cv=none; b=eHWbJJv+A+StQUQxVUI4Ktbhd3tdEvxwfZqt0SKidGsTnwixg+dcjq8H1e3hepo/7C81jwnJFHHDIDjlpCbrXgdE2TLXHJ19nmQhocz2wJnVEazK0K5PeOZjFeHXQkErfZvG+TMV4IKVZ8VdHXUMuvj6FLWy9UgcleRb7CbI7yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721357754; c=relaxed/simple;
	bh=yfqKmax7OMP6IgYOY18U2d8tV+vpQv/91DSikQm9DRs=;
	h=To:Subject:From:Message-Id:Date; b=U3Ezva8NP9FarMa1G0JcGDTxOnKjv64Uh3wfC+4/0SLr/Dh3I+nBeoA2IGnDJrIUpzyg7gPKhmrAxZAqKUYMoGpUoAEuwY+MblHhuQNJmWi/KcI+yLZt1lWfDo3V9eozQ/yA53BmaAq/h2/IaT/SoIY8N8VrrjaDrnKk+obVDXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPlulG3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPlulG3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EBDC116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721357753;
	bh=yfqKmax7OMP6IgYOY18U2d8tV+vpQv/91DSikQm9DRs=;
	h=To:Subject:From:Date:From;
	b=UPlulG3HHRPwYMVfqA+5gN+eyO8vbFsTIK+WNvlAHs3oycYUS9+diPqUL7prhnhTF
	 3cdeMbqgJdGnoriex9jtoF6EwojOApUGatSBqMPeDOxiymFhjXqNyuWDt3jIze/42h
	 XF503gW7UWNEaX+HWZ2cHWFnVOVzNjO3xjeBQrZx6z2dTFtRdACZhpPFkbAxKyYDLq
	 0MntC7sO1fqXo0wDXXx0H74mMrw/McLMLMVIKyq+snYsDlDzMiPS9q/agTr37pC0yz
	 A4LJOGGoqpaeRKAk/dC4WafeOFlD7+b97cDdKt9EYUjBFthV7vx32ZjreCDZbXNwOD
	 JMna0zeXda7mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A9AC3DA49
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172135775360.23285.12671119667639861428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb14c4cf5d0479b71e5619387b5e678944d69fdde8e89d4390e5a7f35320d203
Date: Fri, 19 Jul 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721357753
