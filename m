Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F9A19D07B
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718395703; cv=none; b=XgufxaCiXfe7Xn7JNNZTgZiB7+4oYQOfF2xE1nzPRCJUFcxoEZIAFhI8/1NXfqIJBeck+kZyg5ckU8wRLNfGt0iWv0IC4Ibhmh8NV6OjeKafYlquL+5w+CyLcCp6umCBuZJd0YIuPx97vbx2JO5yN7x1GWV9K/42etdfTmOdKM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718395703; c=relaxed/simple;
	bh=QZJkolWww7WEZltKuIXDaLqiDo0Au7Gj58u8kQiedLQ=;
	h=To:Subject:From:Message-Id:Date; b=ec7+9krZD4W4fpIpPSkSXY7PBm+pzCdKNxNxAoQOqepL9gjjv+L8fysbBy2yDi79mWsuXcGEWLGHom6uv6gKkWnuEC6hGKLTvbLjUUNQMtquISXeGYappqr2gekzCrXUrQebsFx9Zp9I2YG7nSoklXXcS8GQu/3Jj2p01UZD250=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3rHAkKm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3rHAkKm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE105C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718395702;
	bh=QZJkolWww7WEZltKuIXDaLqiDo0Au7Gj58u8kQiedLQ=;
	h=To:Subject:From:Date:From;
	b=U3rHAkKm9lluMlwsl/0nLni/KyET+XxSWn/t/rhTh/RCkHtgR8xnZLIVBU3h0C9TO
	 SMPLOf5baKyqio4c9uzYnv6So1HMamQO+dM5ULGEeWbx2nOKD59VAxDi8zwNIdXOgh
	 wMrqSe1GkXUfSFXXTVjxH+2QiQuooJgp36C2xWt0OYNAx4FT/crBt0Pe1wUIcBme2c
	 AiZDIHtO78UzPwiGSZwG+rdrIf5RtSHe3d1qZiLPxZ+4LGABoJEGijj2cFHOuCy4zV
	 s/2Pj7/rs63fl2b+/81x0lysVAcYxXEMrvPhreGZ68sIHhYVZtVyoKQh/myzb4QNi3
	 vQpjanZe1SpzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C75C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171839570277.28945.195494432821249673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035aa334b88519391f10b70c2259bd1209d327b16c545499cabb966bea111fe1
Date: Fri, 14 Jun 2024 20:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718395702
