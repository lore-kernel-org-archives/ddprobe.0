Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDC8129A7E
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718970743; cv=none; b=iPfWhswa1rTI7EH9iFh+tWQNpUlA2Rw3+cD22esUJ/bofx1/lyplndudhFyKFLzEC+yNG2W69SVKUYOWAfadRxtGB71uudQcCzAR0pUTRL5JbJ0qax+8VTQJ6/N0A0sIdiyhWirHprZZ9xoK1oupKYcvestu7DQOk2DD0WSxBk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718970743; c=relaxed/simple;
	bh=3EA1aC2Oi1MuycBlVVq9WnrUG1zNvmrFJyw1IgpUBR0=;
	h=To:Subject:From:Message-Id:Date; b=hFax1pbYAhMiMdvYMQ8w7I++NZn7eZZ8PZGADzDC24NEoc+dniWwRgQVImY3lSgjoSekrPY1KaBoy6DHyB52vQLmO711FsOuRUawWuxhHhJ51v0lZyDQkeLv1ePLBbDKCUFBXTbYafPME9d9sWFxdVQRLdhZKAa9Pl0Agow8w9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKeZHDws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKeZHDws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE18C3277B
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718970742;
	bh=3EA1aC2Oi1MuycBlVVq9WnrUG1zNvmrFJyw1IgpUBR0=;
	h=To:Subject:From:Date:From;
	b=AKeZHDwslb43tPjmPoam8vBEbQrqkOCB77HfRAi8lK4scE8KUdZLdSwU8TOWFJuTv
	 j5ePZpHEeJWCW1zB1ugDLSFxWbYsfp591n9HJXAC2tKsphF64kD3Db+GhRZ2UKpa0k
	 FSRoVQrh4arESPll1fzMGRIp43ogsHm3cQAsQaF6cpO7Cp47OlhusZ02lhrEqHf4TH
	 ywAxO/1WwoQyfL4wB8k83rYko4w6XZibmTO/yo9Pd1rIZkgRVnT3c15TahaEiFiatC
	 m2xcxMA/atCNoE3nNCwt2czLG99xWRq0qqKz9yLkvH8h7Ce4NPO9qEy9nJzk9gzw4d
	 /TriXAhmLioNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF3FC2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171897074276.9477.17229534330869446106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13263cbb508396900eff9f0c2d24371e1afb88e90759d64b4eb857426c4653f8
Date: Fri, 21 Jun 2024 11:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718970742
