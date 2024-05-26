Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2A71A2C2C
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 20:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716756263; cv=none; b=gKBso/o69iJbwMzrZzp/NepssKTID/a34x7+Z5maSwhxtiuRlfu6clNfkh2E6okjbeNpc/c/yq0aPjKpxFk2rscyuCYY2s7ncDe+8AIoPE7xadFNBIDFyBssUNKKrzh4bGs8j6vBzrwbPqt6i97JJSoqAKwNwKv5Il7aNDYHP8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716756263; c=relaxed/simple;
	bh=KzssygGiboP2aEt70j/uRqHDgbNc9jcwATOCw9hYQ8c=;
	h=To:Subject:From:Message-Id:Date; b=NwT/WzWlA07FFSHMwlgUv705yYw/0KNMSjO/qopweTBwbrGJ7ucrD6F71h/sdIdoUCpHynamplmGeJS/RDhIi7MdIYqrMqp0R7y2Qtd5Th2huW9sPaIdy/ZIqhdSP7Zv057OWUaTvN5OVsnfb5Nv5qGSmU+VcwpneZop9borTIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciiUbo4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciiUbo4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0698C32781
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 20:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716756262;
	bh=KzssygGiboP2aEt70j/uRqHDgbNc9jcwATOCw9hYQ8c=;
	h=To:Subject:From:Date:From;
	b=ciiUbo4THSVlZD+Am86wlkTN9Y1A6GZX2YHURfnrdK3NkusrnOTBgS16YQ0ig6fY8
	 auQ7/mX5Xc/K1cukhxvEGzbdUOjM1yM+7z4ZqjsLsRuCEeFTgmOIdYh921OOmmNwP4
	 LRlRoZshgO7Y9xalDA1Fg+BMXDRqaTx7FW9pU5/GZTTGCT0inJrtE6mlgK50ee+ndR
	 0vvhcVLuTJLDCsnAZkoMmGZNQmCRD4cyJHMeAdYnSqaQsDPRDNtuIUJnb1E5uBXnLG
	 DrOsGevO7FewEOH/DxE6lUZkZlGqekV8F1qb78JjMzgxH2gTjXcaY2DJ1WeYbmSFNy
	 z6Ui2F9k9AA+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BA9C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 20:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171675626277.8166.7756541722103076835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 863019478e7f136b5c901bfdf3cfa76c6fdc306f49d08f200dbfa842a11b5aed
Date: Sun, 26 May 2024 20:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716756262
