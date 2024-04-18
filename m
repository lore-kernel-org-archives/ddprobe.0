Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B54625570
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 02:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713406163; cv=none; b=fTWa3PG30u1gp64finj9fAiGnfIcHhnMQy+APh6GtiXSPTvQXqitwR2N6cvLfOOhxP8h+b4GuLerDQczEm1CbXYk9zvkNvAuBjZ2t3tNsURjZEtfnI7JN9LlT0U2AIl9zhVBU7ejB19TEfH7ZBburjIkt++3ylPj9uB92ByBNXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713406163; c=relaxed/simple;
	bh=tS+o8eJzuu92y8xb/J8pDPwe4Bwjnt6fzhVU0ZR/Hr0=;
	h=To:Subject:From:Message-Id:Date; b=pwwvL1GHFPJtS70CJIn/LLSokmeufh3mX08sfMqrS9zFdTQfTc7EYpSexBhwefs8MDIRRJ/x2NQ/3Buy+DSxXbDK9bg3aD3FhlD4mZA+LaG3tv2KPsM/KeZCrFT5irNGNwQtJ1fvcQOzmdWnpMtCLJMcYpUOP6yUUCnOaMPssEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+PMfzKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+PMfzKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D054CC072AA
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 02:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713406162;
	bh=tS+o8eJzuu92y8xb/J8pDPwe4Bwjnt6fzhVU0ZR/Hr0=;
	h=To:Subject:From:Date:From;
	b=R+PMfzKQXbrGJld4ivBlzwhtGzWzwDIWuUxXhO4sBVNR9tn546xW1KadrWqLH33BH
	 V5ppdFglmu6EJL162BBbU+lK61SPggdWlcCrtKgdiF/UoRkOWw9EraToc7eINzfa9G
	 0qbVL+S5hOXIUqvbE5Fy+YfX8ojU49ntOvWyuEbHPfH+6T+I4vMkuSzgHJudzZ+Ybf
	 Q3XFQwyLc3QVCceICdb5efHclE7IKGPZqh4gPdF+vmAmMbxdC7pMB8JWgJwAGiEyHZ
	 wT+iUuo7o5IbfDGjax6sY5f1fU5KWf3ZKpLNRlyeIHAuJW1qUY0Iw7mQGzkZlnG1n8
	 SxK6IQ3SZWyVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC412C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 02:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171340616276.24832.8978758083676868699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b237d4c125cf05ec2bb09b3710e69ed604c9b26c9d21b020f7ef46d94bc151d
Date: Thu, 18 Apr 2024 02:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713406162
