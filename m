Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1612F33AD9E
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769750034; cv=none; b=fTZ25X8zF5qBhhKDj6Rj1nH2be6UbisHgKuqLotCuRNqzZdU6IP1BATyJa+s3eqvx2NmueM46YED2db4n6L6jq64UyelM1BRVg27cvPwZnIBRRFmRLKJTMqTyfvoaUQQ+EXYWVVj197qYC2Ix3pNkwVuvFLXbxx65MEZJTnJVlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769750034; c=relaxed/simple;
	bh=hh+vUIUO1P8wSZuq9fyJy5NInK9CJ7HXmErRMayK5o8=;
	h=To:Subject:From:Message-Id:Date; b=X1E+7VUgwsqS7S5WM0MqUEyuxt9Js6yr3LMGnGblJHrC5TOq+3KhM4UUyfAu/M5Sqrl6ATia2k+9DvrpGkHO+wQ+5lqhA/seGsdTO4SJQuclHadh6hOX3TiAD6EA2+cYp6wZiKa09hPWzubc5PEAdGBz1ZgQYaYf9NEwhoKOjfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fa86D15/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fa86D15/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD29DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769750033;
	bh=hh+vUIUO1P8wSZuq9fyJy5NInK9CJ7HXmErRMayK5o8=;
	h=To:Subject:From:Date:From;
	b=fa86D15/Yczbc1ARtOYTNsZkemJhgcq4TZfmVRTNAQ76dYS08b5yZ+zrTSxV4rWc0
	 tDJP80ifcyTXMQxmZmOzycxHzZxtbc832Be0OsIar8ImlaFB95DLzZMUdJANY+g3/k
	 GW1Hdiyg2JHsqhmHMZ/2tvgIr2dMHe0mnt2UHwhX6KeGSRF2WWwmFfEIWNks3AwieE
	 aNJBg7AH9K0E5MrYClq08AVQstuj4WObNZ3w7olz/Rp9Ce/rDdF8ai5TonkSF9sEYi
	 c1497Vn12EHSQTmwT/PnAb1sY6FvZXoaPtmOeJ8VBLkL8SJhWwT6PO9RzcijjbqKN2
	 78Pb6r2oDusMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9642BD73EB8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176975003359.31829.14003335830356276653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a063172c3d050665f52a29acf093b8eed038c86bac4db83c1265843ce651e49
Date: Fri, 30 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769750033
