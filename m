Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348501E9B1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786335634; cv=none; b=M4neQNSQcuPoHqqTIO9InHAS4xWyeRssny3bckYTU2DGBrwp7xdUQeXBkM/b8KD2RY2LStBbmlopGjUVO42H9HHNfoGoyfUgAdUT3uMC37t1y9K2903gtYZ2oV2/0EpMviR8UjTZ1I5oxTgIaMRReBEmE46fadDeDblKP3qEuxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786335634; c=relaxed/simple;
	bh=7AI5a+dG2FBYzjfruPFyfxHrzom8p3myK0UAK/tr0EM=;
	h=To:Subject:From:Message-Id:Date; b=ZqL5teDFCl2ziMgYfoA6rSKvDr6o5jb3UicJKQwLnAOr7Q1oKicURCpwERDvaTAO0lMffjerDosqUwarmt47wb3xbW1QQwMHUe9LlTEndZFs56WoVGFpvB3/ywmGgiizMVXKQqvgxgbRnLVjoJe7QMWMFbBOT8wfuPxPKrE8BEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4ez+JCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4ez+JCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DD3C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786335633;
	bh=7AI5a+dG2FBYzjfruPFyfxHrzom8p3myK0UAK/tr0EM=;
	h=To:Subject:From:Date:From;
	b=L4ez+JCVJ6jePwUuNDVny8hDsZ8aL56ZQSpfJwMXfErt52+J3oFHG5LfR73krrcgc
	 XHm24Gh6VSwAL+uDbkaiiZ3B1s62/z7Ncz4t6dLe/HWmYatVusWHLoee11tCH9Fs1e
	 1AvML+Ae4r86qS6FWCbiluCV3XUksA5Yl8BUbcltxXqH4hbQDLlTg0bF0jJhIO3N90
	 eSD7zolhifxGLLtUuyr/kfdxFqKliLRtYow3cJ2cVG8uYQsWxvvlHwxlMRkl1fOs2W
	 pz8HO3yN6SRNpZOdlAbvakoJ4+wnPmA7cJp1iE5K+K09gQecHPr+VDfVYMHJUEuLGY
	 jndqmeVvTFjNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8A1C5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178633563370.3459.3899209882596478748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c116afd9a78546a2a4125c52ffc8b12b8714d14f4ad6666edb631ed6b528b2
Date: Mon, 10 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786335633
