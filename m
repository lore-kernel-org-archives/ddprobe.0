Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD2315B971
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769491434; cv=none; b=qigzbHdOqCuum0CcpPYmjdZM20uA1RLaQpCW9VQXkOco+cNCZyMIrEr1J0+iflca66a2ttMyxaj+44vHZKNRLOU7FVsCNVyzu6srKSyWGQMuZ5CxMbS2kv+kOb9Rv/Xj/HlIIDdUNchuuQSo7gx/y6fnPMaIhxFkwrLr5gX6mGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769491434; c=relaxed/simple;
	bh=rqbHMgjfloc/mPSChiJleHdqORZLotE7q8xNn2PRATg=;
	h=To:Subject:From:Message-Id:Date; b=qmqdoW0+nkJ3oSS//68YPmi2sPBRpO+/3Hm2/2DiGE1/hThzZ1lvUpeWEPRh2gyd/a8eFF0HK5wv40aGJN0PmGp1faan0zFIfpl4xFpEZzbxPKoJ/sb5kSYC4gjt4Iro2KyKoQJWmPPmTQcX2kDIyNjICdCJtSuqXqfsP4lAL4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6naFGDk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6naFGDk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8774C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769491433;
	bh=rqbHMgjfloc/mPSChiJleHdqORZLotE7q8xNn2PRATg=;
	h=To:Subject:From:Date:From;
	b=V6naFGDkE5PXvOcOcEbDG6HohgspLpci0PpzTkzhidMWjsrGSMtj+47haC1dmOUQ3
	 f1CgldquPQdry6hPK1oJA4hXB5zeSUDxyMgFcQ4xTKTK6EA4lsfXUeNexqTd+tBy8T
	 BHdQxz3+k8xJoS33xVJAa3sEAlsq7n+SC8HBG9LpFWrCf1NaD1TDrRBHU9L7ZSq0hW
	 hSuNNigBxJm+dwds5rzXfQuIcfz7CWzdw4eaiuddx5B3oL71j4P6iRiCzjvaoGWwDB
	 AwmxO9v94mDigzJxehb7vKzszuTzPKMddPvxHa7BTZzNZnqLDOlm7Vtr7gMPK8jiMc
	 k8EYZeRfr/DuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9405DD25932
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176949143358.13813.40924409816358337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9d38fbd8bea96a59e6261f81abf5fa55077d9454a165da4dc0690f4ea2229c
Date: Tue, 27 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769491433
