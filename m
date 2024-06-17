Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A2D16EB70
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718645303; cv=none; b=k3k2v/aWSGGP4wdqG6FP2OQUbN+v046KidKAUlZzMy8tjGSlZYu2NNT4Li2szrxp/SM2TPemHT6mkNO3HeWyL3wZC0+GiXR0xgLxjQu2kFUWmsMIokf3UYQdji463tDJ8izLFXoVU+TiFpxhYqRswlwgVuRQMTooaqhJQFGffLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718645303; c=relaxed/simple;
	bh=YTdlaHmT/CW/amy1MLa11u8Fdq2x5ufOXynPIsVZrhw=;
	h=To:Subject:From:Message-Id:Date; b=WtT047VMG1AL/LmA/1/1k6dZSpgkKES+nNLvImuRaDbOYcews44wTrkaIiQv4pDIC0tXhn4V8uyvjiyhe74H5GEnNsPtQymT2cAdygERF6Bta1mti0O7+mVvkc4/nZbzy3vPR47ad8IAQUswuNxjaylJOJjCLy5Zg6e5zmom3c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gb5PPFSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gb5PPFSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC6BC3277B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718645302;
	bh=YTdlaHmT/CW/amy1MLa11u8Fdq2x5ufOXynPIsVZrhw=;
	h=To:Subject:From:Date:From;
	b=Gb5PPFScCsQmnaYS2lawjaPHbM+wTrFHxz2W+I/whclDjYN/YilORa5Q7KrTKriDM
	 2zdZs1vCXXXWB1/cZtFhwbPaaN7vcRWdd7M32GAk4Q6dcj6oIDDqX4UQthLQ6aIhnq
	 edeUndgg/H+HVTpZicQSErTOuPLh9LDWcYNyk1vKy8Jj7/U9dN6jC7EsKWuw4zD9Fv
	 bdXKymDzKWKS+oDlPx8DJvE5ZN3uzSZSxKqfG8T1Zrl/kqleqkTsFVd7Oi2wNjGzVe
	 5SVOyLMlhOgHc+F7vH5ALrZA2DLErzCVV4BHX4OAhspUeNdh/0jrH0j3+yri+ZgvL9
	 R/hNv4Sr4Ygew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C856BC2BA18
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171864530280.21698.6527576016914708101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a54323b47cb9c748b9c27ab4739ad63141e37c31599bf5d9fe523d20314c6d
Date: Mon, 17 Jun 2024 17:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718645302
