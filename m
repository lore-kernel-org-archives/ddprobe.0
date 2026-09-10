Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8D1428475
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789074634; cv=none; b=ioX/r6H29z+hd0YyybgJyg/biT6JbbjXftbuNCP6Z+SZ9Y8p079bKfdxuKPukOOuSJjyMvwXgoq5sEYYyOeN+SnwvwS1BUpNHLvTQMFTjUodw1AvajMmaUP594cRobREXC2/ofVXByMTBxTAyeJaEzkkHJTmBVoZm+Vs50dHSAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789074634; c=relaxed/simple;
	bh=IYKfak58SjD9IiktoKLkOkTgD98pEIAXHaCi83xG5kw=;
	h=To:Subject:From:Message-Id:Date; b=Injd+d3VtEdCy8Q2dRtiMI0I7v4G8dIxQegLgSt+MBfMfgba8pqwKHxSmBYfJxG5SxExZaBQtnLzA9q39VaWdJChrBQhlcoySPrWfGM5vTCXw0EEzsRx29aWw/xAHJKSVU/AW5BMDxcu2c21FJkJHErLQam7ffRhYXYGD6mxFpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyOyuu+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyOyuu+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE214C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789074633;
	bh=IYKfak58SjD9IiktoKLkOkTgD98pEIAXHaCi83xG5kw=;
	h=To:Subject:From:Date:From;
	b=RyOyuu+IMJNtMdtMYya3LG4c2fNBEjWr4PeENiOj1zOGDZjqdFMLkf04ZWjLZO/8x
	 v+RueaxdmMBLqzB4QNGCX8Z45Ads4nLM8AJGlQ0akjh6UaIgR7QiI6Dyixe9vUO3nD
	 2o5r9dwsAIWBNMZzdMUHB2N4aY18JbkruLR4PuLVjseRoaDQNfx3DysVhv+HQzIQX6
	 TC3GWxaf/ZaxLB2/poVZO/iyfjtgAgLJQsU9vTWEuHWWTSP/yM4/TgvfQhsKlCsIYj
	 B5jmYPtptqDUWvtDhJiA0W7P44GwzuAfm7oELNxwqXbCZ0Cc5ZTO4wpR9IYA514tGn
	 QLxptD13giplg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4B7C88E41
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178907463369.16715.3341516394379992517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c9ab17a932833280ea9deaa0a6291db3f8403a48b81140dc597efcab21ae56
Date: Thu, 10 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789074633
