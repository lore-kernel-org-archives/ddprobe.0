Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD3F2874FB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749205794; cv=none; b=f3vRHYd+3J9f/haLe5YMY7JlpaNk4jIpGPkIzhK0pGAAsWXN1J0lgCelis9JuNX48ClnQvkBlDqhfSXcH+VgsqGk08WV6NJBa0IxNUb4RxAFkCSALykGLQZ3WjDbDsK3vNdCvnuDQ9GDaLMvfbAYZIklqOj9PJCoKVdk3tt2vNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749205794; c=relaxed/simple;
	bh=dgopVTYtHlc3l1KpYruQXWohKYEXMSMYD9xD4Pu0TrA=;
	h=To:Subject:From:Message-Id:Date; b=E2D7F3/xa+JRnN836dL2ILfvZAheBfSAOH5OXRwsoZa6a76SIhuNxcIQn+d3yF++YUrJQB29yTdKBJP9sEigzlljsO13un+sW+i9YCw2sEhOC6gRUzAbj5gQDnFCCKaxXLSLkDuP/Ok4wHy/4eUT5GD78Qdw/voyA5+AA4nQA78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJE1nY6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJE1nY6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1048C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749205793;
	bh=dgopVTYtHlc3l1KpYruQXWohKYEXMSMYD9xD4Pu0TrA=;
	h=To:Subject:From:Date:From;
	b=YJE1nY6zHsaXZlRIH/JE+LZ6jA+1UBqBPrfgvQg824mqgaq3ecgcRh3e72rrFGCMA
	 4/Kgv7vpvxgRUDz+Ly9TTuoekiU/Z0Xk7VZTYgNt5iWqkAMBRz+tLi/uK4ow2UFERK
	 WwNDuBqRtTrT6R0omiBOUBge/buFsc//2IrtqMNbcNoZK7fxaCrGJj0qx4EtqagwTC
	 wdabzYd167vd+oKXD/IgTRfDARcpKp5+ghIHwL46QomWQyDbYOtw6SrN++0gwOTi8J
	 UdXyJhmMofxCo/kzJzDeShkajqBGWh9ZsmiW8QJNL2IXRqIc3oVO2qD5WSUJCIZ7Ek
	 iFYVRZJoRkd2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982F3C5B559
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174920579361.22553.7831351975637852160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a636614e7367b2fc9bf2ba3577c75b3762a17069b382843bc3235092b8493b
Date: Fri, 06 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749205793
