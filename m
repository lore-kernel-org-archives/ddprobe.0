Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA651C84A0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781703994; cv=none; b=uyRI5F87TFP5g+XB6kkCGlfHJcy/H4+zElUIxuCdsa+Qngf2qKLW88Zg2cEPFFYI4rFCjKKjx+XkgLk22T7tqkyjOJdes6Uot5/1BMUzdAAJYrkWrGp7n5mK2XUrB80fZFjwmhe2pJcEeCuA7n1Gt6QkXwWtRLkAVr71Rwgvx7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781703994; c=relaxed/simple;
	bh=QwDqH/3coDReNHW41TRD59tYMsBZ1ijAgCcL3HUfk+E=;
	h=To:Subject:From:Message-Id:Date; b=g0uoIOgej7pR848sxAb/19H3/31jMQlhMlhtHmHS6+kW6KDpyNyoXjsOOAkDlevsip93X3CSuQJ/rQaPXht2smogfbyA2IYJGEUbWWKRk/OWzYOcPvFXSs/3atXKEgwi0SRnfWAuz3ge2fc1fvamGv3x5jvAAy6VIYI4mvyeaqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FS8kAEbl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FS8kAEbl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA540C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781703993;
	bh=QwDqH/3coDReNHW41TRD59tYMsBZ1ijAgCcL3HUfk+E=;
	h=To:Subject:From:Date:From;
	b=FS8kAEblZ/uOf7AhXaKQ31QTJLrc9HCZqYFDO0EguZayev3sreRaXWFNp/EPCoQo3
	 OEjXOgA+ew2EsNMrtofLJxJrTirnr2g7V+KqfM6/5WqOj+EvMWSRb4pQm3IM4JsSiI
	 xbjhLdddFQ15H9/qHF69OCj10PgZr4zZ4VwDE23LSAfvJV79pn5wimpRzJ9On8niuQ
	 yafp3daBFkhfxKfTypC0kEqjl1mEZKcoJW57o9x+BEUPgXxK47JNbAop3NpJeNu2BY
	 YfdMDXVIXUmUkb8v8GLSBW1WH3kfrV6fwb5ySK1PldIZRfAn1OSQbdgCSiAElTvQD4
	 cHyX7I+Pm4Wug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4BCCD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178170399368.11949.2922742874127824880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f0a48fb6fbbd66124688eae3c52b1a8a1f1c0b4711dc1e7748c2d8b579c898
Date: Wed, 17 Jun 2026 13:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781703993
