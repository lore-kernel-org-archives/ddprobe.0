Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39538D528
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754887794; cv=none; b=IGGgaDAbAOU010qXRer3/9xZv15n2Dxbgj/bOryG2gRQ1lvHhTEvHnY9tX+VyMN39kg5/Y24vNF98JcENAOhYNdoU9VKjHxNdqGDekPRTjtBnYUJ18itW3yAV2HfHoYc/JUeBMgYK2xxKbCyDre90IZ/6GmIapzrsfHsebGdPkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754887794; c=relaxed/simple;
	bh=y6ozXw1bdC2kLByACSEmNQO1uupTEZENAhLdaGbNMZw=;
	h=To:Subject:From:Message-Id:Date; b=TRq/Z5RO5t4jPgSC2GlX6/rZ95c2pLF2y+chZygmBwHjj7lXGkdvZVMluxKAIViinEnFWiVZ7PuXzj3w4/Jqav4jTitN+vSV3PagYeUWgcbhNFb+TupLezEtn+N+I2SU748peFeD9TnTHWqAp4v0eJp/v8nIConoyKp9HBV4Ti0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKpQHQTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKpQHQTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62C6C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754887793;
	bh=y6ozXw1bdC2kLByACSEmNQO1uupTEZENAhLdaGbNMZw=;
	h=To:Subject:From:Date:From;
	b=MKpQHQTI29Z1ZGOPF972ROMFBhXDc0giJkWT3SAamoZq4DEVWQKnAVGVEewMv3Dj5
	 qV8gJXR0RKPCrF505gBT7IIFoilu9z07XQUTPdNQfJxV5Fcuw77rw7Hyq8RJKaKazS
	 37bzqSuinm9uBaqFm+Sxi07cpTZP58SU46QCpWj+X+9xxs4f8p8E263U+tMexK0WS9
	 ZtA/OKgikYNgIu9osfCoYz5jdGGGt9Co88WzARSe64RoQfuqfo8hK1e5FayB8OuFmV
	 GsrDTgs4Wt6+DqR8ECIobjUpe3Jr/fVrUPjnE7JqMox+rA7fC4ZmS4aYaz4xQfUi51
	 JlPdSLkEZYNrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A9CC87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175488779357.16705.17462986780169852815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3bb1cad0737ef93cda30233dadaf69f1bec9312506b880bd2ca79baeccc335d
Date: Mon, 11 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754887793
