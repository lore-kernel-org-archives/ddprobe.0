Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60ACB2BD587
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788922234; cv=none; b=Lm+RAfhVgLbLggQDHoRMZ8zZWOfX7k+aWr2ShXEetrFwHbmn+iGdf8EU4Q7xToUk/zdeK/QHszDKoodKsvL46X54pT+9315fPBVtnLFWeda/bd1UZ3w4XNHUY2XGZWbBqrtEeY/AaPlT6j347We7TigTHB/XDLQMKQC9hRpfeLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788922234; c=relaxed/simple;
	bh=vKxAeKqOF3iewXOC7R+v2VT5+wF+8VJ2iTrR+TkREHI=;
	h=To:Subject:From:Message-Id:Date; b=NRax9Cvr6gT3HiiKYsS5qSITc09Ucskjo/6PpApm4PONYHnNh45NW8MR3lsTs0cKk9++UT4ZnYa32QH+Hhe/0lKp0G6wnePd0HGJK7RigIKNHQM2DFmIlukZOmlBVUdZ9vUYmHhlsLsVfble9RFMPjA/h6Vavw3uJrnJ8n4akWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCEsS5LJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCEsS5LJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD761C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788922233;
	bh=vKxAeKqOF3iewXOC7R+v2VT5+wF+8VJ2iTrR+TkREHI=;
	h=To:Subject:From:Date:From;
	b=HCEsS5LJaECYEGNIIE6P5su5tLAHguiFRKXPe20Tf45DgHS6MRPiJ7VHmMrd/tV13
	 7HU9T2KnsIyKgxadF7Vba+eKVlHEZiZE8GXINpqqEm6V5Rhz7ToEqDh4RoevB7H9k+
	 qNFTGHIXE+T9fGTnGfAQ1doVBrBRvccOF72qTqIRJkLE+i4R4FWgPNWvTmU/B7ekIP
	 Z+BRFHsF6Zlw8YdyFDgYM6mBFhCl6aSYf5CR2bbAmknO4MvSmjdeq2WEq55UrHh+vO
	 pgERxEKB+E7h029smoFpUa8B1L5uHBYBAHZI6UnNs5ZQ3mhbT21U/6ngFm/6r0Khty
	 dtkZ8hG6vuYVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA320C79FA1
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178892223368.21420.15769107539708445813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef65edc82c414a6b684128df6a58659b6689e0a77ea39e582fed21cd35fbc80
Date: Wed, 09 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788922233
