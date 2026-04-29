Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCB354652
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777433254; cv=none; b=fJnGvhaPw8ZkJnq9BxE305uhVMOk8V7dZK2YRHMmzVELMiXvTjFb979yOwXmlrdVQlGywfmmRbfZfcTUm0n/D2/EdFu0JvsRhkl8O0gum1UE4AduSgrKL4n7HfUsugX35bk+ESZ9cTsI9PS0b0p7DHcleaT7Y1MiRwb3EWmZ/FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777433254; c=relaxed/simple;
	bh=lItEDT4BgxGsvHzYsWqt70oAT16O76sbhaRR6Ns2OVQ=;
	h=To:Subject:From:Message-Id:Date; b=BjU5iUFW0fk7/NouDZ3BH+k6NOxm58F/DAI54TnrEMFHJWjhBekNA1o99Kz8MRHfCtvSqCz9FcssiTqjghYSHj9eHEbLWyeTItG1oa4jJ0Ja6/EXjt5Sdt+jjo2K6lfVlqym3cIqvaX+Gn4oTOTyNfFTAbhSdHuGw84NgEbyb84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqfCs7FQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqfCs7FQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C50C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777433253;
	bh=lItEDT4BgxGsvHzYsWqt70oAT16O76sbhaRR6Ns2OVQ=;
	h=To:Subject:From:Date:From;
	b=EqfCs7FQlbE4AvZaTwX+tAe0hn2ZIDKE8QnpHKQEXXdPX85eCpIoafr7Q77sst6Qu
	 Nie9SS/int3loE60w8TuQyTINF9jXrpDIrdj8fiPVpNTkFDz2+QFqcmNmrojkNtwrI
	 Y63WnDLOOBndzFmyoCzw8tlYaR8ssq5xry5PQyGmseTaMfOx7gaKL/JHZl6EFI0FZ9
	 YUnQArNBW4QL+2AP0l9IuxqO+5cdk1Q55AFVzy2L/+ModysqOsDZowHiuV+wq0At93
	 Ho319XX5tCIKhgpMU+p3ECdTq7I8q78I5Un31c7gqEIyYdSEWV8p3P8EFY261ZJ7Hz
	 hgoh3mXczbmaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF83BFF8864
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177743325368.8438.15241343153616073947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7abc8f539341f2bc79b46ca654bef3cc62bfe44257ff8d809c3dd0cef453e8d7
Date: Wed, 29 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777433253
