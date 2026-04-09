Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AD72472A6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775759254; cv=none; b=Lf11tzbiBDvanLwHML7B7UEx9sH1bWm8K6n5rOUvN7cOO+XJsxVqXmVoxdIedzVjtKhQp/z4tlA0u6phq8dGtOm68Hj7MzpKP+xDN/EiK86NpMR16IbZ9ZW9UAVumFZBnVwxOzFzsjcfdNYk192RdsgDmYG+iZ6I325SThY/inA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775759254; c=relaxed/simple;
	bh=Ap1M9ML2ErbgY68iJBqEFoHeJnsB6QB+qugFaiVxH6k=;
	h=To:Subject:From:Message-Id:Date; b=AMfOL5xFhkxUWb/ciDDMWRZmYAHVjdQkINqf427WZeT7/KolHrop0o+ydaf8xk8NJ3Cme/UdTSlWJlAKIoRSrM44L5ClsQUQAJiABUBGjnCAdEAYf9ynBrBgstDlynptW65w6EqgEebsnQeT+aKsdNCVByC5P6tKKCvHFntloTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dku5t/3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dku5t/3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE57C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775759253;
	bh=Ap1M9ML2ErbgY68iJBqEFoHeJnsB6QB+qugFaiVxH6k=;
	h=To:Subject:From:Date:From;
	b=Dku5t/3GFTxnYBOdhSOj/EkLKQ6fT30zEg80Fs12ca/DLDTbKpv10NEIDXCvs9ei1
	 nozx6MnRjSRxM8NzJ1z1XgLhwrg/xjYrWOwO4HXk9CUtZX1aQLhoTrdtg1bZlAWEeP
	 SNLyzBZaSwUysNci7anx4gxHxGT/96XMCW2sOtGHIgpL5/cflcfylbfNiL0dNTLKmI
	 /zB9WdtwockaBfUUM/rKT/4WJaziY/gn5jptze4EDUDbc9GWzmRVYpk1CYE3UWUXeL
	 G4qjGdKF8dKQxo6kVckuiOR5IwhBVqgLQlPpLXYWm00bckSFGb6ksNXE3vgYgUwqwW
	 +b8lQhT2CFo4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD5EF364AF
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177575925369.16597.8386188606316026436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eb4d1b76017f5916f2d8d6d183c85ba7146b4931c79642f1eecd5b2d68b384a
Date: Thu, 09 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775759253
