Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7BE1DC19F
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743113994; cv=none; b=oF0v1brmHnHDcRdt0x5QvFNyZ7rhwy/PKNU/fCMtUFeIgfh1agGHaqI1QMMuw2uiYGHZSO6m6o9vA8eDbgeuy8we6KG5W5CYjNc9FZX3fkYJ0EZzIbWbc9qi/Mhc7J+/sY67bE74qdohHMYMptw7yJQcjt6+rxVRQBBCmjqgOo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743113994; c=relaxed/simple;
	bh=Up2jh+vY+PhvGqshcoUGaztfv3+nq53GMrUha6jm+0k=;
	h=To:Subject:From:Message-Id:Date; b=B48HGeUhrw+IZhZ46KFyKpX1rokJikmw274WsG5vkDKhuZM0uxMZhawlU3TnKyU5VpOlKK3zaQx4GEkVW80KnMORx9mtLaMxIwd+uNjEVMySImWdedWEbUzIyvlm4raufzNE0IZghtmppQHFFsa4B5ktX5wD8QjhpqP5X2rQThA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpJy0rbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpJy0rbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD11C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743113993;
	bh=Up2jh+vY+PhvGqshcoUGaztfv3+nq53GMrUha6jm+0k=;
	h=To:Subject:From:Date:From;
	b=VpJy0rbrKzwvoaMI8ejShrhJP7rxtyAG+5JxazbcWmBb4FeRsxI+D5uZcKvw5s5ky
	 V8/MxrBFALEUnD/u3t9u6cENm/gRK8b7/Q7cXdaA8k/ZBYMILRCJ8Jo+WBarnW0gB2
	 b1S6SFWl50R3gGEfiylaFtANyjgk2n5W98Yf0VfKvUM7WSNv+hmo2eiKToooyA97JI
	 Xg5WIr2sDAbFUM5AAuSW9eegF235yV81pdolSUd1dwmikCQQLqwm0QzJj3/IRukYVp
	 D6fk4lQUznymtAFTWxkW781gRJOWp/11SWbwdLVwy3/dxGqXTJbMN8G+/kUPLpA0ap
	 VATVxU8w8yH8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B2BC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174311399360.22414.12458019009023272077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96aa96abacb538510c554a047e8dbd4840cf27c56617a28418924f32ec5aad75
Date: Thu, 27 Mar 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743113993
