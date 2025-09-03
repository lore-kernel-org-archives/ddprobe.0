Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6D62BF00D
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756919396; cv=none; b=h7vdrTm9CnHVesk4U8aLFkfanqoNaNbGY4qWKQ4IrXU+nI08AU2mEs7JtoGXHy/gYsZzW4B+KmU8xBmbFhygw6PskGQt9TaVW9dQX/cECZ/wVk3xBoLRxqS72WlTD9FmwPyhCmDhPUZ5Rfd2TBrdTtnjmNgQRirtLx2PoGLD7QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756919396; c=relaxed/simple;
	bh=s67Sl+7hmv8Ih0RqeetmfYbhw3dE9NHGR34Xx+osVGQ=;
	h=To:Subject:From:Message-Id:Date; b=qHGBL33/XhyVrbEdRMNOBkhO4C/AGUwShgDfcp0fq6BImRgiF3D+43snNiJvW3krfCc+yz52hgT7diZRE6h2fJERLTkJj0zMq9t+3Hy5j7rHxa8Ue6lIom/M7Lfnd5T/aqKWF+uE+V9apAdN5RIlBvBvXA0yCnKYXqXdtz/1Z20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBm71do2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBm71do2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF01C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756919393;
	bh=s67Sl+7hmv8Ih0RqeetmfYbhw3dE9NHGR34Xx+osVGQ=;
	h=To:Subject:From:Date:From;
	b=HBm71do2HDMS+szg7T5l65gumhgI/6IISdRYDacPf+yoDatjpA5l5/ejKryrBFxlM
	 Mn/cExNA8Wd9cZNv3McEEARu+XHpq9ft3SDoV2M+PZskVP9mXgTlTNGRqkxlNQRQm2
	 7C4FoiAp5k+Wkd4s0/kf5n5ud4ltkl7hWD3Zz9HovAFk4rFvMiSzEHCeTfXDs3O3tA
	 Ldk25s4G/J5Oy5hqn0rhHxIMyrAqO2AEsx3xKek5Of7uQjnx3sWkq59+D9Qfi4wg0f
	 etjo62Vks5LQXRKeoux7LEsoWH29olXogeeqSdmZQMfksIb2fi9SV0igTbF+ncFtzL
	 sZpSlpm4BwhPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90333CA1011
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175691939358.14395.4432779008919335466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4946dda3b00896c59f96442932f8a3dc40971e34501c08513fed9bbf73f5f5c0
Date: Wed, 03 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756919393
