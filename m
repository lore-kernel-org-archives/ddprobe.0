Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5169E4CF46F
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792309834; cv=none; b=EAgvDKTKypCzQBWaGsA05CesVRcUnph7cUY98oULu9CQcy10j80yhC6bN+64kUdZL8pXiXdAVn9DTLHFn8SRV9bGoG05wILLF7U6l6TTfd4JaL9SnvCzXgZmQX8jtClD7nZEMn8lfVlj8bgdX6cJ8Da1A90l6Tg8gd6MPeB4AhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792309834; c=relaxed/simple;
	bh=J5UWrvMjo8pqG2BdEuDv5NBDTGhJ8iXI2sCmdQ4OQ9g=;
	h=To:Subject:From:Message-Id:Date; b=GjnXYztri+k2fFTuwmYqdbk1CgKZ2Ifr8oMQtn1j6pie0vkaKVZTQDc1P5859l1/wdJAQMHSJr0m351x+vec6wyj2qzmakru37alJXO5esJC/3wO0XHkoepFOV/AynKaIxYegGHf2BMIqtjwE7J0gZhpxv68gWRb66k40vkzeFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8EInarK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8EInarK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18FAC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792309833;
	bh=J5UWrvMjo8pqG2BdEuDv5NBDTGhJ8iXI2sCmdQ4OQ9g=;
	h=To:Subject:From:Date:From;
	b=Q8EInarKq72KAsw/kXV8IjpmnLTu+eTaeo43kKXHa8JdLq5xCiRSEmGeTU7i/bdxN
	 HvyvZbLK+hHEGHPFjXvKnVl/xZdPcwMnX+4RNV5lOSl7TyLrm+xTnNlRLA17NiO8P4
	 wTWc+KWmAwn+rfV9j7FSoxpZbdEy36SCfruA/WnKKllT9GzBR4FhiA2C1l2YZzzoVo
	 i6aM7VgbjpIjjAY8mf5Y4T8HZKja//npZDod2Wh1VzuvADH0Wi+/ulDX7jgkoRYuRB
	 MtyWIqTX3M43XDaXiEvOZWgmaw0/fcJG7EKriyI5TOkNTFuG4XQprSii7YJlrqndVV
	 Vghaf5DxPE7+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1D2CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179230983368.16744.3688909857512321840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a15e1dcd0c5601a65a970daaa81f214e15ec59911f771d9cbecbed306c809ae2
Date: Sun, 18 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792309833
