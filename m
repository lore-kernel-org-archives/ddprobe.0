Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145B21DE2C2
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755322194; cv=none; b=KaPzXTD2uPxji7HTcU6o8E8+aVTAESlJONCO9oAF1FOjFyMTNZOYK+RYUOqSwovars1qhTqeLBmm6+VCA9m7FSRknd1iDkCR2SJrnKmOQwCVDGaq+aJafWY9YlSl4vHjGX1LzBJobqAQ0arT493Ij6+1322wqS0tVKZ++uXic08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755322194; c=relaxed/simple;
	bh=JdFnvUshfhQfnly0Q7s/EB16h7AMnBlvllog6s41C1M=;
	h=To:Subject:From:Message-Id:Date; b=N+3gLdLqK4pQi7dej3FCo7+SUBgzBRK2msWAe/sV1EnFuwCOZHan8PlucTeUf/CRfcZeOl1a34i8ePkoO36O/P/fPPAx9hobNI7kbGxy9xZ+LyUr6y/luSVJ9M3l1ubwL2stHN29tHH0WTJgxOThgOw+6VvG7b4U0AH0lbt4uIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jg+SMLjN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jg+SMLjN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C6EC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755322193;
	bh=JdFnvUshfhQfnly0Q7s/EB16h7AMnBlvllog6s41C1M=;
	h=To:Subject:From:Date:From;
	b=Jg+SMLjN33RMEnEpIyTv4xMLzkGYhPG5ZUufqOBkyfiedMplCk7QVrb5UJdGspaWT
	 tKB9rAc4NDzW+8V1XNpV9ObAaMEXLXirr/ARbPzykpV8FFBGxb9iqUnjSWPVAunezN
	 TYkZevvEc/niOQ3EQByaCe2vJpUBHa6ntkFYuNamnYCpoM7ZozRIzX6gPZYBoONWuF
	 ZsVWSSeBKX2vYyJTYPn5nvz9EJ23cgKKwtwOANKjvtfWKeBtxzPi0Mivg8ajPjfhqp
	 uGFxjCMqs/JevxkpNz1czdmyDiRtaDGZDYLZ1dadId+5o1Ij9rLUJ9Iag3e33SpLuA
	 IghXDhYoGb8zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9201FCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175532219357.21837.5647469821495413347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 953fabc531501cb05adc8368e588784e59d8e3694b6a35c8670f7c7b908dfbde
Date: Sat, 16 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755322193
