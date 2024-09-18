Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACACD299
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726673754; cv=none; b=rGvog4d1b8g3hCDqLd2C4yYxRN1YjAMGEUMv878thCLisPTZot0tp/eHCA/WB7MfR1/sCZYYqKt2eymBiH7QoJkFv92EuJpTv9lRJhz9Gsoqemgw1ADP021obv+BHZfjGftMVN/LVwUcTk9bUOE9ospw2IrTfnul+B9OPJtSiWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726673754; c=relaxed/simple;
	bh=rQHkvEaGyO9Hfazir+on9ofB2BztwgtEQF6zcDiCT84=;
	h=To:Subject:From:Message-Id:Date; b=m/hZ2o+LLVr6x0ReGzKaq+2WmLmP/jG2pWHgBI88jRFCN4g3jUuJ+f1xUMbBMZjgu69NyYESEwkEgAKCPqATVk+EKPg5RoNQb/3cUf0kUf5zx95f6uuIO6hNfN/NSXPlyu84BoaX1eAO8r9364TeqHQ+6u8zx5/th9BpvtQkfBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5nqLM+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5nqLM+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BB9C4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726673753;
	bh=rQHkvEaGyO9Hfazir+on9ofB2BztwgtEQF6zcDiCT84=;
	h=To:Subject:From:Date:From;
	b=L5nqLM+4UkTKvh5S9TKcj/+/H7Tc5MHJKym9ytoKpAXPYhEbEX4OrSHWTg+ZMSNMn
	 S+vdr9c+28nGUtVCy66wVVAimGZCHh0gWgp/xJFJsrYG8/RQvs8MHcWn6t3c4jgM/P
	 J2dAoW5DSVrhIGhUaYrqcDoltWWuUF8EYiEe4QFxhL6Sru5rFuIPsijyAQW0bRw+kg
	 HalS/q9yEfWL7jGnVhwvkSWU/+MIg9qRyXqxmJ7+KEJZcDJDsAcdueIJiOhIgwzY2j
	 vuktZZI2SP01IOFSHK5NiwqH8+Oouw9l8hV3lxEje2h5ftYZEtO3opeauKpr9qxYbD
	 nzELQUoNrahyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97478CDD541
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172667375361.4144.4243386112475165426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cedf9c18a5e014516ed7fc69c490237cce155a48a8943259a3f3d2c1088ccb0
Date: Wed, 18 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726673753
