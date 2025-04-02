Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3319178C91
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743629994; cv=none; b=iHWx1XZjfLhQkPM831SBzZhvH8IC6q40FYho+65naKQIykKLNoVpb6hAvyH5CnqNqMJ7QzQZ4vD3DTwNuQ2kCZtOLLXwAX4yv9DDDDzkypFv6shsurlhK753ttL5QVrrY9gj9/zqhykNw6s1PF7PHLe67IlA57J6QluvhPNm2Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743629994; c=relaxed/simple;
	bh=lbk8kohzI9crPyAcPSgLL0nIDToeMQatMlKhPVme1HE=;
	h=To:Subject:From:Message-Id:Date; b=LH6BkgvWsYKzGZ2DZIVcr4oVY1ieUm92mNib9RY3jOOrDExfvplnfUQGPlRebfiMHIFuO8fRh/fMV86KXJb5kj5j6GpuU8s8EdrNp5FTUOkYk+1DicPueLlqqGeNXFbPgkaIrvLivnQ4nmmg2BkdOYIZmte67RfD1oMA5PogVFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTOu3Bxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTOu3Bxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BF1C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743629993;
	bh=lbk8kohzI9crPyAcPSgLL0nIDToeMQatMlKhPVme1HE=;
	h=To:Subject:From:Date:From;
	b=TTOu3Bxv97ziU9KvM0Cfk8B3GK9DHrHgGeKwfw+p1juBWTsSlHRpkwruZIhUtH7Ew
	 dXlwjO/j5tLVbsCky7zeKqlKJZH+giU+7OWeoRbSHOobszYym+g45kj8XN6taSaiyE
	 1fK519z5fb+22gQqdWNelpwZC1DPYTZHx7Z/RSqV9ckjFYUaF7tXDDU+au4wXOW1lx
	 FwrTOxCwz6Y9TD3fUDJ68OGsDN87a8uuce6YXU/eJVd1Hzm/LmUEWBCe6Ma3PI2Rxd
	 d0WSVek1H9g0hRO1vQY1RTuWF/XE4lGzMyhFxcNXP6ICB+tdoU2wImWlcSyidZVMAx
	 5p4Ktie6JH6Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9806AC36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174362999361.28178.11362055410933532418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828ac056eebe9d5b1fa7ba9f7bd8586c893d6a4e12374e9e447d02b8870924ad
Date: Wed, 02 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743629993
