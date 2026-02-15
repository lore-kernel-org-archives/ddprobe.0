Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3327822D9F7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771161294; cv=none; b=A+aetBJuChebhbkUs1xQBkQqWzCTUyNLMX1nY6F3eWysyesko4I/ZxWW/6v83gsJruIr+H4KgxxrEW5xjYgHlpTejH7rH7JPFxSmPAeTX74rPQzDg/okyuzqDX7VK8DVEHx05dyh5m5VBk95abAfxbJlSM50Mhl+/33la5kDN/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771161294; c=relaxed/simple;
	bh=9nIs3MAd7Ktz7ZPjlGnkHVAhjF3cp4I26tmCnYdpaww=;
	h=To:Subject:From:Message-Id:Date; b=FvY3o7nUNOl0y7y0g5l7bJW+iVVzezffJsaoBF3iK0BcQvSxarlc8hWmQynj/zQw2yWoOCOSMgkWJKWY5wnESlUxap+L0zkE437/uL1Mr8Qo0dLIcHQ3VDYJF+ZzVvD877YzcLshGq2AmrIMkNRkjeTc/TlBRyJZcMDqUUL5z28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emqa0idO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emqa0idO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EDEC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771161293;
	bh=9nIs3MAd7Ktz7ZPjlGnkHVAhjF3cp4I26tmCnYdpaww=;
	h=To:Subject:From:Date:From;
	b=emqa0idOisf7YDcIRrAZet8kmheH9AA8b9vEnAg6xKutSwLn4ZUQRwWprBf36iXu3
	 QEM1TeSBHNQmQXhPENM4TjwkNuhz/lYc2quLhoBK0Wy28e/bd6c/fBTIgWDxxAaBvO
	 sLtpwBOa1KTPkc2QBobpSsunI56FiCdfpC/3TKdkYbeWePiklmnGTjuj13AVArg57+
	 leYcUCSdH5SqEHloBTZp4UIe1N6OruepDX8dKYkX14+TEs9tBkg8WbS3y37y6poNOI
	 g6ziGxF7qPHZyMf0ic3gGJbhRSuuG5IWgj2fX0FsH5qmAJRIoRiwY8iYU/uKH7w/aX
	 PHWCU9z0FxSnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F67EEF587B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177116129361.11902.13922055947512845020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97be2348066c2e91c7259ac248d7ed0986dbbe68013e35db02d6bd1455b0a23
Date: Sun, 15 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771161293
