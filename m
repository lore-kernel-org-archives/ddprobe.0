Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 850E747ACE1
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787305835; cv=none; b=dshTzpsJN/D7uReUNPjeUEQj1XFJ2YlH7KdQ2yGnCNccGUDCjMBajP5kdIZ3dNOeeCT0YAK//vPH5CYCD6wlRdfAzcS/MgMlu8UbqtDcyveZZeQL3njFIvMxBrJxW1oKhbiaizG3ZILzY78fKceA000gRNMlVUW4DxHAq+MMqIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787305835; c=relaxed/simple;
	bh=CyOscPyWj+KAJpszsFP7wrXChZCOOfoEThhGOupqi7c=;
	h=To:Subject:From:Message-Id:Date; b=euRl8gi2PobSxnv8lmHbf7QWY4uj1q0YcJsG8g7shjv66W+3XZo8LHWr0g1XPVfUUCy0zaTmmwGXRKKVEEPkkqveKhFDltLK1rc8tWyRpaxVCMNvFAzNHvF+cxAbsTza+yaJMnHuH0LKVVIM90/mv633X080Is48oXBpYeBi2gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UO+1HWj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UO+1HWj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13221C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787305834;
	bh=CyOscPyWj+KAJpszsFP7wrXChZCOOfoEThhGOupqi7c=;
	h=To:Subject:From:Date:From;
	b=UO+1HWj11IRiISQz23J0NXZlVuWs4yA6TE5rUCna+/D2cNNMxS4+hQMryyoZTpiVd
	 pFO/rcql8DIHEiRwRZxq/8eVT7ryMCQwLo0sBz2uLe2SopZ+G4jH4d+Jb8LCV3lk3x
	 YS5t7KSc7h1u+APT8cy2Hu9S8J3rHQlJ2Os7jv9eS9OVgQwmvbfDDEcUh8ygaT003h
	 v+Qlr4ZRteI0veN1BNXFiQXKzNBDsD9YQ0ATTccordSIP9fsy0d8qLh+m8cNGa6HnY
	 u/wYuuOmDWNlj40JF6a2wpkumx342df7AsxUKwhdyEAxNWr4wsRGGp4NXTRlOSD4NI
	 q+W5SIH1hgt1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC637C5DF96
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178730583382.8477.8666122558551781510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe47b81d368913961ba7df1e083e1665b3f828740fe9df8e11ee61edfa494139
Date: Fri, 21 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787305833
