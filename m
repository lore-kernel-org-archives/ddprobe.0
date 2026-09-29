Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27E1242D62
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790651434; cv=none; b=aTTI+7avXSykJqCiy+NSa764AeYfL5jhCxjnXTARm0b6K5L8fej9lZKtczqSkkXArD+9a6L43VuscfjcnfUIuKPWJ2dx3QtpPMOGaiFE2Ag3aNE3gFUzYZH6uNIjJCmD6FQLcxTYl6Bs3Oneh8yf8gVJE6PyzEELTCX+BJGJwKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790651434; c=relaxed/simple;
	bh=U041YqT3z+sCY5j7yaP/sf/YUFT+GIml2s8XVWXTQ+A=;
	h=To:Subject:From:Message-Id:Date; b=T++hh0ulqht2viapDc+SynlB8MEBOgPOciOVSw9PXrBIpoQoefmR3yONzXaoQGJt0WXn5u+XYH1yHYAtUsIKXvAl03CAYV306tthtQq7qmjZelf1XIx8O1uydYP8v7ISOXUdIbcS6kph7Rx5q+jmLccquj2JKd7jB0M9YtO58ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXcxQJGU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXcxQJGU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5670C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790651433;
	bh=U041YqT3z+sCY5j7yaP/sf/YUFT+GIml2s8XVWXTQ+A=;
	h=To:Subject:From:Date:From;
	b=OXcxQJGU5K/tc2moF8qv85QfUu0NMvYPtpiW9WPbXv3Qn9gYuhdpWeJMvO4jKJZsC
	 l8lNj0F4m6KZHJSJC8wVjf7X0VqFgoe/ibzPXOrdxOJ6wQ1V0fB5px51LTNeZKBNWT
	 6fGQjZG8m+YzLhTYXLhBPmkSW71Wj1anvffSHLQ4uABFTmNnv9qbF5IYKEN8mFX37n
	 Qd4Xz1tiktIOlO/ooD9FwbK2T86NM2d/qLQy7+v+Z3AddJztnnfY5vhRbijbRqKxn1
	 vRGIWTi/VgtCUUmU8DQI6gIRN5Yu04NalxKyXV1IH/7WQPWL401clbDiyk/i/CPNpG
	 6KCd0wbXCqBJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B69CA5FAB
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179065143371.15048.2323429805134137763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d6017876706e585d84bc44d57cbbe7e725badf93151b732afd4c232445d854
Date: Tue, 29 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790651433
