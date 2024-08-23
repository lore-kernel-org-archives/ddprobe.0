Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293991EA73
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724438754; cv=none; b=dW5tQDqLo81sx5khtDE9DK5leSd7LmaFX7JTQNCU+Xnq84yw1w4fyP9CZqdRAWTdvj3K2YDFi9vPVYtK17c8scvWLmbcT2cYKjvXumizGe/oeDsB1MU7eo5/2WkVQEXom4/hP7F7fZGbTtFvq7mHAayS9DmcRGfDbTUrFlYLM6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724438754; c=relaxed/simple;
	bh=Wa6sl/lobq5l+ctAO3wMTy7jyiS64v/lhhWURXLwe4I=;
	h=To:Subject:From:Message-Id:Date; b=h/ZfsvcH08YtsTUSRX7fMNsg0ZD7RSRE/w089jmlgYC85moGcXjW9lWTW2pmPZ/DEAKrARXOYwIODl4CY11WwYQ9IwbZ6j+AGWgX1mp2quRr4obYyXNYq+8c2zjvyPswuJ4VgwYCTDCLxESnuuie/gcTBzzLG9DQYcVcY431qws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrTbmxZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrTbmxZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF14C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724438753;
	bh=Wa6sl/lobq5l+ctAO3wMTy7jyiS64v/lhhWURXLwe4I=;
	h=To:Subject:From:Date:From;
	b=WrTbmxZRVBCF+2RfyvCEXXiXbRjMV5MJ9aqrZY91KHWVB0nuNrQjsAmkeXIXzYDh4
	 PfF4/8bxq4KJELYQqCPXkqiTUxwKZZfaiyVIXn40Ltf5Aekks6XSv4wEg5HfTla/+M
	 Nuqerz4R1uY5u9ZRi0wBRXMQzF3GyFyAzSDg8kH5YnEA2zBBcOyhtSw1xwvX8eqPkp
	 Yb6LJXTlri1oZYFZz+cETtIObXoMQuVAH6u4l60CVaQmmhOAzczfa9q/2o13IOIaCV
	 2ysPGNiT2mAsqRxesqp7Ki/ZGr3SZqpqip7xS8jpLyjNh2P0MAcKcOOAYR7Spufha5
	 UXHUR/N6dA4iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D06C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172443875360.19036.12308146846182485886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfb8bdb3b302161f6a380e1017963d20df340406d46a65be4af7cda3774007b6
Date: Fri, 23 Aug 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724438753
