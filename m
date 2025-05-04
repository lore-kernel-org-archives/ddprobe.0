Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4186C2F22
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746368995; cv=none; b=ei8aQsf9CnAvmDiXTk6wDOrDiyQdpkf0AEI6eS0dYtMhQ4OpYVOejtsLEqoL2Zhxo1aKarMI7YQ6U0x2gJAgSwuS90eTJaOlOPLz4ELKerOwYZs4e4u/K9onDZdwF/BL8CYgt4bRHvYFHtoL3rgEftgRx8wzjrfx8kPzDMcCgcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746368995; c=relaxed/simple;
	bh=UaMj3curlotivb/q9QHzpweX/RrCVAh8yWVPd/DogoE=;
	h=To:Subject:From:Message-Id:Date; b=JYsBomJJA5cEH9XYoKtwJZWUd7b7Vu/pVZXmpvEQynNGlC5ZQui4C6vTwZ+heNI1dUpQv6I1qC6gVswovT8rfA1dI205NCrjiG3bSRtNdhB4Ei8PSy4RHrnT2ibBR91hVsUP6vbRcqe00pBj9e1gJVj4izX+gwlqTXNnJgkoOJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDzzDgLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDzzDgLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FF5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746368993;
	bh=UaMj3curlotivb/q9QHzpweX/RrCVAh8yWVPd/DogoE=;
	h=To:Subject:From:Date:From;
	b=qDzzDgLZ1c3pWw3jEGxleeC7ZtNxY730v2eV2iNa10Yaao/cfQimO8fTR7frz522m
	 e5Hy8fcSo8w+wf8w/2CQbLzDu/Lq/w98ARbFurckGzdZUty3T9VAuVPVag6cxPs39r
	 z2uW11Nkpdz5+hSLngGnsITZ+Sd6qGFMibTW7A3XymAgqUk99PGkn7dKpmn4gH5BFI
	 fyzWABE+xLMxfWvii0TY3oJPAjMcTz2+u15M2bG0yw+9SE/ljShx5LXSi/6TXO1ZL2
	 /tIXNLaUrZHXuMUrfHVJcTo8QcfS4zMBi/59v4iSfb2g3X5+9o192yy+xdr6GoAVk4
	 huagrHBiRJRQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9128DC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174636899357.14661.8692133257395151440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b33c997c75a8884ff3450a5ce7b9e833bc56379a46bb5d250b4c2d6216f66e
Date: Sun, 04 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746368993
