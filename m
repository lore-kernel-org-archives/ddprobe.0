Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5352730C17C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785031834; cv=none; b=hpQyKbPtZ4KywGINnG3Uvals66ZXdqZ4YmsJSYfEbzOakpaD+/fK49wpgrwMqnUoC1waFL6NAJ+oc9k+lpcUmfPai98RD1rw2DzHbcgya3qAeanjsP4j17tg7fSdwHfHgGCnsooe+Wqd2/4BFExbSULRndHvq/nBWRqgXP34E6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785031834; c=relaxed/simple;
	bh=dc8P/9RGyCdjsuUt0/0/cg67aFrMCEXedN8yQg/Si/Q=;
	h=To:Subject:From:Message-Id:Date; b=mJDgjuaYSS+4ndvIqQ666aeDQwZVcfy1EbBC7WjCiQeggR8O6ntn7IdsIBJEaYNO55M8leR4Ctzl+HDuxStWjppEVk2m559OLjRjr2CigxOPP414tKvxVDCcbNzWta9+ARHEQFtE5MocBlicEQ9rvQFyWC7SHA79Lr2EUWgkBgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQ5+nGmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQ5+nGmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB990C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785031833;
	bh=dc8P/9RGyCdjsuUt0/0/cg67aFrMCEXedN8yQg/Si/Q=;
	h=To:Subject:From:Date:From;
	b=NQ5+nGmd1nXHA0Zr+hBQtuLv9zdnt0CK5kRcx0d78OXqb5bdEC83EwDbGBTgh4PIn
	 sbMuEwO4oZNh0h6DNXOFhjDRNfKOazI3v5gC4t3hxtVRVyJDzLCVMY7xDUUvP+dLX6
	 jQLl24yX/N7YXVyX+JScCkGm4j2cmUMiJyAuHnrt6edo5nWEaidAtHK7OTtwZ/Z3E7
	 LcVIdJehaj8kj+FMZx3Irk+zS+9kKvEi6ol/dE9vovyUhMJMurgto7MBkTzQ/dVrrM
	 HUadE2js8ZXx1V0rkT62SQC9mcvd0+rDzmgK8S7JRf9ZfhmDuns4uwR+hmz9is4VR6
	 lXPjyEAghOyaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8828C531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178503183368.11729.16739168249556360433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dabb2cf6da8020547a9c62fe9a0c81f65f83287144f5719f9c00f274c4f29940
Date: Sun, 26 Jul 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785031833
