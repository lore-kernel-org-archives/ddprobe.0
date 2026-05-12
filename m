Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B803090F4
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778583034; cv=none; b=r8fY82JnAT8+xWocvDjwWXLed3nshvj4aZVZBAI5OJtOLmsdvO6Su0BtBVAGZMXnuNH+w2QTYES6Uvpwipe723Y8rmzLYbeWKT/musEg+XqTKDbkCS5DWCnpNMlPXNSRCucw5/V05RhKr4SaTMuBQV61UkOT7C6gSHXGB80CNkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778583034; c=relaxed/simple;
	bh=BNVQtTPYte3SLBXJGiYT06JKVbXa0IWjlCvkG+oFA1E=;
	h=To:Subject:From:Message-Id:Date; b=dVeDdVKK52zvU8cQf14XNOJhNAcp2cQvFFeCB5StacTNnSr7IALxcGjx4MFQbgoI5rYAOM4av2xghvwHT5aY3POAxLXoEkAso1SigZRSu2YFmWlVTk5lTRN78hUHHwgwyyb25ZEdYbDqXd6PPGSzFVx30MQPR51YBaD8I0f7xC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j65JFmQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j65JFmQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE7EC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778583033;
	bh=BNVQtTPYte3SLBXJGiYT06JKVbXa0IWjlCvkG+oFA1E=;
	h=To:Subject:From:Date:From;
	b=j65JFmQoAwlR50Iy3vioZpYA59sfZToY49q8uTLmhYZtopdzq9FOuoUrh2q2M4rS6
	 uYjijAbdRc6okGOjJreBtO4dOQ78i1R+YBceE6YlwLafGSopsVvd0yqw9BZ7T8F1mz
	 FZkH7Nxo1H0I4kBknbL8Amn5mBxlgEguQJlVIYRKLnvHwOvMuSEueXMdSKXFnmU7HI
	 LvLkxxHDadMCGtlO68oBcZl3sNy1p+y1DIuvgXC9tvMLMrtq+MvUCi0z/pTkVl8NAS
	 Ap8dWu2m1hodhbswglxw1LpNdR+Dya9HXLuLsvWgmB2FYqUUz1z2zguPm3C+McCokx
	 fEriD8LsLp1kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFADACD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177858303369.11891.2650841712803862101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1824fcd7f7da73cec99f3e1a4f49322e11db8ef86110202e67fd2c0dfabc8f56
Date: Tue, 12 May 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778583033
