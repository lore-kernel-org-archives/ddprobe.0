Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A9E35C1B8
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770907494; cv=none; b=mJ6kXHbJXETbim3T/5QKuYB/utt0yKsvmdWm9j3qWBiaxqUBA+XRuIc5zArZo8RkvJINqXWRa2HT/DCtASpvWqiOfo24F+dHq9i2hqFFYe6YWiQ+1zeI9m4jhQB8maAYiLxAG9Dw8dK15GrgffGSPyCOZelaYQZVQPpHCOE1eQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770907494; c=relaxed/simple;
	bh=7RBgD2Bmf4xLRPC2uxsQP4s+ZCk7aRwqm/buSnhxfBU=;
	h=To:Subject:From:Message-Id:Date; b=qqAxTrriT0L7cSOpoeiKqMMLgd1t4XB+E9LGO/B46bDgnXCMUFv2oN9TRydC2m5LoAsdmOU4NYboh7ek7TknVGKQDCXZYfr4TI5RAk4713WgH+F/QsgU2xGRk0k2x1WwKg6KAMCEvqFESkZjMe0X/vjjeAvYGAQzafRv1Ubt65w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIqkjw+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIqkjw+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5649C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770907493;
	bh=7RBgD2Bmf4xLRPC2uxsQP4s+ZCk7aRwqm/buSnhxfBU=;
	h=To:Subject:From:Date:From;
	b=rIqkjw+1t+2lZiBkX6ucSttvoSzOoPLBDyPHvNeJihpZ5y8PuJ1vszmp0r65wt6qw
	 o7Srr1u7488xP+KJl8VmdFCgrvKcrBZXA8WFcXjtH4o3eXhYAsfuR7X/Mnm80FdaIE
	 f3V9ZJa1X/lcHpk6eZdqRO3nIrTqDipxxc4xAmFbgjbXka8k4JxL931uTcV4U4sKlH
	 uO1MGYcp1mH4FJICMA2BeF8hncNsylQ4mw1f5HxFKTWImdeHywXNPKO/Ez7DmB/sib
	 mhPAmu6NMz03B3cskj+by+w4WISSGtca1ZrKAzgJjlbbm2SEyRwS9jgHsv5wBazwvi
	 2MrbBqOMnCrlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA44EEE3692
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177090749368.21457.10862306802799357064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0a70a2971543d727be9e2e39b2d53a15df9585db2f9d7f59d6d6b2f6210f09
Date: Thu, 12 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770907493
