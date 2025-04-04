Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DBC33FD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743791394; cv=none; b=LGsj3EaB2l7GA80pOU8OolIQ71tD/iO0idk8KbhXAN4aZGqD1ANeST2LjhRkk47NpBGZVu4iXcZSGHcr4vgMz3PsgfCu+n6dAR3YVZ0ceK33wp8ACSnjaZLCug9c9chRhETcomED44DZeU+se3QBn8RsD6Dw0PkDDGe83n4EboU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743791394; c=relaxed/simple;
	bh=+walzupBh6RLUOM4BnN4PPX3F2pRa8Izx1Hk6/IC2ik=;
	h=To:Subject:From:Message-Id:Date; b=ACVEP+M3302UWovtOzX/i5e1XQ1a6DZX03RzLErApjhAS4wCMLDgenpW2HEiHNHDWiqCMn8a9H4vj74IIi0gtpkTHWxJSmGFBKXHm1TA1mzsrA3Tf/XhnVgIi1N3R5d+BCcB/4smSHT5Fn1C4VURnHbTZE3xL7NzpJ65Ydd/VnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMMn9uBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMMn9uBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEC9C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743791393;
	bh=+walzupBh6RLUOM4BnN4PPX3F2pRa8Izx1Hk6/IC2ik=;
	h=To:Subject:From:Date:From;
	b=RMMn9uBKQO1bKZzJBqPXUjZ77ybnPP58mmOSCij71qlYrVbNRdFERb32qvX+q67l+
	 IvNBljIr34rqG48aHkZEny7s5oJaiLg1ESJvmVMwc1Jl5HbWGpS1ahpF/mybnaYxv/
	 Z/QKNQcMDZRTbCEcqQsMvJt5khCpOz6GbThV6jtkt0SeaopBs7vcv/8F53Yvb69JZM
	 2zVE9VZ40EcWSz20xVpb904vAzFf7FuTkL0lJmYbjJwwHor6TlDX7FzukgKwpkwlOA
	 LRYcWeJ3NFK1+LnOXlsMc6QAmuD2xFLOuB74C5kuAltDNuRElIcgYWfULbwBeiWtZr
	 eXlOikZZTep8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C33C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174379139360.14076.1491805519065678709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d5b8146555568976a50ec6a64bc2c40b3ba78d818a658dca287976c0c92d92a
Date: Fri, 04 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743791393
