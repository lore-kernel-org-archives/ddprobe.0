Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D7419D092
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776727654; cv=none; b=GNhanOVonznYRM4MqfVBl7Gz3DCvUUFjAIkp2t3q44qMOzpgOZ0uqGAKW6op4xw5F8adSao0TIPyFp21gZk4UVBB85M2828gjN5KVBIZEWEyJ+JX9zNioOfiQ0AuXeTGHNm75SzacXSIyQFFcoMqb+5Ak8C2ufBS5d4SI/3NmVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776727654; c=relaxed/simple;
	bh=Z/22k1jpPNwZ83tx+l+sNHralmSPWEia5oKZIfibkYA=;
	h=To:Subject:From:Message-Id:Date; b=Jib2/Un1UCeQNwHHjaV92CKyfMgR3YJW/4O1O0qjaAK0ldDvt9vyxYnNwkhKT7r0ansD0o9t8AhkGQTm9/mjRYWwVQMHCMh4MC86ZZAJuAWj8jv9Z4RzseAkjayItLEh3PeMZMqqXcA0ZDrWce54GRy3hR26RB4ZBwrfdQBk0rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrMdLXxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrMdLXxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF92FC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776727653;
	bh=Z/22k1jpPNwZ83tx+l+sNHralmSPWEia5oKZIfibkYA=;
	h=To:Subject:From:Date:From;
	b=PrMdLXxwnlw1mEE2Yf3WBUH8qjp++N8Gs3jaSoyiriEraoEjShYBsyFeo39PS5ccP
	 8f+lXJ9cf3EZyIuueVhocMSHr6uB/fIT7QuX9L6en/AemELCQv5nUMwqcZhNHaa/k3
	 UQ3xSdFo6R7ntmIU+YiG6jdkZikhwI0btNptK8e58aSpyDO8MUz6S9oUyKY/4Rr9nN
	 FM6oF+4etEV6NnZ9cjwUQJKdYeG9u8VD5dsevgmIuVqjWQGi4dzt90GSDL157rHEKL
	 BllHaK/+AQmZZ2jR7rVq2dGw3lFPvdf/h+6QpfdiRyI83inHIllR0rNQJ0N5bywJaQ
	 puKKvp2krdBMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC540F5A8CA
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177672765368.17862.13009046819875674939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035158f4097a22f7aca5fd7dd5c5d3a247573eb1b482ee9d40586dcfc426c2b4
Date: Mon, 20 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776727653
