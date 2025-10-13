Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82BE2727F8
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760358593; cv=none; b=Arx12ELou39hVcbfUsChGXlh3lmGy828NKhKzqYZWph1WCqXktUVRkhQCyuOvVt0Ssw/MIkhWpLB8qFFfFExhnSCENi26l6TSkYvZJkLywiKJCBI37WmC2CDzI9k22dU4OAxKgpQAyoYeuESy+zckU9MfksDIKeSbIyR4Z21ADs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760358593; c=relaxed/simple;
	bh=efp8t6lo2iWEyapxeJz1o8cjI2NHmDzzUKxu3FWLISw=;
	h=To:Subject:From:Message-Id:Date; b=ZTCweVHCzBmZqlEHA6+TYer4by6yOYHTKjqNwD/n50ErG/NWDLL8A85spF8Yi5qX77HXdOXHqS4MrS65/NjiGzHWphGzrEQE3SZkdrNP5pkGiLCgJ9k+Y/2c4pIaf+1kGkIZZz5XAzuYwfY48H71dmcRU9fkkAxTCqPq46ZtSo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUttvVQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUttvVQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F357C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760358593;
	bh=efp8t6lo2iWEyapxeJz1o8cjI2NHmDzzUKxu3FWLISw=;
	h=To:Subject:From:Date:From;
	b=WUttvVQYkJz+ULU6wItqpYE/W7PyWSp+t20yB9II4nL3H7rPSMmLn07C9yz3DSaJn
	 RjQmYN/VSqlMFdb/5yxDHf55QR5qpju8wDUMeAUmbQ1pk1FzBeQG7HN4856zdfrmmZ
	 qabmxv0+O3OO+wNoRQelNoDkBfvMX57HSxmws31KUuth7NwWwxnmY/zMHe270yG3dX
	 tPDZqPDo5HVMaDDC4XfszjTc+kfyG7S/ZvRc+jzrD5xUxlwXtkC9BA7yyenBp8gDeh
	 /vG2a8mMYYwI50RKtz8RapOd6+fVktxltXEB9V0HAnYcPwbKmbgzjLgDs8/rcNOMwB
	 xedlwkHhJGuSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD3ACCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176035859358.15808.3306250458645758578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ded6a6d6aa74c7917d50a9a9fc3d2c55258210fbc93963a50e3a47612e4c28
Date: Mon, 13 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760358593
