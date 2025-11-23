Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BCF13D891
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763889714; cv=none; b=A5UtoboSIiOnte7/OuxIQOYso2k4qbaCjY4to4XjprrHZj7xpwfGmdBSJIeU0jeJu43w8yNBSeDrHet08/yddPu+YdcqCCV4jb3ktdbAWXVq00BH+Mgoa+YzqipzLCrA/vqBJ1ylK1ogo/c8vMruhvffm7q1AahVN8z2WL/Ykbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763889714; c=relaxed/simple;
	bh=HJ10b55jYNfhN5HC+zSen+17xAyI2a4sILK5Hc0+F90=;
	h=To:Subject:From:Message-Id:Date; b=ELb3rqL6WcYc+brqYdf0df726wYmv+G5cdhOEFDK7vZPpmWGqB3Yu9lfc2STAXB70KeLmlbxdhAWntEZG6V1l/kIvt4sUnn6QFDWdid2kixZBtuWsbgsTLfQpChCMK054uTkw+rWbB41JUePlhG4IK4+mAPoRPq1S+eRRKDqyoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbumT7up; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbumT7up"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7202C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763889713;
	bh=HJ10b55jYNfhN5HC+zSen+17xAyI2a4sILK5Hc0+F90=;
	h=To:Subject:From:Date:From;
	b=HbumT7upxu0zOKNgvOKM6PInyQncgtct/UCIzCMFaR3aIa7/SH1BIXnxnEvlCRWsO
	 Ust/hjbfXFX/sPE7KZVQ/sqCGqNDK1bof2SLTDpUWmzNsBZ8HyeJUf6QnURfebkS4Q
	 hhtt4Z8JzIEmLErloM5gwhQx7WLyU6fQTRBzT65U/F5JFhD06HGZPw/9NJeh1luaRg
	 rAx1HN1nQefyPG17ES/ue9XNSuJBFvRH8zVZRckXGThn2h9SVK9Y4j9if5XeFOLoxa
	 zT9HvoV7dy1rqEOhA4L8GlUA2cqQVmIZ/aG+eo/HPITTkIMQS2Lug8jwmkwjOJsRaf
	 quFEaCE8XOlVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933D9CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176388971358.31991.4109648377473927325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 343d7046846ac5be23e294fb48b91987a03b517b62907bf9d1041c7261cb5dd6
Date: Sun, 23 Nov 2025 09:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763889713
