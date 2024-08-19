Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228E415B972
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724068554; cv=none; b=D/0+2smz3HKg2yF16FyyMvicpuPVFaAQvLhLCedRGo7Szkfm3S8Eq4VPtJyLpHxE/cQK69wHeiEJSfbc1IaVrMLrsMxZwZlbtamP0asMP7iXb926qga9S/Dqe2LEOLRRevob8uiQnsQbqqDrE8f1xZr+8QseovvJXC8ahBWd8FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724068554; c=relaxed/simple;
	bh=c58UFTqN5vEz2hA1KI1Y4MCeXHkpj3BwGlyQVXNjOwg=;
	h=To:Subject:From:Message-Id:Date; b=ZGyg4qniZyC4sRwSoQgK9dca9zecwxSrPE2Qwxuk7CSOPkF5H+2WVFIKijXdPCfhLo6oXQxMVXV30Kx6kVVDfdSRWoPGoj4UV7b5leYj9h8cvtxpsdQUsmSqlJIN/VFVIEN9gypzIC1t7b7l9w7stwIu5H0pREAxGAuPoyl4tMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/qmMxjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/qmMxjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A2BC4AF09
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724068553;
	bh=c58UFTqN5vEz2hA1KI1Y4MCeXHkpj3BwGlyQVXNjOwg=;
	h=To:Subject:From:Date:From;
	b=d/qmMxjS9a08NYEJ79OLSF/9jNjP6XKZqK5MDzJMgw76i1OIu1j/Q9PH9HjcPPwAN
	 40hvbZEdc/TYFMS5xiC4TOU6/OSSANHRt/Lbi9hQOSBvOG0EWZqqbHnQYuVkvFb8Ub
	 TdBtOhx1jnZ0pQgdzhg4Vfpmg6NOsDx5yxKt0Q0dpKu80nHsIKQR8OlKOUbAz4Fwqr
	 bV0sDc1zSiqRhFlUirkBZJA3yfYHAyJPixFSN/PHHDI6GVCkkvYov5CwSOuY6WRHaH
	 /GW0Lr8CNtqB/VGW0ZbJ5yKRmOIaloeCCFMO8MnQKo2Hdun1Rn9+RHXCWfisBEilnk
	 dzi/BDJ3A/oBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95778C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172406855360.14607.13006202993398187104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7f1e2e717432a11561226b87db69108d3389474508b4476ce6e5e7a24381df
Date: Mon, 19 Aug 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724068553
