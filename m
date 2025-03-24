Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7122E3392
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742794794; cv=none; b=DqD5993OVlL5O+wtPqnUvFe7KRiyjeYnczidntHSty485/eolmo8XCmZIVQGRLICmSzePieYfBSeXazxJgf5+bEw960Yo+uJNMLqDdOgYtN6RgUs7jXlq0ijceJWxFHAQMXBUmKKQ/PzUV4U+O5A3+26n/+a8j7XuZg+9vSxUS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742794794; c=relaxed/simple;
	bh=l3SpBqhUiakxlwZ0GKW9cOHDFEYubOyxK1vqZIM0GEk=;
	h=To:Subject:From:Message-Id:Date; b=J4dJQa3y/BjMurMjYKigJQtiIsMuUKzQZ4YioWh0eAdQi8XlWxCLCthkRG8skr5GoHg+sc+qelTj64oR1KbxOjNvTHNkSoCyZaJPeJNFyOzFYHX1+33o/UXkjPIn16dRklqB7/AgOVR7fRKmoyxzUFPilnEQe+KBmCc0rCspnsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBJznnAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBJznnAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F8FC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742794793;
	bh=l3SpBqhUiakxlwZ0GKW9cOHDFEYubOyxK1vqZIM0GEk=;
	h=To:Subject:From:Date:From;
	b=RBJznnAAJnvDqfIHnm6Jmdj0bcfdD1O2gaRoesFPWHhTm9lvonJQJxhFUAYSvDV5h
	 RzdetRqpgDDP57lLwSAcyejfJtyN0jVQxnCTc25hgCwPuTVlsFqUBafgmcuG6GdfMG
	 TLN+w2nJqVveb+Rye8Glraxc/zSG//QGp0IEXkU67AKQJt5JdzKVkJZlSbtn8znWGA
	 deRUOTNcInviCD30Rydz7KS6b09shlm0wpYPCDYD592lJLQIftgYOXI2JQNXz405o2
	 ZkDOivxlFtV7YucSfJ5qyYaImWJwVdDXaRl00C+c+9sCjDi3hnUAHxCBwCdYabWnqq
	 umcwKksQcCkvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF21C36001
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174279479358.31146.192835122549638697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ac4af8a5c71a832db240cc014ea043eb65214fe8fb6143ae7b0469c2d5b707
Date: Mon, 24 Mar 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742794793
