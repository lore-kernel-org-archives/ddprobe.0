Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6007437E5C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786501234; cv=none; b=bXyuvHhyZFVp8zTVImlnHrY71At7O6nRWWlTQ8YLX10hkyPaMCNHGFrxM3mV6QKduSYKAEAS/Ac9GgTwbvMgOKy8GTTVlNoc948bVJMIrbYsDGBezUz0tAjEzYdiieQYZCrcyV6No3eV0PhkAEfmjASo3Bw1wFT51mDab3T4BFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786501234; c=relaxed/simple;
	bh=h+sR6urS/XOqLVLgeP2b2zmmt8VmERJjkYZsFmZRwM0=;
	h=To:Subject:From:Message-Id:Date; b=R9fEzEZriutSbK8ylaj/VBxNmkwjDnWAdCrNcpkM1DwLJ3n6rzI4LxmU3yN4k+Man4B06TI0gtTu61k85zfmOmtTz/lZuMv1Y0B/PjI2GjDaQC+PR2xUYOcNskaP7RXNvfNZ9P8kJp+ALjNtyWfaoDp03AYSx74MbK92baRGKjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dC1vdEVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dC1vdEVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA908C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786501233;
	bh=h+sR6urS/XOqLVLgeP2b2zmmt8VmERJjkYZsFmZRwM0=;
	h=To:Subject:From:Date:From;
	b=dC1vdEVNJrXLDU8M1aebSQC+/Oy7HihkyzHnxo/jSN9V6xvWPk5XXcm42dWUsgIHr
	 Y67F01/FwsaojZ9FiaHFm8iHTZXt6EE5HXyqc4Ad44mls7EHReb1l9nZW2T+RYZfky
	 /oeDuhk5+rqTFhsCnCu3czv4pgUzuECuE7Hz4VOta6+HuZJey6RLvN1BeGObJg7dfv
	 sIoQsw0+F3csXj1qr557lgdu0HnCPTWVK4VUPRvWS+q0TWtWQh5orNF7twd17/prEr
	 a9dr7lpT/hcfQMdZAh0FO9NtckvoZZ/Hr12RFg1DXSGUOoB4w51mn7uim1qQHNvGcD
	 XBWRYKuOtNi6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79ECC5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178650123367.11421.1423649141661797326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb70da243cb9adf329fd92ae1a1f257bf3ede9e286fce1b9b542a3509520bfa
Date: Wed, 12 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786501233
