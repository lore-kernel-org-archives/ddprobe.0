Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24477221543
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755472794; cv=none; b=PHurz3gr8Y3hzIUHM2AZh8swRdrHNDktvgxsEJ7hh0IzfqAJvvItn9n5OrwJI4cSUqJgf0KNy3Z1wIxOsKvDYh6mqW17dKZyrV1Q/S89vjz6TQx2Eos76Yp0htA6y9dcf1pKecPlQqyXK2oXERm0PrGEt6KndKdTzDwmckE4YGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755472794; c=relaxed/simple;
	bh=cMXOcVmLgjgyepXkStvJj758U2TXyAWFqWL3ND4QIzw=;
	h=To:Subject:From:Message-Id:Date; b=iOP7zsyERvQlrWlFKEADjsWDa6ZFHyl0pc6unG4CyTttpKD8UKCRbMmw4Qtt/303kHyV5u1Pb2FnPyMBicGS4h2Cwpx8C9hXsCxMAb0gAEXmt53fhtpUkMjYBN5zFnKu0tOBNKo1pURbAU1mvfMZ1nlMgOjkRUgnqVIj528yJmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hp8y8+xG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hp8y8+xG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3387C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755472793;
	bh=cMXOcVmLgjgyepXkStvJj758U2TXyAWFqWL3ND4QIzw=;
	h=To:Subject:From:Date:From;
	b=hp8y8+xGtqiHTaNMPm+FCIm6P/IzII8I5ZS3RMyx96J24nNY1+sj/6apgjnAqlUUf
	 RvPN6l650vTkQp9ZhpmJtoterSMcsJrSk5/IvaFA1hGFlIQeGQW0qDtj1sUx4ly4gI
	 p0WScHkEJqI0m2AVBjYsph+OX087dQoLbCI5ym63NvKn5UnGUSRG7VpoOXZ118u0Nt
	 f1y7GCBe16qDhxQR9YriOxQe5X7ZtNnzhSavKEu1xRE1x0i322aY2bWBc/8pO4o7Y6
	 5tmIlD+EUOUelO8lXgdzy5R+/U47Wlwo8zAtYcpaWHHszPMaao6G65Cfe/0MzQqoIN
	 F+uUW3GbComDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91769CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175547279358.6231.13435122036170368603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf0d437da96f8cf6085a2573a7165b0f35a820ea11ee10bba4a694a7df6c79ea
Date: Sun, 17 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755472793
