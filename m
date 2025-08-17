Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2065B16CD33
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755400194; cv=none; b=GiHhtvkbYd158it2OX9tUWb8H2M1C08py/puLSEvbyXnpYnpUPgOiSg4QWW2073x4r7ZvrkgAb7uyM4C5VuNu/QgfI+Veal6RFx5ui+yI09jcWZErFpllXLW/Dx3d8j960cLGg8oyxmrPLcN7YB6cjbwmpXJnG15Xo17UOosdEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755400194; c=relaxed/simple;
	bh=XnUH4IT3xSA8X3pOaA6fYdHB9YLyVQyCtA6cmmsdWME=;
	h=To:Subject:From:Message-Id:Date; b=DCbGvkn9pfQYjvxgceTUa5H8TrhUmzrubcbt+a2kagmVNJ1l6XB5NwmSmp/lMUEFaA46iwCiPnJEkvA7EgoZQMCirdp1ho7bnNPBrhq057BK0tQ27JdzKBNdjMjMPI7ZbXLbdyo5uEtTFh5Z57vF2B+5zZVDcLur55D3TnAIOEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSqCI+ZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSqCI+ZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7924C113CF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755400193;
	bh=XnUH4IT3xSA8X3pOaA6fYdHB9YLyVQyCtA6cmmsdWME=;
	h=To:Subject:From:Date:From;
	b=uSqCI+ZFAyta9NOTsqYGbxps1uJ4lnnNNyu4nTpui6WS1ifwg/4/veIS05wYFEvBR
	 YOFdWTMqmpcnpWZJYo40w08o+Bt2sepMKkqcX9YZJGuj4jOLGU0cHyJC74/4rlF2un
	 LvFGkGQUqkSXqMXcPOka2JyQjt9fZ2Rp2FiziTADYmU298n/8QyFa3Mufea/QkBTJA
	 Ro5EFZGrMwKNp9fxKzBg4USmPQb0Y+0pk49NilciL7u6ayUg7ioP8RmPY2B6h9iISY
	 olruMSDE9uqE+lQoXVbJ6PvsDiEnqCOau4UL/2OWXViUJmoK3JbfOXMb3q7v7cDoN+
	 0oZsebDExoISg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958C7CA0EE6
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175540019357.4378.9995603328241354889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 941618d07b61afc8d27f8dac062b52000babf429dc459ffd0f54b4d74246e4ed
Date: Sun, 17 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755400193
