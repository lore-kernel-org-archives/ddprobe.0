Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D0C54750
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 10:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718103503; cv=none; b=DhRTIXrkY9LdfDo8JE1gFLIpkUIOZi5947DtpxqvfMcZs3le8Wb3QYWSoUUT7TyHBS9pOzypEf6xS5yHXmQ0mX+etXnaHLjZ/L+RhLc+YqSwyVY2gq/c5gkhjOKfZee7NhgxDxRBqpUpd2cr62ZfjCpkKmSV+fEfUgjkVHNvaSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718103503; c=relaxed/simple;
	bh=IPMEs9q+fRV5Xm2+y1AbT1XmkIb7lcr/cojyT8MWk/E=;
	h=To:Subject:From:Message-Id:Date; b=CZW5/zJY2U+W4uRMzCxWubOJ1ULuHKHfosxF478t5dYKDU9hjjjVo3HkxAkDfzycA4NGE9EbwtLXjJrgt9gl8RIq9PBptv75WLM4/fnD1A+3waBnmeiQYcSLQrjaA0rFycnhhHubPYUhwghLG5STOYgfPcTm27Fo8OnKCkk13DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZaYFMIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZaYFMIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE6ADC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 10:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718103503;
	bh=IPMEs9q+fRV5Xm2+y1AbT1XmkIb7lcr/cojyT8MWk/E=;
	h=To:Subject:From:Date:From;
	b=kZaYFMIymF/mBMV6DOHGpWz0m0liAWHiSGVr+8wXaefWSFcV3QdELJSLbmk7MQSfz
	 Ko0/n5HaIf83TOIuqDqj5a6D5nQkWPxmLq8N8zXcSHQPJL2vZTwGkaA+0lRnES9HbV
	 0ybqyDPKH9wGMFb0T59XVJeuVnNM1beTjZE/MgkK9PTxcZsXsoQsjOx8qAw1hRkh5O
	 0MrK1aM+fIz4QSIo2d+DBuJ1pA68jEl3a1FwNdqQkIGwfHH+vezowBmA/KY5tFi5RZ
	 bxsBXy9Zd2pf3z7H9EdAZzIo+YitCHwBLDAb2yzA99fDMjFtEoEWFGdywC8+WQWf5w
	 V84bYv6gtj8KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCBDFC25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 10:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171810350282.29237.5475004583771123582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fa75ddf9d18ffeb2a474ea7dd8f5f89639e3b149c941ac000dba640077c429e
Date: Tue, 11 Jun 2024 10:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718103502
