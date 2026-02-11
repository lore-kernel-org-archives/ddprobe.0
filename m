Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F5928505E
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770810294; cv=none; b=bl1ghjrK55HkN2I5NhHSgGVFwfWPz7aTKQtECapq6Hk7wRCDPMyztQjLQ/hL+Re70Y6+qYFklPLrIKvl4xLTIVbKrVAWJSU8vhk2zVtn0aOk6ir0vR/S9s7TIpUICiUVPSnITzzTELmOm3yVmlSSMowXoSvIKAxQuzPQDRiCzVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770810294; c=relaxed/simple;
	bh=GfnY/HX1GiPxnyjqRAeMw1fKP/iu5pfNAwFrw8H30BY=;
	h=To:Subject:From:Message-Id:Date; b=eijekLTENT/EiWo62T1cX0FQLKavVV+tHh5kXznh+ABNk3ef6508dM+JIZVeHxWVmAqaQYvGTmmcjXZSNxzqmHEnLieJ48okBbXxXRYNmccDUqTjZgnRmiqCYUVLrMkWgZLQm1RwoBvkKjCz2Y//Q2qZtN7QyO8dy5Nzbhn33l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvE1bZ3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvE1bZ3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0222C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770810293;
	bh=GfnY/HX1GiPxnyjqRAeMw1fKP/iu5pfNAwFrw8H30BY=;
	h=To:Subject:From:Date:From;
	b=QvE1bZ3IzMh817KWGkt+qsVaYB74QszXNYhH26I74iOeMGRUEXh6z3W8YhDAy7Gm5
	 LCSaccwPvXYhzeLiVkmDOhKCH0YUTBrAh/RrwL8Dzi7cBLl4fGDHl7TdBdgEfY6v/m
	 Z24kIzH5PAKqWgGnQArfe6PaUloAWt4LQtjyx4SYVY5CA14pyVOHzlqAOp7Cx8e5I2
	 DdioeEw46Y8nSJxhUckzygu7jxvnvNroHXL5Vw5QcD1pO83zNrQ2LTurdz2L1Et6Vi
	 IYuxaPUmTyHis9KJg1LLhkwLC7XbGp743kGgwceoB1mpeiICPK3YwmPrcojqihZIpm
	 BjCDk7XPuDkcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9DEE9E2E9
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177081029362.25008.11141753941831369385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbbe057cabf0c7e891dd1f9423a38eb6a39dfa6b7fbcab15f9dd38e63b101cc7
Date: Wed, 11 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770810293
