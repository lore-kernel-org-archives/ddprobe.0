Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CA329D05
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750513794; cv=none; b=HYSqnHjIUM4jY7KgiI9CxkGYLu0fyhYsxGqeY49feW33ydtYBs/c+U9xvZNm4iP5zNxA6ALIWKuYHG3TX4tTpAT8jKMNnZw1CRVRjHg5iB54Dcj0ysQnpIp3xbWVYNdL0+DC8KpN+ccBx+RaOvhsdrIImfq1FNSD1xIUjKJwAqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750513794; c=relaxed/simple;
	bh=8zc6Ps0/V/ODeRbxFwYeTR0ijsSv2xI82oQ8vV46THY=;
	h=To:Subject:From:Message-Id:Date; b=OfMo4bmFTwyAfcXqvRXnRRHglO+VHzmnPEFVjEU3xooXpuKW5snDQhCoR4wCGorurTe4JxVvvKcNQqQ7nofELkDCxo1l2+906lxA5uTboaKI86QyX3wMrSZxS3uCbXH5dnffl1GxCOP/Mdl90z/p4buB1PDrd1cU8neUqE+Q+WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5z4wTmZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5z4wTmZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E8BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750513793;
	bh=8zc6Ps0/V/ODeRbxFwYeTR0ijsSv2xI82oQ8vV46THY=;
	h=To:Subject:From:Date:From;
	b=e5z4wTmZt9qn8EmGCqF1RnzNqO9QapyT5QKOg6OrtBCWRGJluDdZTGhDa80MHy68Q
	 UHG5qg6VUqVccoKOcSkbGZ+a++GsiVUvNjPZMzk70lFa6Tjjhj+OjPGQzw/T2CrjM/
	 Dug7YMiQ6gyqp58bH+WOVr1o1totNOcOvIp55Rivx+hvyT/FKSgPiG+q56olIwu0EU
	 qPYA/AmpI1ICGuJfggimIOxMAyBRKaYnAjuANvTz1zHR1eXmtz90D0fD5xSy/fKGrE
	 WdN1eWkq0eyYmf8VYcXLZ8jhr8CcfuxXmdTm5dXhg1fkQkuAnqVqBHe0Xm4063xIcj
	 z8bTGNpLJwrew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D0C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175051379357.27459.16668672171232831768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f3b7f229015b48a14a5bbbf24f386a650947855d10687f8d4eef8dfc7ad2ac1
Date: Sat, 21 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750513793
