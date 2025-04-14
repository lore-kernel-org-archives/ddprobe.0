Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B733EC4
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744643394; cv=none; b=uOj/4MXwqPKecGxjC2+E6x248/fp4Huus/ZBTsnEWLUMB1yoiCp0SGMX5srgSZyftHu8wp9axu5R44QH+KGD1w89eiityxRn4LM7Fh38RYmervzILMwZ5r9Lmq14OZeu7N2KwQiibhy1OZ9xVq8xY9tsjiSsyoG1rbIavx94pZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744643394; c=relaxed/simple;
	bh=zPQ+MHHu/bod7p4Bs/EITFFBVsIiqV6EDC9FvPN7LUI=;
	h=To:Subject:From:Message-Id:Date; b=GiorF4ldPpHJA2QkzlkmK0RF2UMLTuC5YjFHYpFpUd13IlAhCW5KHYObfEG3TmsJ4kAS1Qt5VNREgl3RCu7lpMOok3bXiIvyvxo1MSuH5ItyAXlGSmtWnmhJXTzEEf9qd24EX6UqyZ4FscQfCl/WQP5FCGXUyBuipzf5i3Q1g9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkR+nTxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkR+nTxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85A5C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744643393;
	bh=zPQ+MHHu/bod7p4Bs/EITFFBVsIiqV6EDC9FvPN7LUI=;
	h=To:Subject:From:Date:From;
	b=ZkR+nTxwmXFZM2oeVdxdliygzmHjiCnsePF39iyz776vaYMTFzY+Yyj7XdNinZtcA
	 Jt0XJGB+QpwzDwrShsXry7bJ93s+BnSzDOEvKuP0xuR1Zzoh1WNNV+0VTtvgb0QPGu
	 fiUU9mBwhZyP0Zsuql8uxkyE0hxu3RSXk6xtCjH9sbgP+NA4WkwJDaegDulMJ2DEIM
	 ojCDWUBCfVM9aZ0ChZ/tRq7WthT9LcKN1E0DJGPkeAyxRXUOf/4UIiA45ekJEj4JcS
	 jjHtIaL5FG6eedCWvcFh5HiWIyVEZDiRs/iDtqsFlrKCS2Bc3r4TzAQk8U+Yu9wGtZ
	 fixS/tjWrkCqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F00C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174464339360.18847.2675436557592102260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29db9b6a4d25670800d19953a20105921277ab9ab834df0064e0fa2ea13c5432
Date: Mon, 14 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744643393
