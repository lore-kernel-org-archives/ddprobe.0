Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597CB57C9F
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789722634; cv=none; b=O4wGkr9gkl+GDKrSWpEQjT8J5u54xluhdFQNPtfWCaS8EOfDpVerA6ZW5RBFqythmHtLRCsRqmSB0lwhxKRBMsOGRCWdkFKydg25p960SxCoqWbpMHX3g/fuA67koy9gbI2pY0uZ0N5d9obcsE7TMoohkHk8ak/xzSEUdrf9LyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789722634; c=relaxed/simple;
	bh=fBpYNhz0kIECca6LETqZDbb1vsfSs++m3dT3SVd/PKk=;
	h=To:Subject:From:Message-Id:Date; b=WJhaWJ30yWYOtRj3vnXO5xZ6WRdhZyRky8Etma4jZwF6u1Gu4wIEcdiCASAQZOF5TsIFMZ+tdUiUoA8XRdJ2RkCKR5VSNF7a5SHHkWwEVRhjixvPrycU38W67ZAUPzJExicAEZQfv131iLO+3b3vR6KENjDTSxFKrbi5p10zU8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3XT7rf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3XT7rf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4774C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789722633;
	bh=fBpYNhz0kIECca6LETqZDbb1vsfSs++m3dT3SVd/PKk=;
	h=To:Subject:From:Date:From;
	b=f3XT7rf74s8HCpQTEMmj50B38867Y/qemlhqLgP4Px+fOIfmVUEN97MDJpEQgD/Om
	 9kaDfmX6h5ZWhWKll3lTujTEjGew7IPvAToK3ouKLgg22adPea03hb0JDTL9c0NzIi
	 J7cN1GfRssJ0a1N9MCHN4x3CZVTypq6tk9TQ4YhI6vUE20Yp8/ljynNx2x8CwjeLIm
	 lxaTHlBwJOZG1k8AGfLu8seesIj6g7qO3jSNwgDXMkE3dhGHn9g2UJWhTAdVRjcqal
	 ufUQ0RWBqNEFH9vT71kq2dE10bNvGClbqxaFP9AK8JKItplVCSl0qYrHCoD/gCWNSq
	 9oAjOgrYlgrFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DE0C982D9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178972263368.12198.14089576813245830715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65e93b19601973615cccabfd3abb33abaf588e0a7488e806d90cc9636dff10a7
Date: Fri, 18 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789722633
