Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B627EF
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 02:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712889563; cv=none; b=RuZKxx5XYcz7eA9NLTcf67rm4cMQN+75TRbRmf9+I3UtoSDIVslkpBHktpYmkFPWkxmgCXBGmeFnbGtEf4h+7XQ5sRD6wNYI1C+lEBaXjPvXOo14pJu8TNla2ert+Fs3ESOlSSevUQaOJGNXS9m9GpKUH57pO0xGkGd4tTshDSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712889563; c=relaxed/simple;
	bh=KxLwbjmRoJSfnNXQsj1PYoH0rrAyaLJ2uCs1iVdO3Tc=;
	h=To:Subject:From:Message-Id:Date; b=T5BeQfVK3RL+GZURreLHky1dNi8sduUxAE/aqP1jJ08yRPFQ7R8JbQg17i0vLFCCiPQwpBUtjek4pbv3FHzYqx5CfUOp80tJggqxi05uUYvylnPO64MyA66c9rYbOBwC/Q96+40234IAmTC1INRas131FtHLdoMV25d3cH3YDqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HT2XCesu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HT2XCesu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F3DC072AA
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 02:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712889562;
	bh=KxLwbjmRoJSfnNXQsj1PYoH0rrAyaLJ2uCs1iVdO3Tc=;
	h=To:Subject:From:Date:From;
	b=HT2XCesuzWA/JQe+iSN5L/UCLeDDp2sdI5AOypw5XIbtucd7uopmkYxh7FaFr3KqR
	 DGo0x7k67qVOH6lVqNPDW2TD1yfdzbVI3mbiapdcYjS/vusKT5x+SMX1vHrY+ps/ld
	 Dw2jpfW6qNDuOyWH8TzEtyaCKgQdHp8dO488WL9zHAsuYa3zhv82XFGaSVs/Dxao9f
	 i2efoJjRGwXUAK96d8QIikLyZhO+WcEOxbSZY6T3GFUzQuflu2qpE+OZW7KzfEoPI8
	 JP2fo3+5fecNzaYPwgba2tRksI8PWm7hf8ykekW4AftLdCvzmupVgE1QuBP+0mw1Im
	 7k8ULNycB2g7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0914C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 02:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171288956278.5503.5609866580289251301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c52107a9aa5a4762169d97cc84386310f69b07b5e22fb94220f7c5fd2a91615
Date: Fri, 12 Apr 2024 02:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712889562
