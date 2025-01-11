Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E8B17BB6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736573154; cv=none; b=UpaBzzVFKEJaUMW21H7639P7dtt/I9oShC72ifnlA0zdOEJW0QMNVFXEnwfL6rAUUF8BstFRj/fbEgT6arGvXfldAubQ8kDnZzAqzXqg0PE1ICfpYyzAlejCdV/1szNt8z/e0/8qg84B3O5bD/xSItEfuoGax6IBVRo5xtkgGrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736573154; c=relaxed/simple;
	bh=AGSMvPJnRk+au0MW/pUsUzzNXTyKl9DgYoQqTt5q+o0=;
	h=To:Subject:From:Message-Id:Date; b=hL9f9cteyzKXuWKNMgIC7phqOFLeeaBq15XjAYvGqIRPFN1ZbvXDyPpLEj6BzjblJ0Jfvelyczj/wi2SHY6mYYD0+PYAYQFB1Gj6/uKwt0NQVk3BLVfXiPfx1XqINYjOtjzGA7lhawj0gZWtKUKqMw6hLD+1KlStWDIzwHh3syQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkRIi/r6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkRIi/r6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB72C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736573153;
	bh=AGSMvPJnRk+au0MW/pUsUzzNXTyKl9DgYoQqTt5q+o0=;
	h=To:Subject:From:Date:From;
	b=JkRIi/r60+UIoGkym53UDnLwXb/PumZcuXVwN3R5sGZtZYylhccti02JTQz/+JMoJ
	 6TggN4cvSajotzcLcY1QoAKVli0cw/WsFY0v5MRsr8kNnYp6NNii7Kpo9XxOGD5C7m
	 +qTinrLc2hkdFjjyi31JkPgERgR3CGvpY7LS96ZdbSK9TnjZopOByvHt9uTIunMc5V
	 20h57S0wt1D/4m4sWsDH2ORHm4FqKcNCFNu5wmPAipba1cizVk7DnQgryTzAABCi1N
	 3BFO7lkBY9UR7IDWlOPX8IbVIm/ENa8dW/zDTy0uxG96FnhlRuUEQwv7YRQKEgFAEB
	 DfstkutOK3qzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AC5E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173657315358.29650.3005540972789429655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9bea9a78cfa9b58823d3e5a70d33b345bf95c37482f7821f8c6fcf71df04d90
Date: Sat, 11 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736573153
