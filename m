Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D36B3314AE
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776921454; cv=none; b=pFWes4ldCJ+OHIp2LbWTFeqsEyyAiadnJoHvgj1WUpNhvpBxlrUE+fPO6WMrS3Tj4O9DRc7FvdhN88nYo0/SLzNsFRDzuuaKe0GGzCmYJ8ra3a97O1f/QO/mRasX4VtWotu8IlvyHUlOeeMLlmLMJGupN7kNNvyGIUfjIzolnQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776921454; c=relaxed/simple;
	bh=9Tv14WsRknaB7f3zRLxhKEnnVE8OvL16Q4VE8MAbl9c=;
	h=To:Subject:From:Message-Id:Date; b=ImlGHqWR9n/kuIdBMuPc0sl5+toqqSpCsW5b8p+tICbq1uaxIRziI1cfwobbWStoVBV/QLPxLuQY2Vd5/jXRprAXzndyxjIKdHKkvqRp2OdKXYDio5R7MPOqOmKEy73Hlzct6ixjtFMjj0lx9HsGa3dNBaOlx7I0ZhyvPrOkMb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lafiFqCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lafiFqCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE19C2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776921453;
	bh=9Tv14WsRknaB7f3zRLxhKEnnVE8OvL16Q4VE8MAbl9c=;
	h=To:Subject:From:Date:From;
	b=lafiFqChw1ntejqzcTkAV3xZUtAbOWfoRyS5s6BqiiNwuprZSJ75lgn6CetOMR+HZ
	 g2YddMQ7D4zq96SLbKl4boVd0+vT/uZTTKXrclHJUTGXFc3/2yrbsDYRWHDGQ/Ufb1
	 JO/bcvqyhH8Xp/nCisTiwjmWdJ4HFPOuaY7KUXdgFKyUKDNsd/E0qIdagP5yzCQZ4b
	 hAWEIpyeEBG3HVuf+z8609hQobUPiJLY+1ESPBYqHHkh2KFtgRxKcGK5Rh/eKk4VgW
	 +ddU+DY1bdj8NvbTTS/fqI318ESjcn96+MGJQli/x1bnaZ1xWfWMRXkDyklRvkFEu9
	 UeAQD5nVuOpVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF892FAD40D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177692145368.11758.10403859313626711884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a7e5d42be36154465968c13f0c9d78df3e657d9d855c1da578191dfe8fd8983
Date: Thu, 23 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776921453
