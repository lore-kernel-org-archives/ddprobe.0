Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BFC800
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742774394; cv=none; b=JnduFvFsHEKuXRIJkB5y5H+KbcmVWe8EdKqBI3Dr0RmCoQV8TzFS4cW+oErlSzE9gQuRE6hIMkmMdKi49xPjL1W+szja8a78FBb+h869WG+IoDmxCneyX9agxfpFtU4IUSqMeKrVM5apJT+7pFBGWKjBycbeEFOnFDwcBxqZ5rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742774394; c=relaxed/simple;
	bh=ISqaLkKnviZffFVhHaiTB3zMGKeI9x+ZqnJnVqod4MI=;
	h=To:Subject:From:Message-Id:Date; b=r2SJ1i/E/BVsnR3yiFJAGOv3SrbDjW9H6+HM4D/zQRx4QNZVEuFaU4MNk2mb0VcdUblm34xcLC99KRjlEo5GLy+eKFKdjbi5rwd4PT9OJGElzA2fvWTlP9eysXu893bX9CHu5xcOGZroHPDtQMMcr++y9ur7L4yto7neXeMpwwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZHV3jq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZHV3jq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFDCC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742774393;
	bh=ISqaLkKnviZffFVhHaiTB3zMGKeI9x+ZqnJnVqod4MI=;
	h=To:Subject:From:Date:From;
	b=uZHV3jq6zlq6QvbmhzvgoUV/ymw4zz7G8k0uILSUShJyw0/SIeKuQA8uY+gN1FpD/
	 t44oDPv9uwxIAEvGs37sINA496WL+lZGTGVZ6oTLihS5/zTJrfy895sRaSotuGoZJ0
	 Lu83/ddcKL5sxJ0HI21+19PUOvxTgpbZn96nqNuqiNvOlSw+2u4cUI3OLzbZLD+SbI
	 bkzsHRT9V0BUDbrOBpbl5J/g3rN8fU5Dz9kMCUDHGSEUtKGC+wyC8LO6/+RtmjQ5xg
	 bBmif/z4WfnKgrJeAGjKfNuBTZhe9S2gzKab9W/myORqYD1nHicang2PshQUrLyRa2
	 HJruqs0oo1URw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E3CC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174277439359.27167.17029696585155746949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72975f5aaf9c9dd636f8165f98a6526edc39e6392e75d9a0da9ade24ab9c037
Date: Sun, 23 Mar 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742774393
