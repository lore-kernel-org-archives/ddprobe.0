Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC9B21D3D6
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772853894; cv=none; b=nAdyTymKiwZ+77txIJGNs4pJWj95pAwv8JhVktclvlz0EWiDJTzvFeCdiQrsKxImL4RJvQHdphA9BWaTaqu5mS7jIvROQYtKa50Vm4RYL21BItnvHbPcXk3I7GbfvnB6yZgcJAzkykl0pgWcdL78UFi76xUcjABQx+Y6vN4D7Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772853894; c=relaxed/simple;
	bh=tZkebc9fZgfYDUtRToWJZJWP554PairwTawio3uiID0=;
	h=To:Subject:From:Message-Id:Date; b=JuEUnJfkM01dfTFugOixQCdEgHH1s1B4BKdHXIcBwr/pFKin++HVYxZTxxobRyhQus2Md7TNDsX22AOx2RZBOUqb0iEAc3A3L9TZz/pkdr4lTO6hcWHZL0pCuAbs39IfD4MaVCtrFwIe3cCZAJ2DfZMBjNC8qMk6SBrBrIfoYQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfkmNUX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfkmNUX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6DAC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772853893;
	bh=tZkebc9fZgfYDUtRToWJZJWP554PairwTawio3uiID0=;
	h=To:Subject:From:Date:From;
	b=OfkmNUX7PucJJlwaAwWWugodztFGCKc5lteQ56Q9ObLq4SnY9AcnfkDkDzXzprtZ9
	 XlW4U8v3dcB1CVzdrm9cliwysqBeu3rTyUc1XF4nVUbGRwZDLbY3uurdwqaj4U5/sr
	 0zk3jAdGeXXk1yujAXnCES2pWqSMYZFMj4hhivOA9qJA2UQM230t4TXJtAOZUeEBCn
	 /ibtE16vYaWT4ZcYwJjBKkaR9eS2o5kAevPbdwauattupmQR38ryM4K42il+J18dkr
	 OdIIFB0bgLxYzz6Yed9R4VzK5g1aWRVhT0vg+wuenayRtj+5W/Zg+OyajptxWyBRwY
	 Ax+UVmESuBGYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC46FC9EC3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177285389357.21477.5631332548647977374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c20fde017149289a20a49ac7b4953b995f2cc8f76f681ceb0bb6ca042dcc863a
Date: Sat, 07 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772853893
