Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FE33B1B3
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780890874; cv=none; b=KrYHXlyCbgq10bvzVS+U9xmsq3ONh/Ymle68gqqusvJbVCR/TDnMsvSQd77MlNRTELbbIppgleE9IxD64zkETf09K34+Dl6r8rckSC/c3/T+iz2+XvKCgyGTqS9VAzNd4/pBsHZQImBHRIuQcjZXAExro2XKOLDtiVhU+BWKWLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780890874; c=relaxed/simple;
	bh=3q6wXsMaGpHMfhW/QizlvT0y4WYEINYvpekT+jjOriY=;
	h=To:Subject:From:Message-Id:Date; b=KBozJFSMU5UZTH8OFUb4GVNlxfw7QNTzkhH2WjkN5adjRr2rfwy6SayI/wnTRDZ+3mgPCivh9vuFqU9A5mbz8fYs066JdwdBbmll2CvUaBK9BX1DEGKck0782kfbmjydRNQRZAepZ03RzvM41UgKr7NmCjE4szjawGqGda01BvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhQBDrTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhQBDrTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9269C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780890873;
	bh=3q6wXsMaGpHMfhW/QizlvT0y4WYEINYvpekT+jjOriY=;
	h=To:Subject:From:Date:From;
	b=VhQBDrTTbOOGhBBUSccPOU99B+KGmVomNOdZWBQwLfyXLfB7ogXxn2fTCB8af0QPt
	 NRNPOlIrnWumpWnccKqfFnW/RTiuvbEL6ROD/62FKo1+DvaSCfd3Ms83up6JjDrvr2
	 AsWHvfcuoXo1h60b0WKP+9XSAN4Eb64/Q3JAG7o1hKxcKa1cFyxAPf4k39elI7wVn6
	 FB84WNB8BsuDhM3zF8n622PoNgIKB6I9y3K8UmLimm6Fw+zVH7CsqzrQtqNK0z871k
	 P2yK87t6Ka5ARU/R22VLLQIgW+OIN4ZnUSqvFwaa8+uj7MSOaRBvFHZSRt/273B7AA
	 1i8eBvkMaalPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1552CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178089087369.5812.6599826328682173252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36971eaee03e016f7af98d44832b054e9f79a8b092965af23ef53a2c2befbaf8
Date: Mon, 08 Jun 2026 03:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780890873
