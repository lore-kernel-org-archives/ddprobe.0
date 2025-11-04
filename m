Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F591D5174
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762221594; cv=none; b=flQ2kzYVGcBbhKbPr85shnJYTsLQhIDmOt8S5wMTo6yb2pI3YRXvrRjvdkYzVH5qeZft/6iV5RDTyLKl+dY4gYEubmGGcqc9bs7tICfSZKhdBseXYVgGXHGevlWCQviTIj3VSB69rSgO8TTpUNhXHMrXt6xpsLKHpCvHWgvCCTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762221594; c=relaxed/simple;
	bh=BQYhKDlvzjTxyB2WCsPRHOR+5FDHWZWLIO1V78+V3dE=;
	h=To:Subject:From:Message-Id:Date; b=eZ/83R0JB3JO4eMDZQ/dT9s70J9AhvYz1dAONvCnrqu+KdLLD85FMtrg97wGcTTB+F5p9j/DA3KFIzGmrOubsPKfEc5U9x4xetL4KKPdJGpGy8kdMzMaWnKAMAd8qYfLV324aCM74Iv9ln7WXfzn6TFoN4S36OrME/VTB4Ko92c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/o/2Wr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/o/2Wr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED4FC4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762221593;
	bh=BQYhKDlvzjTxyB2WCsPRHOR+5FDHWZWLIO1V78+V3dE=;
	h=To:Subject:From:Date:From;
	b=h/o/2Wr+XN1Xy1u3q/2Ih2q8YB3vKpYPi1j9KDWFztgB5L539/9tktkWbAEL1+1CJ
	 jvy7hYW1NfXTSa2CgWHS8LC9nk9LLEQ02DQjYubO1UN5NbQBXg/ut+gz+Y47ZIH0yC
	 K1KEcV/AluBpCZD4z8k9lqI8VQXI9+usmmjyFMohjLbPrrbKUPEKpSpaaRl8p7Y9Qu
	 QiHrLBDFwaiAwly4v0uhp20D7TbToTjY5JsllVbuh4/alTx/9kxLJC2hZ6HAshbKIP
	 Y035qioTTZpaO27kxEG0VvOZOsU7tg8MgeaWiZGJ7sCmqDL/gfvaz6Ze4fq0LBfqKt
	 uRbxbEu8CcokA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B6CCF9F8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176222159358.28044.16515278482307765718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8bff92ed6657f33fa167d2a6c498a5b83d6942ef2229cac8f7c49b6d0311241
Date: Tue, 04 Nov 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762221593
