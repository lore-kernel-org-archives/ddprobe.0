Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB4BEAD8
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728246954; cv=none; b=TRKQbWUzc6VN0lkhOjJxFzDj+1AdirViQeAxgCYoHLVFuDnOD0zOXTXsfIpxvRJDKwk8/GuPPPj6oJsWNqLZ8QvHIbse2HffDQR9BS8oERFj2SWEbwfPk8ZPqoFh4EEXNwT+RFdxkOf3zuX18yR6P6m/keulFy/AoqFd8sZ+FlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728246954; c=relaxed/simple;
	bh=QZmYGHeNspq3jaWYKsMTZRBoRre+TBEKG19tJDedF64=;
	h=To:Subject:From:Message-Id:Date; b=gp0qOvhE8eOlcG/ewafIOHvyfRMnolm89qpF16eGLP7zcme0MEOkS4xBZG9pIwSt/tKMyPB/tthrUwDZovgh2AaxO8TtDo7yIKtRJBZ09KqQalwa273BK+ikndw5k1gVZldpZhl8LNUshANNx5vDGABM9p8TH72NGpISYXjwu1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTmejUzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTmejUzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC1BC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728246953;
	bh=QZmYGHeNspq3jaWYKsMTZRBoRre+TBEKG19tJDedF64=;
	h=To:Subject:From:Date:From;
	b=HTmejUzx5tq/aA53MLo1Z0gOSuFlo51QHn9HbJgcoi+JNyNrkJG4PRBeMnRkAevl3
	 yhTYdjZZIsl6QUvavQAGczacVPADj3TsvFwiX+Zqy2ESbYD69vZJIxZ8KP9u0qlnO1
	 ROwSFI8FffbFrxv81YIZxx89kFvC0XIDgcWaUFjEAxS8DXR0Z5MiZyYJqVVOWxhkr0
	 hm0yue+ONEZO+SnOuGgwJMkE6OYxfDTdBq+7K5uWrmGBbxElyk3ZmnoMo+29MNtesb
	 eXjjxdEPYdraqaE+Yk5adP4Y5EeIck0ZWbplhV3I97AvWjYygSCoxQv7BU5Szq0Rp9
	 TT1Ol8USWlFEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F83CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172824695360.3985.15381521824217928523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a8132805e03f4e2892ef867fe343e02549dc8d16645c93f46bf03bfc578aea
Date: Sun, 06 Oct 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728246953
