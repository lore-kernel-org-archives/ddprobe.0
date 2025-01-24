Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D65718A93E
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737759354; cv=none; b=LzA+KItoC9u0TiWytC8/zKeV4nRiV31e4u2o5okYrc3MRXYcIUdpD3TJ9wJlKXlry26FtmmYJU2viHWsf6ulUDUlFn9VQVBJkLREVdCIHY7xVmsvylIE3wZRIFU4rwj3Et7ZHTQ6vAVv2rOmpkb9W2/xQjLFx4V+w9ac/q87+nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737759354; c=relaxed/simple;
	bh=ytoqFcCziLXvzffdlwAt5KPizJl3L6ghQsllNUR826I=;
	h=To:Subject:From:Message-Id:Date; b=CpuwgMuEH7OVO7WiAl6ngJAmZNavMDfTOUX8umzhsxEb3PA9NQ+B6XwaM5IbJQnyuAWSUGWEbnORYZOA3OibMhNqS7rab71aOcipP2Zk9e81EpsGF9zdG4WHQqrLa81Li7GaWd1NQeKjS9taS9tU7cToNlDu+qAs2cV8RbdmWiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUqsbqA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUqsbqA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEF7C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737759353;
	bh=ytoqFcCziLXvzffdlwAt5KPizJl3L6ghQsllNUR826I=;
	h=To:Subject:From:Date:From;
	b=fUqsbqA6/PEW91h5Jnep4/G091iqKwpbGlE7+vnyu08SKSxJ9Ga+ihZ+NAvIqcGSC
	 jbErSIAB2ueMKgwCZT5ikgyj2VgewLx74cDToXCx9kmxjph1HIS0ZgsZZMf+1YSXL7
	 Y71kkagmBICbhxqzqimifVo+mc4sJYI46iWqBiX8q90xnitpP08FbyDXPMH3j8hJTS
	 9YZbZHzjPnoxwLq9adCdCXDAYwd6WCE4kkBCNvLSW4dmr/fjdPYn+8q03bWYE2DUAR
	 dwPopt8Q0M2fJiWray8WIfYtAlPau3M7QbjENFinH/Xy+tzw60FjybPjcGazBwIoPH
	 +lrGtYTUZIBxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90447C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173775935358.9600.14308122125891741494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e686c4b72e5512b80ab8b66b1e99422f08231024d20460b9a67869f5c4461a
Date: Fri, 24 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737759353
