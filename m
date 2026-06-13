Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30776331203
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781340394; cv=none; b=CYL8QHASxzng643xF/3GHlhvAZer8CFUF38T36teNqtSY7H2Bu/tRvCjqm5/POc9Kk2mnR/ME0US7A+PNO6yLaCwbT6uzLQBPA1AE89XKqtFu+qzdOCJ9I3NVIEAdr0COkAne7N4ryIKrY79TgSZciZWVTYSEn4OHaRkLjr9HR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781340394; c=relaxed/simple;
	bh=RVEbjOGsuHRjHHZ/xqqVfCOALnCEPNc4wd+9WnmmdXg=;
	h=To:Subject:From:Message-Id:Date; b=KN5utfJznQI1CEJFpqI3OQZqvRoL/V+LyqDt3uSFVtwo+y7T3SykG8D0P2GV9TBlHQN6xWb+J/jvpVFnU0msvPJTyl2LSvdlAgxsGlQ64/eTo2bkvdTrT9GUlh6+wGVX3Wq2McOtbwSyerZI5XJduH7Ap4NnUbv6Dsqn41ahAYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOdoq+aG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOdoq+aG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7BAAC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781340393;
	bh=RVEbjOGsuHRjHHZ/xqqVfCOALnCEPNc4wd+9WnmmdXg=;
	h=To:Subject:From:Date:From;
	b=lOdoq+aGuQCi3w7AXXiTmM1KBSn+QcUWOJffdikJhgvU7weHsaTWuxsGjJEwZczyq
	 zjUZA0OfTPmnPbmHkqkfwR7Xir2Sw3Ro51T7GFRfshL8u57tcR+oo4e2fRBBs/X4By
	 SucKRnTn/GH3r7w2o3Ynv8Yux4snxObv0Xerlx7AUswnOQDN59UtLZiAGGO0rnfw5N
	 nkaL6g6DcDJs6EpGuo1bldsSHaTIilioztc5b3kAld85yqitmVEYaq5EfBWOlVkbGM
	 frvWuGHxy0GD57BXm3iLRc5kqShdilKvtQ6muCXfYhFBMDXpuzrDZcIa6z4s/9Upd6
	 9C+EmaKEjJKZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECB4CD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178134039368.29055.11380612122689583973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716f9781262b056a960e01526cc46df504a3ad6b1efd9641ae8a637ec1f5a787
Date: Sat, 13 Jun 2026 08:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781340393
