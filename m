Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22C61756D
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709573297; cv=none; b=geOhiYuCyptyq41roRTGW5xWsSdd8sJRW2fcWUWXBSAEx/bMj6a2Nzol2MpnJ0XerMGXxE/tdfaX9BDIVgz/1qKGcjWyQkNIbDwCXixditWRVAqk4I1oO/Nw1Zu430kJ69X+LGYbqP2fNSge1AB6QBqB/9fVy97Qt+FTngRmS1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709573297; c=relaxed/simple;
	bh=mYp8qn+aMG0u0IIt+JZXGGSVbWF5tUd+LLzp6VcDCSQ=;
	h=To:Subject:From:Message-Id:Date; b=FuIgd4jPOXq+lsdnQ0vLdh1B0kMee3644KvCsD9q5Cgn9xYVaklavT0HzLv2Hj7X274hJm7AdicEr2XDZddD5zLy0qyYakfbBAemjH8DJfgm8/UhWfGRjo+epP2EuYdbdBIhVJgl0kAb0trbGWokOcnAPf1c40cUvpE6DaEgeL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCWXF4E1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCWXF4E1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76799C43390
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709573296;
	bh=mYp8qn+aMG0u0IIt+JZXGGSVbWF5tUd+LLzp6VcDCSQ=;
	h=To:Subject:From:Date:From;
	b=RCWXF4E1mg+OsEo3lAjZwe2t8WN3Djc2AF1BHEQhjYToCHOUgTN2AoLqo362uO5j+
	 qgFrmW/YWsXFioDL/GQ1bW148xvgHnyiwgJAI1cWSopNGjS8D+79TcKX+jThB7rsN5
	 yUkzg3koq+lvw2i6XiiHFSeNYpNg0i4BXVtXrw7hpgutxVbZWmQ+8ZtenJB2MQghPr
	 puGqfAwXVVV8vLMX1392WNyiGnshUNCuH6iwU4s0004X1SWK+H0Tj8/STMQi3WSAL0
	 0oT3P5cENlblQDF5o1zbvp6gX67gt2HBb3EhkoR/khiSXXIM9d89ujywJOXZ1lDJCl
	 hvXcm4zL1Nn7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C1FCC48BF6
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170957329636.1379.9930604701931005343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e286a0429130722f4d3767fff7b69d98c19e6a07b3fe4ad3a4a766e985d670
Date: Mon, 04 Mar 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709573296
