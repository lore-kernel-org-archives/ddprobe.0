Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBEA2874E6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774770894; cv=none; b=FlGJTlm4AbK2GPUN7Btb4hGZChhOCsj2ICmbu18oQ7+3cWKFpD8dgJNd2iTclHeMXYMErl7ZZs/26NEe+SiEp90MKvgDO7+E1Y6YwThP5HADSeLfwr08seVFa2x4h6e/bG2m0VqKW3zJfTJZlgVZdb7V1x4ZzJ+s1/OaZT/xRds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774770894; c=relaxed/simple;
	bh=aEYxeunSLsJzdMa3sVFkzJmH5splVWhPb4149pi6LwE=;
	h=To:Subject:From:Message-Id:Date; b=QwNJ1h3BqUOpC3r+YM5ex1sbWnwz6Awwoex3jpnawS9a0xAy/4OSatkRNbVtysxQBOonsiBvOJ1DkvqzS6KsM4EdxPNFl3eRg5efv/3ttz5Axb0ptyzyqEekCz/zejDEyjCP0NdQlCTQOAiOdilhjcs/+G8nUaGnRMBowkey5qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvmc6Vn4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvmc6Vn4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D4EC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774770893;
	bh=aEYxeunSLsJzdMa3sVFkzJmH5splVWhPb4149pi6LwE=;
	h=To:Subject:From:Date:From;
	b=kvmc6Vn4he0cQiH8MR5zu2JQ8TiJBOFCyObUE7YvD94GH3BliiFqHNNeUwcrG6pha
	 bxiCDPubVmV1qhGuhD27PUTenQLgUz68U9Hbius6evzfQFJcy5lGset78WT0YTDpCE
	 ppfkoBgVv72JXV87/c+K//IACGJNXc0GsKpM6t3gUESwJ3r499daHsKGo5+QeBjznb
	 H7tOxKq+m0vJQ5OBDf2sF4Ix4D2qQOmJ9PIEJ1r6ryTjX4V/cwY1MpMwRxxjyjrazn
	 +wX3RRQBOAiCRgTc+CNjv+TN+f1nx1YCNgxkx5hHIIlVwmQ3Tg1IEdVxMYO9Pa/UvM
	 eZp5PTinX0uCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9105AF3D5F5
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177477089358.21493.16286609657963089858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a45bf16c32b10315df54cb5a89f90efd67c2655257fa19262a0d392e3c4de7
Date: Sun, 29 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774770893
