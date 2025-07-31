Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27969323D
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753941595; cv=none; b=T/hQo1vqD2b9JxPL0eUlgQU0Bc1Sgh0UElx8I9V0mk2gth7cF62NTsc/SqD9jTI4vwkDR1NyinJDSuzUrbFd4McF9vZMQfMLwyVUUAz9Unrj48Ru/EE8E9i78PCB9oQkJUDrzXHgjPvWW5LbgPtIPggodw+whrWeREYP0TtuvfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753941595; c=relaxed/simple;
	bh=9wLoEFK7xvWFD870U7OsslJnbR3nMtes0FF45X1Sd6g=;
	h=To:Subject:From:Message-Id:Date; b=HRwWf2oe6HsH2DPstcGULFTzQqeIMX2cczkB/CnzhTDWrMxgxGGcNY1nbEU8sv7gZPfsNlGoQyzGVFDfk3chSxQMAQb6n9bBU/3IkRwrweEW7o9pHpCY4PQcl1vaIU1KkOxH7uQHI4caSLqaVBck/KbHTiTQdy/U3amd83ij8V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cN8OEZ+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cN8OEZ+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EB3C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753941593;
	bh=9wLoEFK7xvWFD870U7OsslJnbR3nMtes0FF45X1Sd6g=;
	h=To:Subject:From:Date:From;
	b=cN8OEZ+SO3HI/2xs8xpz77NB8QNnVuWMenqtWHESbtwIXVm29ZQ2yZG1Vkb9FFiXM
	 N7iTJOAuhPA2eASf3rzbYTaYT50ggMe7ljxaAcJrgA5SDUhN5kqc9mPotqWhpR3CDX
	 u2GeBHWPAsvyQ8Ib7eXdcmpZoxK0qfNaMkxGtOO3s9b+JYrNXtfO16e+RHqP4WYbEc
	 d9pO6TiBHQzy6UgXPfkYU7kloTNma2eCz/pbR1X/rIVI2a9oZVQoJ6qsQEEnyFrkNl
	 H0z1lEk1v1CVskrSEUXHvf8mjSlzxfQoUogE8zjZkUPXF7wmuBl7La7APGffrNgcZh
	 nsz4vRNL9EnWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948A1C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175394159357.2274.3478161733936414067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c447d0c0eb2f7c4e2709d425859316844177dbabed74086dbc6265c7816532
Date: Thu, 31 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753941593
