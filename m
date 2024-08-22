Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308CD166F3D
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724324154; cv=none; b=gBVREk2MCt7VVcdQ5ml/N0n8bE2ZPB+WYtjzsUHlyb2MtiwXgPnslMUSSFbi2EtKTr1NppIComFIMRWglsQq7r5SC9Da7LwNPY8n/VTMtc5Ye4TpKoKfh6/vOfByjadRDQKjEIwswlOBXFUuwYxFwEJe20ODYyW+9hJBi6rIKRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724324154; c=relaxed/simple;
	bh=v6Hy1/hDTk6zQxO1jCxBTGOGnR9Cg8UPRPfjr3mUUm8=;
	h=To:Subject:From:Message-Id:Date; b=XrJlUKh67vjffiJCM6gtK8yG/AlR/0PQRjGxbB4VB2K2HWNWVysvxoCSOw8d14JtGiWtjFMEEwLdFkSMWppES9JibChjhJfTBPu4zhOXXJCj+O51Zy38OAg7nzcuBrCT9BmnyHu+4+4110HgeG4S9MCIPnKYXsZ0ZUwcQanTr/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qolscXHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qolscXHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC91C32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724324153;
	bh=v6Hy1/hDTk6zQxO1jCxBTGOGnR9Cg8UPRPfjr3mUUm8=;
	h=To:Subject:From:Date:From;
	b=qolscXHruuYV/D+t+TA/zpYHXDhCrTYABgYcxAF30EEjphgQfPNF+EfdsvLBWgTLT
	 oplLEcaGQVBF1S6mIdNYfNrXJnBHjSKcCUSvkrNOKrbvARtR7msz45E2xvkg5nmDp6
	 sPZEnDJKvVZIUwYixnPifeshX9xKbKFC/Pkyb7TKdzma+1YY4jAiTJrjUq4iKphQRw
	 f/vPGqtygbjY5KNkFucxSy2rb0W86hy/JpHN9DGn3MODH7kz4iGhdS5iGDeXzTstbi
	 +xkJiPEkTo5Utm5TgXnYb2xfFvz4lP5x+rmDYw1xw5za5t/dGh73uKOfho9IwWm1NO
	 vlNElbkLlFeMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB19C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172432415363.24861.3815382220458239775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d77c59451abf80112bcb1ab412f88ceaa01a74a843899d674800164398bf7efb
Date: Thu, 22 Aug 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724324153
