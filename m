Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427481EE033
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744308594; cv=none; b=EdW8YkY+lXmuYVUU/r9Cmgl22avOWb/7SKoS80Oa6R8bZvSSqPRZEb60nCxI8CVya/xGZfN7t82P8Sd61a4OqpvVYSXp5CwWuVQ/T+nJfon1Ur3/M4GBRBmYQ5nsHPdKG2NWml5mddCmS0Gdi92RKbxzEdMsSMMJ+h/agSyjCF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744308594; c=relaxed/simple;
	bh=8kCXey759QX4MDrOixVz+6Gf/FnKuj+Zv3lkrQ9qHIY=;
	h=To:Subject:From:Message-Id:Date; b=DO5+ElLL1HmzKmVptILUSo0bfyjrv1iqCcz7SKm8OaQqe8xb1wXBErWrrHI7LYONA9p9UxlI+zi0nDpUctYjgyj292jlQZxup6iEZeN9fT43OVUqdJjbpXRmUDWnyuUN2Hc0cj9oquw66JysYWWX5Y48wUI+h/vsIpFCIKNQ+30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJae2RK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJae2RK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B816DC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744308593;
	bh=8kCXey759QX4MDrOixVz+6Gf/FnKuj+Zv3lkrQ9qHIY=;
	h=To:Subject:From:Date:From;
	b=aJae2RK7nFCN60UEB3Ecm2lvCESwBu5OhIRcG87R/58T/gYaSUXUhbAWzbZ0QEtW3
	 4xI5I3nCXyCa98UJk7CqNVlK2wRynJpU5CnEh6s7x+Kxj39lJuVaYCQ+62bB91WDMt
	 aHaIn+TE6uCdsZRXUMniKe5Nk2RCm3qMO3hlSfkGnk6nq9Qnb+4c9WbSRlGn1GyFoK
	 Yg0n42BVu6T4YdsMS7DviP7T79+MNARvbgYzTVB4QiE5dcLYoGLglXMG3d05e7OE0A
	 Pehp/KcCIzVDGApdp8OlJ24lg9azWi4XAezVWMFbxSHnf24o+MlDipxBF/STs2rM34
	 hJfkbQBMoTH1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A237AC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174430859364.13540.4629848715614086220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d976ab5eeda686fbd0abd22eb61858b2d604c4bd0651a34342b03b9af9ab9dc6
Date: Thu, 10 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744308593
