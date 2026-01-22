Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269CB313E34
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769071434; cv=none; b=EImGWrP0F311qg0HeZvDPwcwc81tlIHwaS/PYfdP/gzfPKXegYu8LAt0A4g4QI7SgR6+/JAY+WXqKy4/eySB2Zip7l2LTxHHXIARXp1r8S4Rxi9j+LsdPpL3O+k9sdZGoPWUwDVsNsEV46My2DGX+lLgPr9LbgJdvDywyt6DsKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769071434; c=relaxed/simple;
	bh=X9fkXDTGVx+h9GnM5KQT5lmRHMcuO4QiE/stzB+Siqw=;
	h=To:Subject:From:Message-Id:Date; b=USc46BThwFqDLZCc28Cz2bneDnznhYKuauNtzxenaimOePH77+nTeQuKMQTL6B8EZ228IX5ATwOJICoYjbpZtwvoLSBl8+AJ7jmXo57mV4XKWCJygp5mAjT8N05PCpDLPD1Af+J3QkXEfFStTBZVkeZQqZvOB8K2+G4kp3ZK++Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFt8vrZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFt8vrZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF658C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769071433;
	bh=X9fkXDTGVx+h9GnM5KQT5lmRHMcuO4QiE/stzB+Siqw=;
	h=To:Subject:From:Date:From;
	b=oFt8vrZTHpk6jXwd/V3cxWxUN1gw6H9xs53zCRg6WqWAzYFSxldU+jStt4LxB7Q8o
	 Sq0Z6oCUrb6e3rRJ24BWbA3tigqts9RB7YFjpE8eH8pOWzZqo0wZZgnC7i0ffUOssr
	 a+0LUAP9l7PQupAB8slRE1UX5Ie8Z52byzhSGK1R8m43191upuFJygYOZDvD+amqVw
	 FdUTzXDJSFLs2HrPuaraiM10mjo3PoklANiaF8yzSNm10VRzGKMDMtWaYuRym1LpxT
	 PoPiDXNqy9aR8o7fTkMg+rkYp60kJynbn0wp56QzxUT3zGOVON4aI+IfmZFPak6qQn
	 bE8JxsDrcDpDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B415C44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176907143362.487.7837832345629434362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036317849ead434c4f089c9006b4b96dc6bc3ad829f5ee80321b531d979cb996
Date: Thu, 22 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769071433
