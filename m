Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090611C06
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706347697; cv=none; b=sGiSRMjishmofRocx8+ghNTZvLjUsG+8SsYyYqbQMKtBqq7mDtL1WXasbjGZ+zrbNIQ1eldFykQwCkhY4MA8uX7wk9YCzQw8TWjZh7pQXMcwGT8ytQs6oGPvWj+IauTzKOqOm/woqfEXurOTvP8dVnbC0Z1R+ubrRhzkcWLDFfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706347697; c=relaxed/simple;
	bh=X4cG7hrhd/fkKRS3kdLpEXpRsAeNRr6UV4lMUxjfZss=;
	h=To:Subject:From:Message-Id:Date; b=Z1wmPv2RKKPvIN/W1UpwiccICHXzML6lqf+ZguLZRscy5cze/Vh3eMYMtq3Kw+6hM6nKGPJ07F/uCsPMa8AVa6fc8TIU0rLFnj3/qpIXmAe3b9b7s3XWEVAU2eHksV134DDTxxm1TvUF1yb4fz+mu9a0ZIMfTxid29PA6rsog4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEHaTi89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEHaTi89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81ED0C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706347696;
	bh=X4cG7hrhd/fkKRS3kdLpEXpRsAeNRr6UV4lMUxjfZss=;
	h=To:Subject:From:Date:From;
	b=fEHaTi89qZ1yhVKTV7N+wCthf9Hh4e3ddsZ8NsdamkXb41aOgLg6pDZaBZ8gxL5Nq
	 vPI5VX6K+ncqYLBaQPQgAR10WB4NlrlsmxxndfXNv/2Vfpn729xX9GUWmCE5acFFFf
	 f6yM6x+Z/Avw++VukOWnSDrGZi0dyIABarOhYkCTuF8Pdyas2sMYTJ0xCcelhNqcmv
	 0ifZo9luCRa7eAQ7A3MvQcAcwfNucjA7G0JgQNIS/7RIXfkhYFoAJcyH5yy4WmONMS
	 /nbudZQZXr119RrRwrhDIzPYsv/KNzlOylnTeP+RhuoTQLEY98cmaqgOEHloHMGHdh
	 uJE4VWAoiAtTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6724BC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170634769637.2174.1208931832973367747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca08174a399d895e6da815280e38453584961bdfb9327c525af947ae07181c58
Date: Sat, 27 Jan 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706347696
