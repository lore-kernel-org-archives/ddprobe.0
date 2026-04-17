Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6530539BFE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776445654; cv=none; b=acpg+CjKKk4KoTTiHnihW8qqIrzUIc9cYHeJIvG0kE7BDEX/vNOynLR4aTgzh7q8ftM5qELYQz18sWrgCpiu6Zpu2SCZjFgKZtDlHyaX2nhEkli9hom+kQxHFz+rGgEZeh11GQSkhzP1htR3K5cqOLHaAjC/RDNZw+m5eaWaHqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776445654; c=relaxed/simple;
	bh=qhnFWY5JnmkVZduxNz2eSG8V7xo9gGNP8eR/at1+ixA=;
	h=To:Subject:From:Message-Id:Date; b=jM85Nucx/jYKJtagK8iQt6iSMA5fQqyNWvSeqz2m6CYvEET/7Ykpc3e3QjbxHRm9YIP3AMjqZcmzfBK3Gxzzxg05Rt+sXDsKU5y7gVKIF0EZnqjvZnZTwjY4RWg1wrrVX+ljEdps00niohTUMWWfhSKLjUOj7Ey7PQpmSM6b8bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3qTU5vz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3qTU5vz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9910C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776445653;
	bh=qhnFWY5JnmkVZduxNz2eSG8V7xo9gGNP8eR/at1+ixA=;
	h=To:Subject:From:Date:From;
	b=c3qTU5vzpgqDLEJQn9cky0w2/m3LrKF5/TcP8Tdz5fRgAR0VcsEFosHrYpvNG+vNy
	 NZZEq/JHHwcV3yGuHS2rD+JyAJR0LqJdO9QJAvRwuVVEeIlN0ADpuh8CAJ8u4e9bbz
	 6iY2lbHQpXWTnnQfBNH6aC0zSANcU+YhBOw85oa7y8bHc+mZPAz4SgO+0GfDcVsvLV
	 ULo8Ey0POSqBIUR/yg3b2loPXotf5Cqf9onK7DwiCaa4CmHSzpdBdxVj3h4jg9bPXn
	 lxSoAKP6n7FabZljSsIAwd02bbLxOOqKiMJlI1LkFiJuRcLfsU5Zwc32YxPkI/JpU7
	 etyQOk3+qoQ0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C6CF436BD
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177644565368.29019.3400222538321893309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2603caf3b3d5e60c800f74c2a3429279ca9bd6d5aa910bb195da1066f6f10675
Date: Fri, 17 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776445653
