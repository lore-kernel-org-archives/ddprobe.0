Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F34C36A03B
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774200294; cv=none; b=lo91qtLnoI5ZWgF1E3TvEz5/+JU3BegNz5IWfLvX4qYoKRrH6tFZmbN/Xo1+Wu7LW0BT9yoONfZpuutR/afAZAsRv4qPHd05b7uTnk4O7Xqqg4zBcBV1Jd1lnVHMflXdmxeymf4P/0S1CMqY4/cCBhk/ImsTaEc/ru710dPA5Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774200294; c=relaxed/simple;
	bh=FecZvxDUXJR6cprNdhwY8XAidpRQTfCEIhvXqoRzlZw=;
	h=To:Subject:From:Message-Id:Date; b=NqiBO4S5F11UWKEBSq2ZVDrv8kpXxHSNPDyLvthpDiiYWG/Pm478b02oxxJRvMW6544RDAEaqiw4IcMSPAwqCLNae26EqtNnnVdq4iJh82PVkqsTkNMks3/p2ydf7artnHlYofp4sLdexpRZh4NfzRCGEcQg4CFRSQA95ik0wd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXgxAhYu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXgxAhYu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27BBC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774200293;
	bh=FecZvxDUXJR6cprNdhwY8XAidpRQTfCEIhvXqoRzlZw=;
	h=To:Subject:From:Date:From;
	b=PXgxAhYuNrjYWuqkiFbuMyT7M+vmW+b0npatcLHWl6iM3LIyxaiQf6lLigHt/1O5f
	 Ju6tRCIWzarjt2znj/i9WYm2a7m+hRi03vrmqSx0XqHKswUbQ7vN5vLL88rxNf9y2Z
	 ueYmE64zDaV5SqyHV0AgXaOYlVEJOObi+X46THPTrSrNRmcOT9rXxfO4i+DFV6lE9R
	 wv66MsAOi7GboQfzm5P2TQJ3r68CyigCsDVdqhFsPDBEkicZIzu6O1xp659i7AFt1M
	 JkbRwtynPdGIi1zYlnGjKpRuXvvBS1xcIDy4ErNRUvmxo72kSI/53HJzHgs4bC+r9b
	 Xqhk0pEh8+JDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9020EFC72CB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177420029358.28002.3114734114677639400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe957ca423430e33a5f323a9eb8f7116b44b6d6d64f6020ffd5ce159c198ce99
Date: Sun, 22 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774200293
