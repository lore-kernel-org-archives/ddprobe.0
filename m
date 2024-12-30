Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7511DFD8
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735572954; cv=none; b=SrIzOTaxSTHWT0mV/c8lVJl85048qFaMTyPVCiGjzs+h9VypgwgFcPgdQVjFwCN79bsTAKUkATRNdjP0Wf3qmloPt9fFEz5QyKF/20luZLYeHww3jDeykbY/nkilIcTk6gQgD4eeOnjbncIg2Vfcj9s978cGG8jxDCLesiA4Y2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735572954; c=relaxed/simple;
	bh=Rv8bHUiSgCgXmUqH+6SU4BHZS2s49zo4FpGXZ1dgRv8=;
	h=To:Subject:From:Message-Id:Date; b=rKSSRdlCU+hWmFWLH3kb+l4IrI4kgv8NV+oZbbTB31qbyNfhKVZyQtrLI3Dmoj35aOcEnPnQGa/wyGgYbv1zDlRrV7XemUfZBVWIaYmwwFr6VNdQB2lu/rLUzNdVN+7PScMLT+Cro0r25pLZ9umnFFwiwOQXdXTCe+qOf7XGrjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJJQepAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJJQepAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58ECC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735572953;
	bh=Rv8bHUiSgCgXmUqH+6SU4BHZS2s49zo4FpGXZ1dgRv8=;
	h=To:Subject:From:Date:From;
	b=LJJQepAmzfAb9HS/JnCAWEB6JIbkmHZJGUu/Hr++TxqWyyOXxMWeMp3cRHfMN4Hx1
	 oiLeDGfkyN/5GBWpHQUxIcxz10+L3kVZJA9WC0aaVjWf6lkBNOg39jmSaNg5o2ljYe
	 28ms00FZ7+2yUCuKVXToXTYAmlOY7QswnI3nkZfbFXQObKwEXEIKKqaJSVdeNjSDZG
	 84NrUlfJ2R19Lzg0oj6ZxND958cwJrKjxJ1aiVkVRP9dGt39B3qGXXYP2myZOBagu2
	 fGfTVf5SYZb8luieo7362V24KkXARUE9zjepYNJJ/LnH7c/gTtkLZKOeOJA7KAw+UT
	 6+V8rKSvCOZpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A6AE77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173557295358.13469.14679688334004182122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585cdd8a684d1fd6360a52989f24a73838e9f9abf558b514c59e094e0af30005
Date: Mon, 30 Dec 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735572953
