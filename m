Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E903611B
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725134754; cv=none; b=rCe6eDwUMkud//woHodKeiI1APy/oR5Or4HZ2H7ld372ctC/Mgt3cPOQybPU1muXFus4sFDwlqv+gKxdtbikHH8YnVuraecIPcGjqTmavwDtNuR03Oy6JRjAMz6WF9ZcaSYq/P8WcXBgQ+4hmW/fRckqJSahi4HYyy1LwuVAYRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725134754; c=relaxed/simple;
	bh=g+wMtLdqYpLHGpUqGXvhFKJltQVNkAD6Igl4LjD6how=;
	h=To:Subject:From:Message-Id:Date; b=lmE0vBaSZCU+KxA9XepFcnxYzhyCRsXRr5/WiYScRyrFSwAqoCPBA8iJDdGnmaI/ZaeX1sT6g//Wv79wilzzXuDp23S0khW6kQnM0AzMRFLEsKMvS4zc1tA7oTmcu8Xi7HDHvHI4qgA3Z4Ig1iMyQ0PBDSPwIcxiF2fu7C2c3Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYMW1pfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYMW1pfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DE6C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725134753;
	bh=g+wMtLdqYpLHGpUqGXvhFKJltQVNkAD6Igl4LjD6how=;
	h=To:Subject:From:Date:From;
	b=WYMW1pfjYEYfqbbBjJl/e/9OnliV3+pGSc6BXgMAIFtVNqvt2wu26RItK/Isp35Ti
	 9HBBXj0yoEHybx+pXH+YoU+RrnP5Jbw5V1rA425MB9AzD3unzPBl7DhDmngoDX8vg0
	 UiwcJ2/dUcSvoy8JmS2Gci6ZATfC/t3fVogCDr3bUFJMvEpgG7LHAN6BuzVdGeGS4d
	 m0aSvEU9AJaDlW8vlREj6mdxo8JlAvBcQRoltHzsjpUPsr/ClCjgirF0hwrazDPfC7
	 QdJP8FhmaVA0wXSbCptGrEOozF5R3gm9b+SFGMei5QSaf6eRnpctdpNOlIq5lCTE2g
	 zvImWgOXS+pOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A136DCD13DF
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172513475360.14241.10011724319669232877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57cc41e3215a6954682622996c78a13db74a05480d22db99f87987bbdda3a8d1
Date: Sat, 31 Aug 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725134753
