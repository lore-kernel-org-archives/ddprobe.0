Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180FD16D4E6
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729287954; cv=none; b=dCnYFTMYplQtDgxuf5skiXOATo4OWHZU8S0OWAuFk+HeZ8t2WLb2lJ+fY3+/NlL4JbYcDqm9oxjT7l8TJNV4OS6ZmNHYhjUIjifmlJMaENi0h9BS1CYmYna0qIVWvEWvbUUL/t5Zn6fXHAjZSni4WV5bCG8GFZiVank+WgyV4OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729287954; c=relaxed/simple;
	bh=llR/SZeNX9LOO+6CynQlUCo/VNlX1hO3ls/h9D7nKeA=;
	h=To:Subject:From:Message-Id:Date; b=kXhddBUOWE/lUqBCmseiq2sG7by+K1iBVSkoVN7TBNuUNY9k9ZSObtmCX3nViwOPzQlhZZkTgHIpd/nGL12gphwYGYp4xOcyzcIZguYelIHJot7dKwQI/T73to5dxvrjnamiATsmtwRICYj0q9B4WUjn52JAhmc0Vv2iiFTNlf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cf41lNxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cf41lNxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8013C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729287953;
	bh=llR/SZeNX9LOO+6CynQlUCo/VNlX1hO3ls/h9D7nKeA=;
	h=To:Subject:From:Date:From;
	b=cf41lNxJx4fqH6KvN/5bl1lCGL+A64QJ28zwsGQC7WuLH7QVLDrXuH9uI5531B8c1
	 +GT6C6srxkjY8U+XM2xd6bDMBpWHFrdpLCICPpJpX2WoIuc62TU7Vy4TPzGV6gJGWh
	 RFO1scVimQMd9X9y8eobsX0jlK748mrYQuDq+gH6QWeGNB8Q7sCjc+gRqsQvAIGd0S
	 0hcXQ7XzaEK0CkaFOuHwLCBjdidfGwxu4jMCcyFJhGsj8L5BA2ojSsd3uXBWV8bnay
	 GGddOEg7hmY9+8zXuDFwQGAyF/Ruxa6QGClevBdtytox9PfZJhe3NipmKCm5Y7kuDl
	 F00XiVDS2h4kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96754D3F29E
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172928795360.12939.2225558908235738009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 069eeaddb512387be1646df656b7b238ed25b45745e1c1e0ccba928c2cf4aa48
Date: Fri, 18 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729287953
