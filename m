Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA7030F924
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774509894; cv=none; b=O0IcYDqvv3L3DFqIzVMzc+UWFBZDXcPVcTa8itn1uDw6qe2PWX0oMphveI9xocEQKDK+ulQaJ2Vz8aGrLjSXq8pdMvV2OIN1LHrnMkfF5T28L4/9N8HR03pU2+eLOp2LkiQN5TR8eFZ48XmxXBnVc0f0YuPghMfHdSDVv/73pps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774509894; c=relaxed/simple;
	bh=f37ljzM18XzCj6IHTNzyGVx0Ml+6uGudBF3LmaocbXs=;
	h=To:Subject:From:Message-Id:Date; b=Lwf6NUqwTsgSty2WTKbs8o1Oq66wLhtNz/9rDvDqsorKBV1MxkhxTI/4f2IjdJwRkUTo5LbHcZkqXQUVDwRd/VjTzGuuUWETRa04h8E+Wef6RHouTW/x4RFV1EUgeyzqIa9NEkNBRx6Or0JDB+Jmc/raXqQuJM12jLJNKNz2+3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swJiZyc9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swJiZyc9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37B9C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774509893;
	bh=f37ljzM18XzCj6IHTNzyGVx0Ml+6uGudBF3LmaocbXs=;
	h=To:Subject:From:Date:From;
	b=swJiZyc9Nu2YTGOgGUv0fpPyhCIhI8ogPHYdeOqd1dtEXeahHh2WF2WwrpPM3b8EQ
	 Gbt42cCw830SO/z81m2KxQBkzmRVP2SkcFNj8OYc56Cu86DvKmWYts7UQDYf050brk
	 gWSQZNltah60cqZz5J043feSYjozpTq2bs+IeFQ5/Y7DZW+5F6s9na3xu2mKkbD5q7
	 8zi/aI4TWKGh3yhvTfJfWiiMdLJAOM5aMxjZ8I804DbwGxei2ID4CJ8JqQWFFvm2uM
	 DLcCTrG9X+GTjsGSt078nl5UwryfYKZhPoTgoaTXp8ydFaXTIkiPFMu1HC/l8yF0Te
	 Q3KcB+gto1MYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F5E103A9A0
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177450989358.4002.3797331225224075408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4c3493bd422199420c522ab974889edfaf9990585459fabf8ad1aaac63c08d
Date: Thu, 26 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774509893
