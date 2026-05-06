Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4923191D6
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778095654; cv=none; b=kP/cv4RBDPfWQpABpRXDfI8/r0LkSf5eOSrCkuPreGOSfEImoABbipTWAXGo83pinNk56jmPIQKyJtWkGeGjj8KuI8Hh6MIGSBkSnYCa1KJ/if7nTPVrgftF5h7/GgNnmQDcLoMG1qjFPrTUTkD4Gdjm3ZjnNp8743R2697amMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778095654; c=relaxed/simple;
	bh=n0dQLUJe6JZASoR7kNs8DEh9YQ4TXgh9KFqS8+Qw96k=;
	h=To:Subject:From:Message-Id:Date; b=UjDnovuXJAtGBFJIj/OaZEXN2xkjzCzrMfCuzFhXmjqQvYK2GOSrgJYDOaiyZw01UROsDukQ8l1mjcSAQJKifOoqY3PxIOn0WtLf3qw5QVwmOcPv0pN4Gt3GqmEMuXcc/Y8Ak0MwpfyuHqV7XBM/exs1kF0mNhgSJjMuhcPYscU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXrNNooq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXrNNooq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9547C4AF0B
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778095653;
	bh=n0dQLUJe6JZASoR7kNs8DEh9YQ4TXgh9KFqS8+Qw96k=;
	h=To:Subject:From:Date:From;
	b=pXrNNooqQruUPNWKL115KYlzizpui35F7X9HvzepmvfiM0J/5scAk0Aoh0NaZy3bv
	 ytSMlVkWdvztdamY9QG2OoGsKfkhFBcnvPCGYxLnhNAAWdm5Qd5pqqyBjkoK72PvmF
	 zOnAvY5UstuJNWeNA00r5Xmp+aFLo7BPnp/YjEWvzTaMyfmRpjoLyBAocrHqM+R5lU
	 5bagK6qYh55dxvzyPb+R+V8EzjOMW4S6kpynfNiOhgUL/B89cETr/CZ8MTXSFtOmMI
	 hWDrOxksXzIVO0zSgbtvWcglIIauTJSk8lOqaNfkO8eUGr2g5zVumS9J37aWsrxZWU
	 NzIEpZz8IAGcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B694FCD3445
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177809565373.12976.6411875715603494647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85bab4b5f51433d9ac56de068e47f0c7f8cd3794b8de2fe16fe1252945d7651d
Date: Wed, 06 May 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778095653
