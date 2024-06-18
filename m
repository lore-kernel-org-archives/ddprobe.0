Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 805DD205B0F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718704163; cv=none; b=muAFV3Rst3USUswmWkAPAo6JS71S6C8617C/EZU827huXYKOFUEllrg3eECEaDUYRvMvJeB6ECbOwaWUkTCdcUZ7lT4ymv3282klxVrttgNgKGiS9HLuHTPBGb75XlC75uFfq7WsdjMthvRy77m4SM61LRCogz+y68h/+YwvD7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718704163; c=relaxed/simple;
	bh=1vyUoEK//dVn8PdatUvgGQwn3JS74JP/4J9kfhpf5qQ=;
	h=To:Subject:From:Message-Id:Date; b=iHr0VJp5QQecZEHyaHZ5AURy/CAn2/l5iuuz3f60vctjzdfd16YSpEzDZYg4KhUIaQA2+2NmN4EjaF+8d9rrg9d6NgAgHXCoKbj/SWOFyOkpFswWBn/EnlF/7qKaESUbhY8xEUWRKH+qOjKfetMVLzoLaZwqY2XrIowLFzHDwoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVFOwwqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVFOwwqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 175B4C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718704163;
	bh=1vyUoEK//dVn8PdatUvgGQwn3JS74JP/4J9kfhpf5qQ=;
	h=To:Subject:From:Date:From;
	b=mVFOwwqiDxEUxbjVQNXFGYI6h+nJ4qaQgzGGFRooLQppr+2+LREiNmfLB7tfoLVZN
	 fTiC3+nedoAZHamPraPCLGsW1VKsPScXvD4xKQqKGi2Nz+ABXStw626P8LMPoaxycs
	 8NNdhIg0iGKJlTdZKWrgQr4qQOAUD/m9F0DBpK/BxAW0yFxNImtRo3DoICyYik6eMg
	 J3YlAIjJ4SmQ29Y8f09sdGPIVKJn0zmMSfrVyAwkvNtRMhJXnF87WNh/7sY2a1VHWI
	 RxnvvC9nRHVUTXiGxZ99sQ/RBdaHin5xc5Qr832+wh1qr3d6DxCbce1K0pW6T2FeAZ
	 G/ki2RFYWSUcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7EB9C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171870416286.7907.5670095084913440476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 531d854fd49c4aeca0bf47f864e71887302df08514010c4191874777b10de59b
Date: Tue, 18 Jun 2024 09:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718704162
