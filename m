Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E5980C14
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 22:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713306563; cv=none; b=gZdL6QdXoCe0o2W5CQ8DqDiQdcc+ehJPAyjSwZZYSH70YHwyRHs8Z9aM83kZ8VOcqor8yT/meyGzItOFlwG8JVn+sLT4SA1H48PejMLzlAlGQcXqhXCiuxpt/X92/HrBr3lWQaoY+TXPTnTZVDnNybc0ykAtn2jMHvDyTGo9HP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713306563; c=relaxed/simple;
	bh=ce4pC553j3qN6opB9SFEl0XPyhBguTgSWQca2RuC58U=;
	h=To:Subject:From:Message-Id:Date; b=MvQY5Ed2NZ0PZnagkixClrRaD75Ed776aoAMgmuz+y3SoL8wNRnCzT5q2DXrKHWVT+0+Jl6amq+C9Yp6QUZREQknJp4pO+h0X8APFK9dWdPzh50pUtLTIxCdMqQeStn4qy8gK/fSQVnzhwg6LlRfQjYpgBgOpmUtGsSzqYrEQTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AorM4hGY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AorM4hGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FFBC32781
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 22:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713306562;
	bh=ce4pC553j3qN6opB9SFEl0XPyhBguTgSWQca2RuC58U=;
	h=To:Subject:From:Date:From;
	b=AorM4hGYWEfyQu+eI8u+o8vUjvlRjHTDyy/h7L8J7InXLRc5dcTXTj+Ai/PPcNNGE
	 Lr5JECvchxc0HfjpICGPAWKqHkyhaVOyLOi+O5M5Qhd4C24sjNpxTSD/7V68lQp589
	 uhmgygIhj7D2ybeN2evn/E1mn0hSMjfa4yh3OrXFVo2o0Xj3oX9zTg/e5x0vdIS6M7
	 Ru8vwEzWMMRozva9w1qoeDZuzZV6K6/st9jEjYFZIMJ9sfv5cHZvO1M7uCX4n1wUj2
	 kSZdePmRGOlDERPWnnOutwdNSH+4xdk4sdrSoAA6U+po+EevRqPPSN2d2qIegK8vIQ
	 ScS2Mouxz3koA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C47C04FFF
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 22:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171330656278.30455.16577976319003097163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b891cacfba08491fc90af287fdfb5013fdf40452133d7f61d3db6601cd6bc80f
Date: Tue, 16 Apr 2024 22:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713306562
