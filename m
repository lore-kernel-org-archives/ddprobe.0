Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20478EAF9
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758673194; cv=none; b=Ok121nUCiVUTONJ18pbiQNFpD+Yk9W5oK/TZD7u6zKTWAzyzglt8ImjshX/1iIA8G90pOmJTqQQBL0fxEUboomkT7fnpGUyXsJE0gwO6J3wbUG2M3ZIS+DUqpHCTQwgqlRsSQteL07tRQm7rZi2MoRRRaP7p8MTx9UgraSMQjEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758673194; c=relaxed/simple;
	bh=xosyfGy7yn31UiqhWZZQuELShnlUPl1sQixrjtQRkJM=;
	h=To:Subject:From:Message-Id:Date; b=mDzU4Pu60VqufX6PFl5wKep8TUSWiWMze4Id8jtxFKiA6jxWqNs7hotKRhy9gEUN38DtQPxajyQqikGpB0nPlBabX6OGkWkAAIiw8xWLFDdV/ut2xwG9hmwkdJG2P+C9/iXMiK5DV4Y7YURdoa51mgRdwoWgIOq+d4ERoLlpkIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukNmkOVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukNmkOVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6B5C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758673193;
	bh=xosyfGy7yn31UiqhWZZQuELShnlUPl1sQixrjtQRkJM=;
	h=To:Subject:From:Date:From;
	b=ukNmkOVi2b290KSZWhjO6ZetUIQEhkMbHZN3jiRL2RjqsRksGlGW2bwyTiK4nQnIm
	 LzAtSTslq7mBHd5kNixoApQJ+XF0FuApp8hBfDlgVGnPXoq2u7vZGcHGM6XuRJKtHT
	 GRq3osKhNcDvsKvZGy6KpvOIGIIHgX57nszVJZ0tmK3Q5fgOqa4oIV0y18CLVH76Ga
	 K0v1GL+/L1dink2iMpT9GOL19ToeDtPvAa2iQCsJRFIHpqKPEu3337AMaiICRhpKSf
	 RytH3WTnCJQw01mrxd+ZnLhJsIForBUBMvpKbp/0eZ9sNwSdIZLhzgKM+DqVL2C/Vn
	 Rt2oExNJ/1/xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EC2CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175867319358.27402.9676162345128390532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b98560bb7bea76779fe9ed6983c77a8e89924d54ab6be8afdd0277a0654380
Date: Wed, 24 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758673193
