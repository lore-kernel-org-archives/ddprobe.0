Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1774D185955
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766226234; cv=none; b=bV2Wxt5SG6ED0epJRlPpVXiHIyig3V0LcgPFZ+wyncBPZHvvqu4HEtanUz2FAlSn2iK2z49yZ1F1uT8XZW8MAWhAfCzO2qghMjX3hgvCilUWPPaoVm7Hh3zwIFJQzrf97kcGxgdzlNtn4NfPe48Na3Eb3sKHci4u/mmtsGEVHfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766226234; c=relaxed/simple;
	bh=isyUat5zG4/4oqgY+NAYuCsK240JRcyjPakSdfdK21g=;
	h=To:Subject:From:Message-Id:Date; b=mrUEgqiL/11D+isowohgsdArkWPLJzHmJoJUd0VuVptDrGDylx5WtbOgaxBxbye8inc5uaYdGLHP1wb9DqyMe1Y1BUbPBPxHbVLS3c9AZgaWXP+MyHOZGlnMkFsCDfDzAZHoi4hmYJRrDiQM3FxFitXRctkN/8hv8OVDdtLjkz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohMSTjfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohMSTjfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8420C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766226233;
	bh=isyUat5zG4/4oqgY+NAYuCsK240JRcyjPakSdfdK21g=;
	h=To:Subject:From:Date:From;
	b=ohMSTjfUiZ9EB3VduRxvCvQAGjkuBvAISIkgomklFYTfLwxvhCrl+a1/tOObI2f4H
	 IKiAJK4LjfGV7M3B7tZBQv69wS4c/9vOraTnU8yN/lviAex/MGkulPfD+IT0AMhS/B
	 ki83a4YvHTey1Isj0gSb6SKWYBUUBeIVVPLyWQJvMnfE2oyaOH1zoVTyVb8uoNKdg9
	 Rz7VQbsxTZ9FtIem3IrvpPzXhP2x8JYffT2y+1FSWK8LYmjczCwxzDfIzLpGsfPSpp
	 lk9MyuqH3RP5jPrTmVcraqMZu5xOMoW8hAcNzrUxBEU8erCYNm0tByxioVoZUucjl1
	 MeBZvHJYA5X7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CEAE668AF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176622623359.31190.11265565408504723927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e67d59ec5aad893e2bcae1a857b3da8648798dccf73d75cd673c2b1c8e3ee1
Date: Sat, 20 Dec 2025 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766226233
