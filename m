Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CD0275AF2
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760140794; cv=none; b=HObOSLAlmMSW6ehY83X/2OhoG3egJRH/kWGmi/FtRas96y5ybwN0a0FwuvZQFSWsX1iXE4hABfTULQomtDRJQb6n/BBSS4Jo4qJFT4gCuePabwNYuEhOOApu12rJCA2afOIoTIgJ2nZ7hi1jEC9J5tEfEhSe/mKy+DXA5ywj9UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760140794; c=relaxed/simple;
	bh=re67LgMvbKUUI8Kl2LF83AOv+uVwYvITUIO7rmH/v08=;
	h=To:Subject:From:Message-Id:Date; b=GyEXKaO91NQNaInnKSpqzBeErs1L2ajGFuO9l9S+t13CLoCfZRN2nFebavCSdu1XgAAHEcVlH6Cw1Kr22zXbNG5nJQs5aaZzXTAgl+n8IeCkq9lvD92ly5vuC9hML7nH1aNCu70VHlbPs5ph1wtOd4+TMKD/pKk5ggzklZu9cp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8x4F8Ee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8x4F8Ee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B3AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760140793;
	bh=re67LgMvbKUUI8Kl2LF83AOv+uVwYvITUIO7rmH/v08=;
	h=To:Subject:From:Date:From;
	b=Z8x4F8Ee71jAEEYysbP7PbvDcOB7ZpZn5vG0xXm72AD6cKDG9lsMtc9K+hLZUgl6w
	 smuDJDfXLyHGhx2rMg4vAr9tbsyi8ecsgel7CJ5G6Zunjwo1evtF2sPkzE5tm7Y1aC
	 E5rHtguPRFXgLWimp5m8GshjuF4wuyU4hF9mlGkGdJRBegTY/bgZuuCgJ/w3J1iAUr
	 fbE+8bBwLxGq5833dbr0lU8n8kHy3qmXTF4zUf1xeGNUKRs6fedh5zlhjCceb7xkuv
	 kc7A7S4cPk5hve4Wp3zDdxZL1l/SFlwogy2ejcjcj8OEc3481X4Milm0/FCyrVyT5C
	 56LIW8ViyX8yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C47CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176014079358.1069.7566134645883302201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e436e2aa20139f0320b40e5efc033a281b2b3bb65abe0156f68f069840f687
Date: Fri, 10 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760140793
