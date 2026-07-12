Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3749B3290B1
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783887514; cv=none; b=KfubNzMlDDw8Yjm2NFDkjcZOgtvGVGv1VQ27tuR//e3HJ4TG+lWQtHPVWizczaueX6yzrNxaiTOMDobxGpZEBvhgwWFeSbFAMVlblmSRDqEieEOppyLoaiEl1I5AhixYNSfkCuOUyejQckfm4IuJZfW4pkGyD4Isi54Xkdt4nqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783887514; c=relaxed/simple;
	bh=4btq0XVOvQlt/p58p1/+e+jABxct39CxmZ0m9fgf/Vc=;
	h=To:Subject:From:Message-Id:Date; b=qQP9tLwrnk0dNe6+2yM36O7+tmfvlk/T94d1TSvj6OnW7WeJGRMWP7ihjOe5LWI9OhCwxKfgQrZbgOWQLlajFDBdC6+XxsXyQ2+8B9Rms8D92F4glaMv+HJu2S+oYGkiyRFiR/AwxOQ1YgScCwcM3NaH9LmxX3M7OT95CtZotlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOrz9UPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOrz9UPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5ACC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783887513;
	bh=4btq0XVOvQlt/p58p1/+e+jABxct39CxmZ0m9fgf/Vc=;
	h=To:Subject:From:Date:From;
	b=VOrz9UPWDGs5Btlh9jfPJ21GyuUUTXW3HZhL1xT/5PLVpMX33FlAOiHz0QU9JkH1d
	 zFGca4skANTNCn5SAp58iYVuVRQGwH9j2tqjOyXW+IglOwZCMzyxswDzchW8BiXNuk
	 wimXjX+9u94jtHucw7+9c9js5IbDAgB12oE94jegwHfYY0laRdwQJKznWruoKyzzzI
	 E7YioUPBsFaB+kQq/kVWJy2HPOeQIOFSAganiX2zYlZ51kgliETFcLgbxhhTmqBSYv
	 FtZUsk18GzmTzERc8QXVi56CYDipQbJ9ZBAx9oMNLOG3LPcHO2ExFeSAy6GUAqxI2m
	 K9Rt59bFfe/LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90DFC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178388751368.19263.15036117614240998715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e28494a5edb8971c1cb69de84eb1300f5fbe995f12211a0f64aca9ff2d97dd1
Date: Sun, 12 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783887513
