Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8992C0F6F
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755047994; cv=none; b=hCT0E0QDDqV8uxoE9tLDiX/eAnmKeSRGQgw6eFNC+UeCXMbFXgfDDrnPHjE4JSHLvZ/o1CzAp1AJ8GoLnlWBmZ+G+hO537vKVUitZjEsUaOEwTtuOK6SZAwQSKRjihVQ/uZqS7E60lzp5OHTqlXlwvEJDRG4R/nBytNRheth7So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755047994; c=relaxed/simple;
	bh=9L2V2Wm3fip03MKtO/heO81YNSUxLaCqZnKwK/o8IfI=;
	h=To:Subject:From:Message-Id:Date; b=agd23J4bsiI1siQfFM7nBB2mR3Nb8ZrBBj56CYWPG2vzB707LGTQTrMdAeFN3jG2lhkae2ATHIJRU4u6qMkVVozktf9s4/p6eGCyFn+NHbY2Rgo8M7KmHwas1ZgZhJINsXHqlUnC1M4z8yJO8S5YW5MUSuh5z/hnZDeK09LkcfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaG381jG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaG381jG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD297C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755047993;
	bh=9L2V2Wm3fip03MKtO/heO81YNSUxLaCqZnKwK/o8IfI=;
	h=To:Subject:From:Date:From;
	b=EaG381jGFUGVPVQN7dUFyoZsW02HObAW6jKYA8XuIdTrdw5umBqpX+b6fe48ReP3I
	 Y4ZyFdc8AqNnMhJrYhqPSeUvV/WIAMhslArqAu9CccQuTIvuzVPstVZvqSGzhwF6Nl
	 BCaCXWqBPCEwz4HEY7sK2mBR4/01Afhb2kdZoK50/CIkwHIKjjtoJZWSW54j+m7+H+
	 X9HnM4JeAn00rWPdNsc0kmjOFd7w+0GAdUvBt7pB6HTniHjU576cm8lUx1JpEKEi+f
	 LkRgQofAtb2dyElRRtlSB0lOr9WIMW43/M0CpESTZ5exVh45bWnf3rNa35jKTO2hLk
	 yHfsZtvq+wtIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979E5CA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175504799358.20307.18215157451683799681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dbf1a2dc7684df2f00d0bf36ea94c9d643206c7e4f0107c25915c846d5f1417
Date: Wed, 13 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755047993
