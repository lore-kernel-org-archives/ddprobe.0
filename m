Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F92B35B650
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789843234; cv=none; b=gYU+CpDSI8EPSKTy7PrrVwCny7ONfL39qmW4Ee5SS75HMGP0QhAeZLVQkkBnUEfUOEB6xZswF47qSX8haKWZZSogWVM7dxrB4DjvXTOeH2bYVoFmvkHIspNDMYBKKl7lPh/Q7lvvGYlGyjcWQOB67HFGOICSwW8c56NKVR+h2DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789843234; c=relaxed/simple;
	bh=TlpUfepQDp2YfIGbY0QcoXT6EN2I1I8qEgIxnDzUbIc=;
	h=To:Subject:From:Message-Id:Date; b=iT9gswLZJtjvkDJFp/YEmtnW622Bk2KMO/oGNFdH4lIwW3CphCCSef5SHZpE7YYS9AcZMjDIi0QlI9MdJJW4NRz4sG2oy/C4X2ceRxdR3VpwxtwSII+fJFBgjJMys4k7DHuE8z4CexXDY9qsV1k+G5flZYEurx9Y0dtuB4DWNjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvFQgQid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvFQgQid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD8EEC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789843233;
	bh=TlpUfepQDp2YfIGbY0QcoXT6EN2I1I8qEgIxnDzUbIc=;
	h=To:Subject:From:Date:From;
	b=IvFQgQidtWx1oWInfx3VX4s44Pl8epENnfoTJrh7mhkkvmm6gOVTegC0Q8hfqvuYF
	 GwaUS8gvx2XB9439XyBseMfONHY/ej4b5G5B6KE4ZtPi+xbvFQMNHRA0B3xlhAz3kR
	 JAZFzgAQ68nC6mjyS6NxLuRfaSxvcXuSSk0nS8U6p5pqVBJyYi0y1rJevBC3p3G8iW
	 /LkvacUPEXRlYzsuOdYeZy7OQEQT4updMmFiAo2XfzU6fbso/f85o13LhuGEtVR9PX
	 pXNpjUFPa/4Ooqrc9WBu9czfqhTge5vr2uUJsMnDq6QkMjzfhaNP33Knd1vhDqbSaH
	 Rr83aeDurGd/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F76C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178984323373.29975.5763571397284354061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f53a699728e267d04b34d2543d3cb41b923c9c2b5b9c5e8ad485badc153db1b
Date: Sat, 19 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789843233
