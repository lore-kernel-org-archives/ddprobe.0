Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8952D5932
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762576194; cv=none; b=DQZaWx4PSYx6me3hEAfbCDGjHxSb+NgkEvRcMRa9AGf6dCNS5uDcxJ8yyTWSvtyld39BAgOP6YK7RNqtIc2WA3OEgDvHvxIB+ebxAfDveFrZA4Ju4NjiCFrcKIZ/U+5CyTAMWClAR8cb9My8UGdGQSb1ZUKTPcbYeAQGugq4JAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762576194; c=relaxed/simple;
	bh=1XpHzbgc+liFbNQI6gqf3XXQJjCLgIXgjvuTmleb6vY=;
	h=To:Subject:From:Message-Id:Date; b=IO+xIBQCY/BtEyhoNiZBSy1ATM7QxaEvfvTNfW+25hoenkV6zyGYlqkNfn8UJFxSurPJqkD50Xgq4jetJomomThiDbMuFPIK1EN+FC7mWdVXT29W3CJUn4/7+aoTFxsiXPuMPj/bDgYj+2qOX6VlWKR2uPLvCz77Q3Iz/S56//4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GErMJhYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GErMJhYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C05C19423
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762576193;
	bh=1XpHzbgc+liFbNQI6gqf3XXQJjCLgIXgjvuTmleb6vY=;
	h=To:Subject:From:Date:From;
	b=GErMJhYIhICY8NsLh4suRIBiKxgmiB1OnBigp9MiRZ/8E4Eei7auJgWZreQzkDLZj
	 cusn5JP1EMqENNFAb325nEhh4uxT6Oe6Y4GgikL6wmGrLIr4AEp7CJ4C5RSThE+JnN
	 xCx8SPzRkB8TLzatw+yV0V0XRYzUdjuDxVqTmaxHpnW+gVcScV5OY3WCEG+OsaCetI
	 qNKV/3s/Y1V2LssK7ZgoyzaNxXIZAbUFWE461/F7Taf1wlBsBLDIdNAGmRPH6qkYqQ
	 yzHhsfiWD0q9pcJoZ8L7ZgPI+dEg9BkugVHlePjr7w2mq0hMmldOXrJkkIgiHa83jO
	 3CznhvbSDTtuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98391CCFA0D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176257619358.3791.18279544321155171976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d408f9123a9dcb580c41d4452925c2ae8b080eda5d82f99750877ceceaec2ee
Date: Sat, 08 Nov 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762576193
