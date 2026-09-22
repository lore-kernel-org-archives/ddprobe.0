Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68EA653D9D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790079034; cv=none; b=qeWELnzNT71FNZi2oTkz3EIYg08dCEFes0EcNMqMHl1A4nxNxqrHXmw8vhn8RrquNQBuKmW8z4qjnjAHPhpFpSSiZAnHhYuvZFkzsjkQqQ5FNedgVIItZx6e1RsKAVszmWmNgAjp4MYo4k/eXbka+3qxwWs+DKOdseLsM10u6eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790079034; c=relaxed/simple;
	bh=peMY18lmVHARZuEC9THnLc5N4LQyWNmCMY+7Con3Tq4=;
	h=To:Subject:From:Message-Id:Date; b=ZgxqdPWu0gC/aaehhLHh2YLzoKRZ8BabQCNVG2mnK9GDR/beWw9ZrCWREP3BciNaylmUGF7gPcbu8DQHYmiImW1EFqQIe8goL9BHpBoPPQWrCXVQ3Ag7iTYTGY/ZyXO7lUKQaFg40RLjJj+M4z45SOmNf7oIvfeIXV4c8+zYQvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osltJhB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osltJhB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0586C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790079033;
	bh=peMY18lmVHARZuEC9THnLc5N4LQyWNmCMY+7Con3Tq4=;
	h=To:Subject:From:Date:From;
	b=osltJhB7unPSI9/RQup8kYCLKUQPqtysihu9zFCET7FTbZ3xvFG1dgc8GN8b/jeoO
	 owWjAdt0C9Fv+OvMefEf+ZzqlqhEqzftwUBMYFSKWDOq+8Z2YvyAvxvjynErQ7Dc6z
	 AHsuE3+huHLwqZTNKbFEmFpOqj+JByV8F6MCt4mosyAmi8pS2PFdccQsvCDctLgY2b
	 d6XMexEyADgG0C5dkCyHJkfgvSJgFmtaj4zDlDQ3Em1BAqacZqj6OjiNonmKv6Z427
	 59euK2VuiErPVat5fh4lfTW83klGp/KkJEZABN/Cg4nQuGxopn30fnsacRgFHA36Ho
	 T171xaEH/YalQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0B2C982FF
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179007903369.14142.2243941549940674816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb2ba982809bfd836c38d958325bbc7475080061fc6382cbe91151981e841af
Date: Tue, 22 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790079033
