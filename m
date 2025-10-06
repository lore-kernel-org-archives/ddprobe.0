Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D15B2D7802
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759765194; cv=none; b=f2sWON8xmsQSQO7EAa+Y5L3nMi1dd4xqn1l/N760IimP2ePgeP4VHfC7J/OjpK3XGTWhpvDl5KvQAu0qr5z1ROiz4RXb91EiJsIRHDEKfFNkv6MUGC9dc2Dq81o1xmn8wq0039uyvHe/VODxQtYnSWUyHg8y7cH5TEj2hySJlbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759765194; c=relaxed/simple;
	bh=/v91uD0Zpud8vmrZCt81ouhrJgiMYTBf2B4uiYFFtoc=;
	h=To:Subject:From:Message-Id:Date; b=n6ulqe4vvZ/Jv3cXj6NEzea7pGbWeLgu1I4KhS3G5bLI8h9YozGfsYmBWXr9DbzsWHtYpUnMXA9duk3WBuwH/DHcl0K3zrQ+/L+hIOEwLoDBaz4SZcYWm62gxqjKXejF4Atlylz6O2WULx9iKYbSQMSawwMTcOFHSM0zJ+P6Hus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNNm6J2P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNNm6J2P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1134C113D0
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759765193;
	bh=/v91uD0Zpud8vmrZCt81ouhrJgiMYTBf2B4uiYFFtoc=;
	h=To:Subject:From:Date:From;
	b=YNNm6J2PCNf/0vYN5qkajfP5ck5HeKKPlZHoyaCGHsQvIimXC4XjNu5CaAqLA2D/2
	 bwG9tWnQ/Keibf7Zk5/xnlzLtZgm37QeyPx0QSUTw3cQUqkt/irZ3xWgKFyONXG6i1
	 pqaC/H0owlFltriaziBykdSMyBGqeXEb19JYvVOlMU6EU5x8b3zn/g7R7YdIR3bY+X
	 KLJA4VbNeFeGbrmmHJ082jR7s0ugRbLARMBY1WjViaoaFkyi6Wn6uu/7VNKN7ILe8J
	 UcdOIBFKe5PfNnaODIUSAnOMclSQyPS10N+2IyFM4YZ4dkd3EjQPTwse/ukCw1th3/
	 ZCrRKG80ZEieg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA9CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175976519357.28607.12710255562768417835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6d05953b4bb802455fe06393b3c9dc717b7f08944c2f98b8e06320c54484c8
Date: Mon, 06 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759765193
