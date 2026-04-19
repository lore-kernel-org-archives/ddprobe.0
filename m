Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B9025CC79
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776590854; cv=none; b=biuXwaKcDby3WmKhBd5PHelI8mT99BkDKynqG1WBolfEqFBD5ky5mTgiHnQUSiDy6ED/sD8laZdZqr8OM8X9GKfME8bhtI6CV2e0dkecR8PDOBP4NG8+0PhUmNBthnXCrvPY9FkbMn95ZniazAPJ5ZEwTQKSNqmKfPnl51MOnAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776590854; c=relaxed/simple;
	bh=PisZOtdPPbSYvWbkKkoCRpYqAuptrvQvsVFqdeMSjgw=;
	h=To:Subject:From:Message-Id:Date; b=iJUWpP3FDSgtcwKR30dE/ADbQb7EpygNWyyCC/Nl6OsZ5IkMFcXQxGQzoCRb5W6ftCJhoiKvu5v46dwGq0Gws3lJOQcH04YK5LGyQhTtMugD6vOqB5Y4iQDaklQ6cLVwhhANdF5ocSWAyA+2SFWAfSVBvsL+2T0Z0fOmCp+WZRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlyFM+O1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlyFM+O1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C166BC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776590853;
	bh=PisZOtdPPbSYvWbkKkoCRpYqAuptrvQvsVFqdeMSjgw=;
	h=To:Subject:From:Date:From;
	b=GlyFM+O1n7yLLMCnPuJLo4PztQXVS5XrJEst7jO4I27AtYRzdFVauExQahf35Vack
	 BldN5K318HoCFlFZYpKw7/vFFG7jjMbYs3cONHlCE1NS0t30aGYKbfwdmMaBsJwsXE
	 RUmApV8bA7kOJa1Iyy4y+qdkrtxU+dR8Pg8xaoA5aNDSO8LLjoeO91iCnbJ8uRe9gL
	 JlP53u/zqeocHYL8w3HdysZ0dBXFmwmasSdLEFFWkhEACrwZKqFoDwOvPWqFtCLjJC
	 SznzO7eKv2dyuVhp7gkHAQ58aSVzl5NDTqBDhxCubfDlBwAf331PCaIbmXZXDMd/Zw
	 vPN+heQIFgqmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF970EA7192
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177659085368.3867.15206508774546351266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 594481dc2884fc0d191221e83be570c98c6d7b2203cc712a5f9f1d400fd88f4f
Date: Sun, 19 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776590853
