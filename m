Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122F32905
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708753697; cv=none; b=d0OGpudtjrxQXgtiA1aVT0cJ4X3I4KYmXmGNSYQ8hJRy3gii3BRTTwoD7Z2dLV3As7GvgPjXg0afyYXPu6YuL2wYMTD6MQjZRONyfTwyTdWmZAl5LHepuq8JaLLH3X9rE7ZvAwI9anEmMMpxn/a97hvedxo/hbGr7EBrWE7ycSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708753697; c=relaxed/simple;
	bh=xcjUgIWJMOPKgkEj2cSdaHdYpKoP4vmNJyqaFwFpS8g=;
	h=To:Subject:From:Message-Id:Date; b=mW6XlLsOHNRYisIkv1vElwnEqTAIfFvomhGI2EV6pC+03Fi7aYQPoZlOReoWF7JI9iVUT7u9z9dVNV6SpdNPjLuwOtBOthYwV53Vcb6lSBAUXezZk27Sg6he/SNmItl9JXJcEzHGeR4punJicGQyb9lEItXTBXC4uRcpEW8rz2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSmdujne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSmdujne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 804B0C433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708753696;
	bh=xcjUgIWJMOPKgkEj2cSdaHdYpKoP4vmNJyqaFwFpS8g=;
	h=To:Subject:From:Date:From;
	b=qSmdujneXBhrdC18sgoJtrd2ipPCgK+sCbezbprdKLFBUpY3GrjfaPx4Fonml+tMR
	 UrCLMRbIF4xKYi9OpeN+YgX35DcsL/IYAPZhvSDRIGqGj2RizdOUelFohlxzINbrsV
	 lE5zJatN00psO9A72cQVRVjaUd9+EtK+k0ZHjowYuirCO22QmZM4yG/ruVq6JRtAI1
	 OqQs+S4KzRRHTKH/inc5C4tkp520NfMDjdLLNMlF8X+OJUE0N4xefX8J7SKhnXawde
	 /n6oMcnd+S7jM5Ba3ND97j19w3siu7V+ODfDr4Hkkx7NqXqKHE2FCGsrDe6O6g7FoO
	 RVUvMDFojBHVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 659CDC48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170875369639.24007.16153500837217160386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f4c4ead48bc5633f47da8a0c8f1bbd30b05a57c4f3df1c148e3cdbe10740b3
Date: Sat, 24 Feb 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708753696
