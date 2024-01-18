Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED49623741
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705592297; cv=none; b=pjJlQLe7iDG0waH0v9UF1A42J4NjofpTe3oK/WUkZbr7ifpxzs9w6R4uPIdeLn+YwgwsjYOoENgR2zoXUXk6LHY89aX6mCa/wx1L9Cs2j9aQ6kuOVXIr0VpPqrJ+hLoypJGYA0SoUr5F1zEroct1prQdLWa2LJ0BOfEC5sN17xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705592297; c=relaxed/simple;
	bh=wRYZv5E7Lrxj8D6fBAZ3PtmUC5zLKK5e0rngv+ZTTdU=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=llkUxB/mj4rVHzKTbAarXBdbhIWyYRe5Sd14aeRFGv9qI0evWFkweTd59wKGPKB96q7IPfBTtzeNO6VP9i359s9No/c2q3Q29YRta2VWJkjKxA1PGb+WIZVUQ8vK4Qi1BYm3FEsFAQZzzvhaNohMd/GXOD3G7o/HaCIsh+0JXQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpoQCped; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpoQCped"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 770E6C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705592296;
	bh=wRYZv5E7Lrxj8D6fBAZ3PtmUC5zLKK5e0rngv+ZTTdU=;
	h=To:Subject:From:Date:From;
	b=gpoQCpediZUthdCMkFRYxoY+HgIQ9AanodNfLt8R4/lA9LkNw6Obfis40EhaipsIi
	 sWH7yaWgJJYSDRI18ZoRkxHWAdpqV3Z2MmhQ0G+pQV5UvNn2jSi5091O18h+9nag39
	 aYwol2kE0sXKklFDe0u6Xt6WnPguwopOvK0B9taXYgIPTABOI9Te88I0ZLDBINXlH1
	 85BvUnX8Z39jmc1ksIyfUr5VbAPTWTDTw8r1Z1ULJAWGtGa5xU9VClzqOg5QQ1RnYt
	 CD+oJkspovDrZa4oiUdnSC6f7W200qAriiHeYw1U9IUzpXeIEf9aywsQ3lYMnKeuj/
	 Z+YHLfesKi3TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CFF7C47DAF
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170559229637.10732.10150724547925853778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abbde5389c12c9fda7c60ced829dcb529d0d06a3aacdd821a4e96ad63a4095c9
Date: Thu, 18 Jan 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705592296
