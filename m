Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC9C309F1D
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777606054; cv=none; b=o7uR7bjnLOM/hLv5A8Q5vrGm7zydU3RNwv43Ilci7VYwi83J3//BX1GjaZyzFfhB5bEYdecH03GNSE0fihpSmA+jDoqvw6Xz8Ssq9lxZIvICCjgKeeEJRDuxswJO68iK7ilcw4cr+CkTUtFh/xrBbfjjm5r1m6+u1iKFm4Ld3lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777606054; c=relaxed/simple;
	bh=H9aCpUbtc4QefhE5FhMHpkAJNFtQmFXssIT/ildbFac=;
	h=To:Subject:From:Message-Id:Date; b=QMD2ADpkHpXG5okgVc7Td3Oeaxy8PxW19R0ARYeSksWu5Ex/qnXWs590Kh3tnqO0ODF+v8jtXsBPExoOAhgtQUSVFk0VQisDAqSBx2xYUbwGCxUZSzw6zv4LAxZP20O+P8Iqo3a99ra2pRmlY0k0+gwpUL3ortIDdukvDxJxAiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2j7r1HG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2j7r1HG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD931C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777606053;
	bh=H9aCpUbtc4QefhE5FhMHpkAJNFtQmFXssIT/ildbFac=;
	h=To:Subject:From:Date:From;
	b=B2j7r1HG+oXNC8bSgX1mdaHoe+3vRmbctoV+FjZmfiuKizCsb0mabbW2duQGycPi1
	 C6BqzI6M4pg6YwH6+s2IpoDmjePjhiSyRccpDD41Zpp/K12D4MNm+5CkYZeuS7AofZ
	 +bgVzN9spM7zWMXB7j/6kMixADBetNZW/UemRCQBSx6dXyJoD2jVgmnV6VC6fCje1O
	 LGoLACCmFJUrmbJO7MzWL27PRrgWzc+3SjNyhlaDzJ10qMReREj5AQiStBSJiBhB+7
	 phLgbzEjlfvG2XXnffdnW71EqyvcSDfcRwvhnCl3/yLuApyg8NHXYXO3fO6AtpiwBE
	 K+wyMEHDtZqJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A982CFF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177760605368.12390.16634352113729152012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a088dc44f45958de39fd366b4d84ab42e8e2553850c4565097ca624e8409409
Date: Fri, 01 May 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777606053
