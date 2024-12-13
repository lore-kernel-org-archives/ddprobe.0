Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282B6610C
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734050154; cv=none; b=LDMu4eE9uT/TAk3l7x5cTlRWfipll8xbUa1txXS5xFcZfngzEEjbQmxwlwVRXrbq38wDTZ6/P7tVJ/IbJ0O/oN0VweEWUKA7U9Quc3Oly7VVx443y7uQwT1+e64uMZQI6xGzcRwBpbG38DgoRLzGZSthQaPudlsEohHvxyXK65o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734050154; c=relaxed/simple;
	bh=xGypNNMqxUBp3akL1ayULLn4WSzjpAgBvI3by3keiFg=;
	h=To:Subject:From:Message-Id:Date; b=PjeKzNe9r99wHnEBji2JSH2O2eM99rY6Xcw48zehNIf+T7dT7QVTwoJiXs2EVpLFHxNZFGwsKcjEvBAp7K7OoauV0EExDc582pDTGC6wewl6pg52McJKBqAh1OLrTZP3F3e2zAC/AdHHL2nzFy6Bljw+ndHzPIuBDeVkk5qFDsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sj9jSHA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sj9jSHA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D78C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734050153;
	bh=xGypNNMqxUBp3akL1ayULLn4WSzjpAgBvI3by3keiFg=;
	h=To:Subject:From:Date:From;
	b=Sj9jSHA7+XwEVGU6L8vPERic+GeuZJNYPyyhIvcn2C6zuSY8xCxi+sV5FXNhQIl/m
	 pdOE+zW3uYKELOk37Q2qZQ9lk3kXcXz2FoNcBq+G8gmZQPZlEYN3SQClUabwaRKO+P
	 dNHQHuNalAI7wwvDHDPP9DscWk8q0eyw1uSz44xIvhfVhwRXSIvAGw7rzimHcK1LRw
	 TTCsBjqwb5Ni9Fxzjv9+ZNPn7Lo8Ppx5CQXmssCITAz4XeDqlpd8N5tjc3JZdy+2uX
	 eGGUqZlHEwFsMdR/ZhIEAcDMzolr2S/DRNqQJm5fJrwM8O1t6OVFUxyjTa0BMmjP0l
	 XyyowziiedJRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9293FE7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173405015359.31371.11604874168616569392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f5012e84dfcae26a8c31394a1a71df68068e4940e1a09ce058817eb558efe0c
Date: Fri, 13 Dec 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734050153
