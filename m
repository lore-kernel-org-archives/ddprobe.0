Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522461758D
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 11:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714563743; cv=none; b=F9igjBQH7ZH4ZGmR+6sTipkmFG3TM+VbkY0umRrjGeW4xKnMYpYRamHTFPnNTMfxx8INONcyxfZWYAxCszhgYh7wnK6ihqDXJ1z2Y+ab1uzEjGHy8JzX7Xv3jiVWCNC/CyjJSXQAHMVpRcPvsBe3iO9y43p2D76mdZbzwfPfBfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714563743; c=relaxed/simple;
	bh=F/g5HF8g+TAqyUfpO2hbyHy/d6pIebPPZKSJZH5YCb0=;
	h=To:Subject:From:Message-Id:Date; b=QaJjA6OtQnoOJtg+4vfq4zGzWb6JAHTh0KuXMPhKpO2VkS8SQieOs7D28s5BWALwUCLoUb1mG7jIjzET3ilzZOVOumCjNA3unukLqZw6L359Q4DEZ8RTF/3t8Gg7CbwunFeGieeB+A5G1juOmiw7GTHPPdMCj4p3/t1+Zz8EWIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwCfL9jW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwCfL9jW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8DB9C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 11:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714563742;
	bh=F/g5HF8g+TAqyUfpO2hbyHy/d6pIebPPZKSJZH5YCb0=;
	h=To:Subject:From:Date:From;
	b=XwCfL9jWi5vK5bEIU2RPv9M9xoNYaou4ApYZdwzl2GC7MvjLBbM8sW3Fn80/HQ2nQ
	 5vxo3LRJoU/A0VUvMERJU1Ya3quLYCiVLzxWAZLc41O9b33ZlKb3o5xoOkQHywkvX4
	 8hyhGF3kHDfd/6oK4i2GmLjB7lyfcG4bBHW6ILEflRh5Ml7Bq/I/DeYTX24cox5PEx
	 Al11E8cjKO1h7OmCtsfXQk89JiKkVIvy+wHWa+5ouWbLHCeQyFuVsX7E/BAdZXkFBt
	 Is4UxmhLS2jqJoSmRZcBdEBMNly8qvUzu/8+4WVj8eAlN2466csaSnVB31rhnFuIsL
	 XUNYfOMEJUiQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA55EC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 11:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171456374275.31398.16496932765591575128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d75f39517c3a4301535efbc256aeecdfaf1f12ceb84a840f217e26f2d6a2917
Date: Wed, 01 May 2024 11:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714563742
