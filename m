Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2788F43AA4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755380394; cv=none; b=PrtIXyywLvZo+fKONneLqycUrWDxFx1OlSeHQofZepxW08NDUcIu5Iz0BEi7GUeW3ENNPaUOpHgbE2xgMUkg7nAIkf/N1YMSR6CPwayuCoGak6Bzki7aXysQme3YbAbDq9FYpjWV4hlpW0dL0o1foJSlFmMSbGZawX1xYvLGSFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755380394; c=relaxed/simple;
	bh=+XI0DpKzM7u0XKI6IrDcT8Fmeq8GbDwwgiXPbqHmkCs=;
	h=To:Subject:From:Message-Id:Date; b=KtuK5h6xXENT16Twklsgc075JetySB9DlWmTjuRcj0zSNJFm9EvHdJceGSWrCPT8dAsBwC9rWM+gzSObfXVmf04mT3W1PyYlYPio2lh1YcrEzXIIdo2eyemDbku9aOmida1UIxsGTuqu0UA4sxlxGs39z+0H2pmkYHtRi2FTX4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMq5TJCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMq5TJCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FDEC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755380393;
	bh=+XI0DpKzM7u0XKI6IrDcT8Fmeq8GbDwwgiXPbqHmkCs=;
	h=To:Subject:From:Date:From;
	b=RMq5TJCNvG0QdbhQRtMAIfSUpQWgplQAq46gaiT3ZZX5jiPJ+8N3RK2+hDylbAAyk
	 DtyhBKtenoLm/g9vzgPfP2ZwnzBMdQq7LEQ79GF7OucQ9AgwmnL3Sd9bC/0mejqUpJ
	 bivT/LTs1CSh0kWBJALA3c1yAbadNuzX4vSEQAZbfTgz/XjQCBtUmqqYO9KHbriWA4
	 0FF10LM980xYMFLlfnZ74ITVM7ggu1JKrMKf/y27DNW3QdMpLuAS68Tq/L6FM3H5N9
	 X8a4p9tQW+68CFXm3KFT/3fFa5yYE5crKXPxfaBfQNnb0h6MeFBbPa0Gw20FF6NQCu
	 5sLyiXcOv4miw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B8CCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175538039358.29702.2824603469587774742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9e14e19497d9b1f930b09a557b668ace3f2ec4af4c456ca5bb7861e24af4ad
Date: Sat, 16 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755380393
