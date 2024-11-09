Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2AF233D7D
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731170754; cv=none; b=FREr2RwJp0GNd1AJAm9qJekH/TGqlRGY3n8ITA4PAcVXbrFyRw8sZC8VYQfCbJU1p+TD3RD68kNImDmSIKv4bs9/dexygpdud9cUHE6Iv0jwOGp4FjNSmnF692WozeXcXUATSVlrr+lXf5YGzjYY0diW8wxL5iybFD/MHCDFl30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731170754; c=relaxed/simple;
	bh=6pqPq/2T4yk8OIW9eetx/pfG73RWdOKXA1FGdvhLB7k=;
	h=To:Subject:From:Message-Id:Date; b=RtNLykNA3UiIY08UQWKvIl8IyUld784/g74+ug9qYOqqeswHjDj9FEfFIagDrG7eNAGXMDfRYKqYXgGN+OHh9MIHp9P2lwJm04oWduQKI+ssOIJFy9d+XMpuO3q3VEi9KSBuXp/PaftYm4yLARcPg8ypsjikj1rUE+a1qGo4Y8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjtM2xOU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjtM2xOU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67CBC4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731170753;
	bh=6pqPq/2T4yk8OIW9eetx/pfG73RWdOKXA1FGdvhLB7k=;
	h=To:Subject:From:Date:From;
	b=LjtM2xOU9Yfhk/+m1vQBzbX/7TTe6Izw9xifjz282oIblBjN4h7xck+7Wkvk1zq3z
	 77DFHV6ZNrCEaW8vqwByjpr6HXqWN7y1KrK8iuaM++37VrReUnIAzRp2DQ/EVc6BRT
	 4IQ+TfGb7gKBi75i98f3gFjg/ym8inWyKh+kCjJkbrpjkIizHoFRxHZyEwIuj6F9F2
	 SfSENEEUacBnEDbzP74QXdkKFaN5CsemIUwnl1A8bPRm4j/Jl9odkkL6m4EBK3YhUJ
	 clYkHPUnkgz55EojsLO+UYC5zqIeULz8QtLD1HgYeEovOVtYF2i/VOG3tcbQLsV3Ut
	 2VrO5cNALK2Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4D1D5E376
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173117075363.29414.15260647451567777284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058f7198d73c26571cac95734f373246e924520cb4dfc84fcd264877dce037ca
Date: Sat, 09 Nov 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731170753
