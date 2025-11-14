Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F6E1BD9C9
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763123994; cv=none; b=eCU59oJqC3YyG99/1Hzs3rji36962K/ldWErYVc5FLAk0eWizD96bKbwEMLBQk6RnHGKVLs006YN0vys2mLo5D1VVgLy8qnWSgJQaEL5dcMsvGqZWLZgM55bsew6dywQhYmZxJ5Ha8Mn1P7PJdP9kdMs1PVlAuyzHObEk4bcABM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763123994; c=relaxed/simple;
	bh=nXGd9JsnullxmrucAahg4mXzFb0wVeTl+7gy5e4riTs=;
	h=To:Subject:From:Message-Id:Date; b=mLrFblq7YYrSNyYXX3J8vCPJwClISYMWG8mbmveDYhqagj1dlDnEZ2OOgbCfXHRzHABhQAffc22nnxpe41J6gDKomyhwMFj1vjXizj1Rqghm91wrolZagh4RQW2PZXA6eZJeYRxgsIqNJ7aZO0zGXAv0oaOL40H6SXGLEGnet0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMKp+y7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMKp+y7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6686C113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763123993;
	bh=nXGd9JsnullxmrucAahg4mXzFb0wVeTl+7gy5e4riTs=;
	h=To:Subject:From:Date:From;
	b=lMKp+y7acAiETuJ2h21cUvnaE4Cvs6LM5VJ1mSbb0o48CpnPwB7PWbjvVnNhOgltA
	 0hElvWWZfwnhJaJlN+0mSjWL5Gau/t/Kvz1XRmevM0aeuNvCsFgws1WDiGX30lGUAI
	 IdETy6pnGNVfBVSNrqr1C/MAm2l5fIJ4CqrMjxAcfRL1XAcrE552JkSCbTvGbfOyfi
	 o/kRnJk0svFplyu1BxOS3p5uAy403/ueeT01XQD/3uPs8D9XSBC5Y+Hg9jNS1j3jNE
	 AAIS5PGfp3+Zf75eIzzQxMaYPPQmiTX6OJbceRVIRMutkn8xphvEG5KPzsznM7mp9+
	 MoJrjbpDlJUaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96713CE7B01
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176312399359.21301.8203115943910319750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1afd8e091650eb1e15782bfded87174d47c43240d156262928ffd4dc93cc5ab1
Date: Fri, 14 Nov 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763123993
