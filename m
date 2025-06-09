Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D291FC7E7
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749467394; cv=none; b=pDr1fm6cLbkDDjX24OJRfIrAvW82PQ2cHSjAkpA+FQXwuuvnL60ON9rRF6ZJJApGEx2lLIuElu6R6I+0RHzrpiT7cCUNd95oOn0Xe7zKQC8+pI5ZwL8EOQt1MqPX4hVYjGKIk4RwCarMCA2jn7gyZJ+cSgIymv6SVALeUf9Dw5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749467394; c=relaxed/simple;
	bh=lx3g0ZhAB8Cx5RRO8+s7YijrS6BWdEp2LChx2xqn+AA=;
	h=To:Subject:From:Message-Id:Date; b=TcFuKD8AqxzFXqV7MEszZPnZVCc9H7N82lrF/VEfkbvAfk6TG06ERPWTDlKlpOEnh5FPogauKXfDu7QcTk9rtC7X5w0uDE7/45bqovnQ9NLt4/BZQksNRCsWIvBiV1joGp+THi6yqhooiNIxWejcJikadh+ynm615mYZzUZDsTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b864pD/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b864pD/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40E8C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749467393;
	bh=lx3g0ZhAB8Cx5RRO8+s7YijrS6BWdEp2LChx2xqn+AA=;
	h=To:Subject:From:Date:From;
	b=b864pD/3us/esblhJVYGdwhvaXFHVsfU041piZjqtozWuscwZYq0aBI+A2+8dFu+I
	 E5QjdbUdBVAxcG/6uFsUK0jdvRN+TkbtrgQMgQDLvkysx1EVMPYuzeYyPS9FE/89Mq
	 kE23v28oBnKrNRJlpMu+A0kkp4oTRXsU7pua9PH6u07fnBdS/A8ebnM8JbCnEOYD+f
	 qiA9IisuHcT2GNLTtgf3WWTriIKSegKx6u8Io+kW0tqkBiGKDuQSy+vCrLo0Sf0M/K
	 MZOy2fk4gpmlUyL3t1AAFfS9DAfvgF1HSTpbChU8WukxaDIw3hKLsRFvbjcA36r050
	 ajTCRcVQKcFxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F698C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174946739357.6619.7827928934463511629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa22d087e6165acec143151179778870b84d88920e9b13526616bccc2c8f41ea
Date: Mon, 09 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749467393
