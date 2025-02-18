Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBD51BC41
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 02:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739844534; cv=none; b=n2LHlaFGxSWSCI28AD/pipl5Q/1KwplueVaf5gvq6uN//XzyL1LPZM303oAvXGj/5AONW0i1U9ExeurKyNIz3VSm62+Jr0L9mzErh+ChRIKBbX8Z3iKHF6NRtKFfbqILyJDdOegLEIml9kDJnI8KbLuhdFznFFq0dn8fVDApTAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739844534; c=relaxed/simple;
	bh=Ki/hfddQafDbzRHTdooAOhssjoPNqGZON7h/RXc2Sho=;
	h=To:Subject:From:Message-Id:Date; b=CCXr5JbNNhgZ0ulQBMHvB0hqDUL/UwXUwwHK+xeaXqTbDTCUkXZVQ7hltN3gNK3OkY5Ze3p+0gV862M2RlOLMeWvGWFXveaQSwFm1cAC6rNle9HZS+8X6IMamQx0Ie9YSdAo8yXUwaMsoZmf3JdKaThaszLKv6kIc38TZWgZNFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofD2rRaS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofD2rRaS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F59C4CED1
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 02:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739844533;
	bh=Ki/hfddQafDbzRHTdooAOhssjoPNqGZON7h/RXc2Sho=;
	h=To:Subject:From:Date:From;
	b=ofD2rRaSLfBox7ch8G0sCqcdigIG8HYnGKVhx4SVDHlrDLyeTq4AseUimgbrYBip6
	 UD8zeNx9NYsrygKkv7LXy5dp9tTZB/0Rls7H4Ovccuaw6IpwT6sAMA8JdLcHjLOS6M
	 HM0jYlYl3Q/zVhDTMNfnrEDMVd6TzuasP4bs3MC43ZAuh7+WkkeB/ngeXXHNvyOxCP
	 01rGcPak3kJ0k8XITgrb3NQx8i3fswX7uDFNMYkTrgF4y6HN66iQoUEAeB8xPOJ5sb
	 26SgguHBqFEDvC4bPAhfrLQ8SEY6S0NNLGI22fkAxdSxHl40XO5GMlq9aRIb2ZQAvS
	 w1+24yTrXFSLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E44C021A9
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 02:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173984453359.17077.15119113115923688785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7885bff9ff967ff4f79e26948d1798efc8fb7fd93bc4fa92527bffbbc001c2d
Date: Tue, 18 Feb 2025 02:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739844533
