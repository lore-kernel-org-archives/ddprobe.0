Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1632D204C36
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754981994; cv=none; b=pqJpO0svDF2L8OIzF+LdVomIVqoBAk1I1x7Q1FNx5p+piuAjXxCKKgrZ2voGpK2TKAbf9OxMEstmMBEpYmhrjb3A6fbsV5tAxfSDLPxXI6rOhDb8l9ikj4xJjfONuWROAE2fV1zbQJZiZ/FYxaPcCuqzPFMmKkwJzwmzLdecf3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754981994; c=relaxed/simple;
	bh=j3LXdY5zTVYPE/rU5HiKOQSsJdmb+s29p+3PxXeuqdU=;
	h=To:Subject:From:Message-Id:Date; b=JRVxsVavlGd5TlCFILH2vgwuvKNU/G7sz4RufAnLN4Nf9IR44TjVz0U0qCf0TYrsw6EmiQbWL50Qt45FIP3jvnI1svlPwKK6dKX9gZIqSho6Hva/m+29cyoYRWvOrnTi4syljwS5N1biqn1O+3X+t53etPRpIfbtW2d9k2lN8FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCaopH2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCaopH2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A591CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754981993;
	bh=j3LXdY5zTVYPE/rU5HiKOQSsJdmb+s29p+3PxXeuqdU=;
	h=To:Subject:From:Date:From;
	b=bCaopH2hYLXFJ955be1hoFqcsDfDpvEdjz4mLp9T9NiTePX63qblfYdrDsdLZboKQ
	 ZMsaFhgNmkM+gEJVHjMQcYrETWgUz9f+kBRbv8n2lJ57hHNbwprMroWCEAl4Sv15uR
	 sQAHU1bzHxjeFBgssRdbG21OWfhC3Q5SfW0sQxHoZNWSDhtHzjUlEj17iZC+0zT/qv
	 zG86KPxdQfyessTLJzpdrvQIA+PDpmWXEENdCShdMN6xE9ObZEU0pRQNok8LJ0sAIW
	 UFrmd9f4VohrBSOCj9UU+VLrzvjGdo+V4v5VOxJkN2fClV/PmTash1NXUzYVIHhEie
	 /lcTVpzmRiftg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D4FC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175498199359.22968.17391935217309548317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2220f2d372283ace47c4157c1129bcd814fa586b3bd4609fa727077ac9e3331c
Date: Tue, 12 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754981993
