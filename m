Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DC546B5
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732593954; cv=none; b=YSGRF7bsR9i9Yqgo3DZdVFBRRLYtNZTgw1ExaHYx2ZIqk97fBwDVgHsj3mKFExYwiANfXT06DJihRcneV7xZAN0T+60djRXDs4MwDUAqJOR+XZwpg8/yp01FKlhywqMztkzwbxyv0ImVGHJ6FkDPa5o0TeIrC7mo2SEEYfWJrog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732593954; c=relaxed/simple;
	bh=CKMBqPhxYzs7rhxeax61dvVRW6vr15QHlTygHovLyRE=;
	h=To:Subject:From:Message-Id:Date; b=RB5POWW1nwQOpTZii1/bRG3Cj6e3GIXxAEuSLSIEMfpfAjq8Qg23osT+AULAfw4WoE/XIJ+ZeHyEMGNHlUEP7G/WX2AoJXf1YXlTujsImI0Xhr9X7jwiAd2+PJb7EC1yDYT2BTo0cbL5WEIAUklKb9xnecql+dCaR59uW1WL+y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1xo4pMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1xo4pMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88EEC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732593953;
	bh=CKMBqPhxYzs7rhxeax61dvVRW6vr15QHlTygHovLyRE=;
	h=To:Subject:From:Date:From;
	b=P1xo4pMP7hnqYPBavJ3k3LgKarylcH0VezUA9BCvS66EhX0SLHyBekgQFfMwUsH+R
	 hBp5cj34dkxWgefkW76qMi4QKepRnHKd+0qlSPZx1kbAaot80yxkZ9WTXLKoGWOM3I
	 iOYFB2aTgtevyroldLdsiyYW0yjDzc6tO+JISSXMWlSNly/RrMYBP4yzSt/vmqu6HQ
	 l9EeP2oBOBrZDsBsbcYMmeU0xIRMoj5DlC/fV94HdN30dnv7CYQHSqNLIS8XpvCkpg
	 z4zzRsuOsnVCKtz8SSlrzRotr5lovZR5/H62jNs1VA2NFPa4iVboXYRss6a0SjWIN2
	 DhkDPG7JJ1EyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2938D5A6DD
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173259395366.9439.13487282527690684867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7fdb7148e19f16920fbcbfd77b072ba910f20f1ce3f2d481f4d54acb3eee681
Date: Tue, 26 Nov 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732593953
