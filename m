Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C982D94BC
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751632794; cv=none; b=dya8FtQAP6AUlrrV31Nhue8xpNWkYziXMC+UKANdNyhaOPYSgUxSDkS/cFv1O6YQpMViSE8EUlkRP+wp55JFZ2hG4B3CqNstRGlP7MZtOM/Sua867F0sGBLwmtfkI2EuVxOzlzJ7hs+G0bBC4oSZ9R4c+5iuNJz6xfTDdOF5uy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751632794; c=relaxed/simple;
	bh=MHROh2OI5b4fuRQE6Pnn3AG+4yhQlTzR4wS4vraiu60=;
	h=To:Subject:From:Message-Id:Date; b=NcUyS6fB0Y08a3n5GLA/vB5ygZlY1O78PI+gjFfCfmyGqJ8sJwatPzfVzUf5swlJfO9YeNPo8r05X+KON/5a2iAfPU6/n56b/h7cywheVnMLIOJ92hMzYQTeraz2UerLBdq7pBw71iyX4NuwYz3A5Oz7sgTJ+lSbPnTzGsS1iu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erw7S6rZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erw7S6rZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C43C4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751632793;
	bh=MHROh2OI5b4fuRQE6Pnn3AG+4yhQlTzR4wS4vraiu60=;
	h=To:Subject:From:Date:From;
	b=erw7S6rZe+g/1lyoW/+tWTazzrIu3RAa5XkuN5L4SHTA5Rypi0FrOVtZon+6HBsQC
	 BIOviNpZFQ8P0khtU2jbXvs47E6EFQTDF/OTioc/gcU+iF8R3mdpFXUOqSTtxgv765
	 nNP/kow8kuCahqV++hdk3K1kUQRqX27HEo3ffmCs6zlpPwBP9kQZok4NgGKYq/4qG0
	 kv8DA8HE5PQqUoQzkWnMogLYO9/WuLtri+e9dSr4xaIPllWLA0IR/ZJhlBLqoaugef
	 940b0gLIo5qitqjOUH+FKqnpzpR6HAvKN0rivWwuxOggMYeZafOwOpwFqvsviPmnsF
	 xJ4vRGROEU/6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906ACC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175163279358.4369.10552833424324239604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39981ccd3192ff3e9d1296226229e022845c352c3a3da39b60a4b0fff574db63
Date: Fri, 04 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751632793
