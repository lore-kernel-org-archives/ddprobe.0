Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE723CFF49
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775830654; cv=none; b=FS8BSaRyHVytpdLN0vwvYBsM+0956GBQOt2wC6/goURoUjemDLc5Hrr+77wwBnlYZ4oSXkm0U6wpK166WREPUIAx1nMgYh2YHGAd6valYEhFcGrTnn1Jzs6OiLgeZKYdR479v+4Ofc9rgaIyMFbegIrtyGpoy1TNinF36Gy3XVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775830654; c=relaxed/simple;
	bh=+4l0K3T4jTU0WojUER6GeDSG6ZdOpjdrddJF1aVxR1w=;
	h=To:Subject:From:Message-Id:Date; b=MullB7+iUZXMdEYfA4zeDZJS3UNQvkPEhMVVafDQZwRm5iaoJTs5jX7tp/za+8mQy4hQ5tYNCuNgaxikiO0312lTQAerUjUW7wVARc++TN4nLla5A3AJCjZi/5ZzHb7GjueP4aCE7ekfNigfwHObHDcEIOLqLsZt8tuZx/ueq88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCBXqF/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCBXqF/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE411C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775830653;
	bh=+4l0K3T4jTU0WojUER6GeDSG6ZdOpjdrddJF1aVxR1w=;
	h=To:Subject:From:Date:From;
	b=XCBXqF/hB4eJJziFaXkBkVWa+9s3J6zJYaZjS6ybl4e89qpTkOIqIRKAO4oNhObs8
	 c+eVDBGKGMA3+PL/SCdIsNjLqueY1lG+0fEhOLynKuQtJzfXn9IczX134oSUY4aFQK
	 euq1ecLUMHYLS13Jnf1S8KzewM5RF4XRYu89Lhf8wsoWRvMsTZ0QnyUq4CTzQLKAzP
	 sOSP1IcJ+BzNPeWn+zGeEUtsj7cfng/P6AGxD6RbWX30/LsoRUnr8Da96CDW2YqK45
	 kh9HuZC9dLhFree9HFXzB87DPD79+UOafai0xOe4iNxeQNU013a8c2Q9bgt5I+ajxI
	 9icwE1DkVplFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EE1F44873
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177583065371.18580.8804894747973890257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a794b2dc34491dd2fa82e7b461d28523fcd2bc8a939e5f592a302ce37a143f
Date: Fri, 10 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775830653
