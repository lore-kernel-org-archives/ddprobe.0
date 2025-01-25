Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF9E1862A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737837354; cv=none; b=Qi1B04ePalCLmoxaokcxbDhnGgDCebEw3T6BrMriQvmCpXv9ryIrcwdOz2Bd9p7bFkHTvNlAGDkh9e+Hmbb4WVhxUNJ/Rc8rRP+N7c94TxDuWf61Qioi3n1fgbcM4qgK/Kje8XNviC0RpAzKrm3TaU+nmwQ46TxkndsIR/WAvFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737837354; c=relaxed/simple;
	bh=cpxjoCUASqVwUEgi+Qq6uYRQk/b1ITT9DsJU0r+BgpU=;
	h=To:Subject:From:Message-Id:Date; b=LsKUI57eRpCMHL/iPxzDdEPFKEMiE+m+FjBvCvZZ0PWWYD1ZtiobH3suJVW+rK6F3SrnwcnwgvBTJhzhQOb+R80DV4fFo/d/GWnAZCFa7PHBRTgoNEydsgqxxy0InhDrioHMrXHMgKjAkqtpoMC0KNsaq4QSEbl9IRpR807qndA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSlJRAq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSlJRAq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8ADC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737837353;
	bh=cpxjoCUASqVwUEgi+Qq6uYRQk/b1ITT9DsJU0r+BgpU=;
	h=To:Subject:From:Date:From;
	b=KSlJRAq+/FcDTf7n4PfWauX0stA9+phyGaUK0WBsft0fYQmwEr0xlE+UgfC7zCEWP
	 ZLR8vChwSarzfgjvYwzEphAEfPYVZk8U0s5uKMlslFzXP3qLfK/dU8XHDpVN0JY/BY
	 DUkK2YP2cJNF6T5JrPgvw9GjWYUKP0/wkwWIocVUGRJkCqJrtjPNLNa+w24MJm5gtM
	 7DOtpmjqaUeQaZnM9A4uYF1cxYQ7IPjhhMgB9j7tPX/z9pMQoaUyIAdvqC81yUyds+
	 tXj0VQVdvDgL/E4EKkRMUbCu9dHlyblYIRAydGsXHkuCPoWZaB/ZQeU254J5uE+cPa
	 gycv26GqHmqOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95297C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173783735357.29158.5709199290343330601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f8f6d67cb96dca11c0913a18529daf4ba3421e67966447bf3da827d32cf410
Date: Sat, 25 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737837353
