Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90F21D5141
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772766293; cv=none; b=SPsjhC1XDrKAICFk8CzrpEbiFZx9elff+pb5FEtaOH1sdKshrtqDT97s3WNKmkBO81zPHYXjHj0vJrr2L8Zvu4rx13C+LrCd+NeqBlR1mX4afZqqKEcENv7UTbXiiXJ47kRHBiEtGp+drX30CG5fUqFq0OkWBGlVzLMbBWDVToc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772766293; c=relaxed/simple;
	bh=/IzJPsGqt+3A51kCBKUlWYp98K2OU9CAxEYeneUCNS8=;
	h=To:Subject:From:Message-Id:Date; b=M6LnK3TbAQoa3XIimgK7c7rD6vBzg06r8HL3hd2/w00bciUdJIUP3cIcSDaexSq4M3JWRo4iP39GAbVEcd37Wnl7j7zCf9wgnXpqV0dLdsOZppvDyYh3hGqGCiZ2u6NTDFVp0reORooEWIQLvo442iw6spKYmvNwESrUhzDjtXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aum5TG9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aum5TG9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7859C2BC87
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772766293;
	bh=/IzJPsGqt+3A51kCBKUlWYp98K2OU9CAxEYeneUCNS8=;
	h=To:Subject:From:Date:From;
	b=Aum5TG9ScAWtPzAYXmvqb28ek+FhWlXE5HHsSMOkHwBfGLy/ytD92z7PRUqWI/WaB
	 6vKgtw3dGC/f0SoU8e2HjPN8EKv/u3HfYlUSgjQEiKmX3aSKoGUAUFZxfIRM7Z68u6
	 X0p2bhCAAkDm0AmzdpEXTuak7bHNTjDBytbFVOphaoDIPZ5CXFIsyyMmBuV3gujoOE
	 gFDA1tkhw3BpMvwi5HWxKjxSkXbcaxrgr38aDQs2Uj0gcHI0Jb9FIJNqAZmbKNc9SR
	 8KiTu2b5XxJ9+RPyZBmny7hCIgR8YQqOqi6nLnuD+3UBhRbQUKTEh75OfZ/el6N1B6
	 Tx2nJ7rsvI7Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91266F513E9
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177276629358.2094.6677400830239686032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f6dd73d7e3a5282d9bb91419f0b92d7d8844889d6f748d99f57b44484dbf11
Date: Fri, 06 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772766293
