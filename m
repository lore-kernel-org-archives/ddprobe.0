Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500CE3CAE75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789483234; cv=none; b=S1+oVv0YBI5Yl5QSmx3Rh7JXqHxHA87Drs+NUO7uG9yhBxaGvbN/6uvQNHLIKnclA/mjITlxbAuX8wA2rD3zBbGYS8hp4qtKrRUOQCn/qPRGpiu0kQLFVCrUZ7f58ylQ4KzoXUJSMqg6ag3ZX1RwIawv2doTCgycOVH4uuQ1ZgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789483234; c=relaxed/simple;
	bh=e48U8RFgMQDD6SK4sFrVsUJXCyqGthGMQdVhPPcNUBE=;
	h=To:Subject:From:Message-Id:Date; b=HrXPxPDVWkwDNkXMqdSEUKUfSDMYlLtroDeriHUjlfM55efgkEJ2JrbIeujJPZjW2fC5xXUmN+P6YEP2U4tN3+PwLGraN7RvQpxO8/QCqSMhfCkBSXQeCvw3PjPqXRqaIaVfeZOb9cr8UcdkDSrg0PvkGl9N9mnWBn5HBmHdD+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+BjVM1S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+BjVM1S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0E4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789483233;
	bh=e48U8RFgMQDD6SK4sFrVsUJXCyqGthGMQdVhPPcNUBE=;
	h=To:Subject:From:Date:From;
	b=K+BjVM1SnKPMxy/TUNKVDySljuzY3SwSsI2yEOEVwGngM9omvHtZe968RzR13aKW6
	 GSr4fS0cL/T9FIWW61uNbplljxTSWI5P2cwhw4fTETaIXbsKlXA3ZYVil/8mCuZiwC
	 oPGhqtILqKwY/Zw7tnncPIuvrgVrjDyLE6ADRNsvqpddYkcau5iwq0mWRh7aoBRh1e
	 SQmE1BfJMlbZasHYP8tqm988eFF1iTU2LUcJz/x0E0ob2qe69Ypyyx6kAie2V9JHrT
	 vcHA+VStCDOY6eS6k5+TqgkKoTv67Tp0X8JMp5QEQW8WN2KBrPdjNVFxHng2umfRfH
	 q6bPK7MQvP6oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91E0C88E7F
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178948323368.30175.17260429826988717034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adbde4ddf3f0bb44ace0b90edbd8a3ba738ed73a5338a8a12492166507970cd4
Date: Tue, 15 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789483233
