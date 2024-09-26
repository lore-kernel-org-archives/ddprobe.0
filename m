Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EB0224D6
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727334954; cv=none; b=SzCIeS/BlpDXhQG2GPKMCasqAXsRpGSfdAGqpgh+ym+5N51am0JsofmZCKJmqpYbQxiA4F1MWMyeNNbesXFUZc/HxLW12xcdby4O9JB1fG35DsrsmpGNc/OT5pecRcDZlz49zyyh5u7G5wFI5lZFjONTLN/FiSU2a8dT0ulGa3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727334954; c=relaxed/simple;
	bh=FBLpcAbMxj7pyQDlNW9AEOA/hQFWvU/9EaFRzgUbsjo=;
	h=To:Subject:From:Message-Id:Date; b=N9uhVChtAcwjLLheo91cEpwo4DNO7beTpJvNntSyZVSNKck8mgAAaZ4fjKZE6OAw/SFINkrFZT0pwD6EAdQHjlUIh75X2lOXCgWIDqSWqMWCTZxecDyavNXCSgFbBbgt1cPNXn2hqalkVVA8mwbDwPGS95SbFRWVpYIzAkBaws8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGWon5aR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGWon5aR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5186C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727334953;
	bh=FBLpcAbMxj7pyQDlNW9AEOA/hQFWvU/9EaFRzgUbsjo=;
	h=To:Subject:From:Date:From;
	b=uGWon5aR0cenwVulM6c2v/7nS6OmqlkAY2qBNaEpRIZARyqcRveJAWtk1F+isPYjM
	 0shWvfo4dqtMzxBZpNlTe/ZzhKnMkRyaaKdUzqq7XItECsJXdtzfgL55W4SqNKBBag
	 qKhWpCxUZ9vGsZoewk5FlIhNFF8g7ClC+CyA+B9WCevMYv8BBRv77mHLKBYEVfMCxm
	 LQGljm2nniYBrPYecEKoPavRyj5r4j2NZhSBYnOYKydyZP9GyEGhNljoQMOjdqigkR
	 1nvi9/sdxg5eUrT4DiK7KuFeum9xChEoKf6HyAzqrNj76oh7nP0VftYeqc0u0HsFrj
	 aai4XSgnWLHRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B6BCCF9E9
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172733495358.26147.10726999009385132264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95efd8179d50be9c7661d942cf623d3e500d0594ad7dafd65aabaa67511e578b
Date: Thu, 26 Sep 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727334953
