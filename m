Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194AB71B30
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707396497; cv=none; b=pmUn/D8SvXmsG8+Ma7BrMZj+u02232FzXJOteTWkJ1gH8U3f9yOZGOz95/TWbex8Rk6aTZA3gssv8oJkNwLjULGIctSv6RnNQrXRr7YJTGhCxvym276RK9L+pYZt5XZiPy8Va5Xra/q+k9VzNpKwLQs/e3qHjKPRiNlqVz4wm9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707396497; c=relaxed/simple;
	bh=enFfHGIbMNRKaqj3/odS0IeTDepAGMe0FXjlMW808zI=;
	h=To:Subject:From:Message-Id:Date; b=CjpMc7ostsOCYiGU4LjR3b9vEPwcBZJ1QQHk/MEtsfV5LkpfhH3KaixwxXtflJTlClPOjH42AwAGn/PP1xuWD0GLuiQhmJCRYSgkPen+N3McxtSbQkNZARl+VGZ0hhuPti6I0+wLzrU6ya+FPJ82E/aJptp/m3sHk7zg2TWCWfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epKTsRbO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epKTsRbO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88126C433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707396496;
	bh=enFfHGIbMNRKaqj3/odS0IeTDepAGMe0FXjlMW808zI=;
	h=To:Subject:From:Date:From;
	b=epKTsRbOMsALh61vo2xn6Y2ENj54mVdWQtGiCJnO6H7ETUt1UjKWzxLXkR77S38i6
	 65sLN/ENIIKsU7N9gwSeR18zSr/KqSC0ftlbD2dmngIEL1OP7Mpbud4SxxjlWMeI6L
	 vjag15NahSRvjBXlTNeIzIa/5u9TlGFr1rWvSjrwWdqZxq4BlZHKOxDL3gfnAqJsDP
	 XEzK8Mtdjmvaq8gMNGHy32uL6q0Whdlw+ZN3sAfECo7sF2Bkf38rsbvDQpPiRtCj7N
	 uXrjM6uc1sOO/DEuAME886i/vWO5G/0wrbNQ675kONo/oADbiNa3LFdatHitXvKAIP
	 x884hTY5JpAGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67272C4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170739649641.8055.406838528369847451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a9e9bfebf3caaea46fe68244a8e9b3c41fcc05f7c5c1a51be5f97c719c47e8
Date: Thu, 08 Feb 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707396496
