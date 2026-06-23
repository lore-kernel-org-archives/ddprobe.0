Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCDC13790B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782245794; cv=none; b=Pr6CsZxVjbTLUF7O5vxdPUTlYHeVxTMIEeV6pB5CGUuyXCT3v0AoFgOP3zTKahW6H618m7gkFIQxd7x5LQjIS0nPLkODyf55wbMOA/oGTXIr97Ut9CpUY2+/vNs5MP7+3uhCnyt4RnA/GU7ctFTkKz4r7hJ7meI/f9/+ONdlPJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782245794; c=relaxed/simple;
	bh=AAALJxH6y1jtH8hWJd3IGlIzEAmRCa8rQLAMv/JMQBY=;
	h=To:Subject:From:Message-Id:Date; b=r3S4X7cVNgRrt42HYBSrzh8QYzKiB65QkontXTH0uly0Q6qZhWUzeVBlSO7bwywO6jHV2fSBAlgZBVZnvqx6CrlVS+mS7jlvr+EXt40ZqnpFxUsvOpr5bNb1QuRCtq8gguDuLHB0NUfkzv3bUvCVHqTJl3dVbmY4oOsle8A3DC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBTciJZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBTciJZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04B2DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782245794;
	bh=AAALJxH6y1jtH8hWJd3IGlIzEAmRCa8rQLAMv/JMQBY=;
	h=To:Subject:From:Date:From;
	b=BBTciJZolQUiD7GnElhC8UuxAaxP3LXVOlwud+H4rc8CVfAUZEHQKySYcJ3c42RfW
	 7jDvhFm0tHP/Bp0ej+1LOLi+Q2vrd8j7TI8ZtpPh/hLt7gt1+esuoVAfrG22tiQHTS
	 vFwzxpKkvsOSnU6AM9UbhtzrEULF7KEdtF4dHOI5j+I4fa/iFSVhDUwNv1yMU+J+MP
	 +cZq6Ps9X1Szfjxghftwzvyfl4a262fMaIUvebDugj2JEqUk+WNgYoaCgB6avL0DCV
	 yR1UA2RfROSJf/iCizkPUHLz6Hilx5uygyEMJcwm2KijZ7O7veVo2lZOvmDIgkeNQq
	 8fEs3+ruI5Hdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA08CDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178224579377.19755.383902230790292414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61729213d4d2a236589b34cdf60d5387f0ef30898d7fb3bf3fa22ff402f9a911
Date: Tue, 23 Jun 2026 20:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782245793
