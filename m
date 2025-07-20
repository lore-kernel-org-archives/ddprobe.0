Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B6322FF59
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753054194; cv=none; b=UhBmnCjZRDpKMmip8k2aBkNUIDMOjuzC7R2o+//ytXSaF+dt/BZYXe94H+h7i3GHN1Cj9fMG/JBll+1jcCHkEQF5aG0Hh23mafMWnVP3Q4Z+UAjMJMcFW6NAJsyRcU60hsVBfUCg9tAyNYGoXs+gKHy8WSfitX8woc9DOVFE61o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753054194; c=relaxed/simple;
	bh=i1+qX7EKBBz+lF4BisZrMzC5RhSLpPLOjV/eMaNy5zs=;
	h=To:Subject:From:Message-Id:Date; b=jQjJAE0sb27lUSlRtdBEnR6cS9ZCuRuAXCMIRRvAH+GvjveeVyRE5OJQj4omzWBX+72evDTFa1dYWGShP1O/MChuzSiNKDJvJonjaSzjn9XULV3zjsFcOMwZTSo1C36mcrrKgdHO0BbIk3xuLC4jt+5Xc2N/oa7K4r6LcuDVzFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLx3wMEo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLx3wMEo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BC8C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753054193;
	bh=i1+qX7EKBBz+lF4BisZrMzC5RhSLpPLOjV/eMaNy5zs=;
	h=To:Subject:From:Date:From;
	b=kLx3wMEoWw0pXPOU+nj/+cFhaA6+17XQ90VQNDd432I5il8aiJ9u92e3FuWLmURfB
	 Aee4ntAQwopcY9LwkghQ7b4dGE/OiMnBiBJnCOlRcF0/IidHzr0DLd6nq4NBkKjFJ9
	 xUJAq59439cNaJLH6ZCzWSsatBCCzsnOYP4QDEq4hYK4r52+6U3Fwf9I+5BXgDXihI
	 Qdx1qxnoolxVk6IAELV+ZvOhZc1GRKsjYR+JGqDFv1SUC6KU/krSozNJdLqutZOjYQ
	 PUyeMpYRW7dj3f8tGkbmefUCm/ySfIrR0S6khCWEKs7UqUnOYKm2GPqAivjBjrIiNv
	 wJos/fzHDqdRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923FCC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175305419357.24901.5381896239169115635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fbf1883e104ec8eff3822c2dd3f92a76ac154a952d2df587f12753df6dd5d3f
Date: Sun, 20 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753054193
