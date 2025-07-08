Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D425B23E336
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752007793; cv=none; b=KUJ8RBHq2paM+j3USqcxlw6LYS25ku2jL4uJD7REmygz9wp15n5TEmgdWmyMrkZLljEqblb786Bo9GeSU7l2LfYSTgB8Q7HEg8dB5Bx2nEJU+Kbw5JNUh5p3HDaYgMLBoUz7dQqSoxjdJJoHghlnaFSGahWBp0UehqwwJFBP3MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752007793; c=relaxed/simple;
	bh=j6jDEItbHk0rV8vTIaMD5XibbHZSL6A5ofihqkeQtBw=;
	h=To:Subject:From:Message-Id:Date; b=AXgxxKoiEGObqgLnbkCRRAHoRiiasiF4JoB58OnDvu50xgiXwHB3lD4QqCuaBqVmqNX6a8LAXiA18uUg5tk5QIjcssQuFf1XCk6brCfc4tSWz6y9N5dTR+2wtAczubQA46RLJjCrbc/AWBpQ0HHsvOa7UDLOoowdaFYGm/KkNTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMF7C5G0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMF7C5G0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA50EC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752007793;
	bh=j6jDEItbHk0rV8vTIaMD5XibbHZSL6A5ofihqkeQtBw=;
	h=To:Subject:From:Date:From;
	b=XMF7C5G0f8lKFeqhHrrNN8Ag0og5jwN64JPSxMuwTtVs3jJAKSCuEdO++zNtlMFkR
	 YnsqKz9o1yDH7lTXTvOt4qPooFVYw/MgYGTkYKznaNSssfTOjQwEjA0mjbMPYahtL9
	 PnO0OtO5DHVLXtJXbyL9sno7ulgBSfchtE0ufJ6m1HxAvjkyW3xLbDWjxnO/MzPxau
	 OhDIX2XOP1bKh6FqzdGMuRLaeeXvluxHimVqqXjcv3GT8BAaKH+IK3I2tzffxQ5Jo1
	 7eYLEn8oQK7UikWzAK18hEwvkPOhg+mb/YWFOdUcy0f6l8ZYytl8icfEljAjMlVCLA
	 gzcW331XQ1AGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F61C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175200779362.30811.16668256155919701326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a8bd5ea8aac6421699f9db2821f3b06e76227a2db10e7afd8d6d4763088102
Date: Tue, 08 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752007793
