Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41CB3C0606
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774944294; cv=none; b=kJDeMQQFZbnNfhq4xclTXPqAg+8+qDofDH+az40qp4pW7pGskFmwhaUvRJBLQLx8CFJmRJiaU7MGqrTrD46RBXaCz6kuy9PCUIrOKCawM3OBfhZ7HxPSqV18eTNIo/YQwlJ20ixXLkm3TDFL8uQo46axwG2PLDXROdN3SKiJRTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774944294; c=relaxed/simple;
	bh=JWlfXLlNRYUcXROCuKDT2nTzFTPrVqSBZO7GsDAMKzg=;
	h=To:Subject:From:Message-Id:Date; b=afzR1980ukGhKe3GvAJ4HQJGlreI/zlPH8ir1bSnwDs2zvA0U76Aya94ZfWj+HHipqX/RXkkxmFtWnuftORctz/Kiwr4uswGW1gVlWRoS+0PbabkGA0Hqzdf0S8EQi6iw7j6lTRY9vIJwj724auMePj730ijV0+vJxS11enjfkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7ENnVFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7ENnVFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B42C2BCB2
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774944293;
	bh=JWlfXLlNRYUcXROCuKDT2nTzFTPrVqSBZO7GsDAMKzg=;
	h=To:Subject:From:Date:From;
	b=n7ENnVFKdHJfCncCBGxzBBl9ZW4kd7gLgzmApCHAeJbcNx9Y09+q1qdYqMDZ4fkTw
	 e6P0vpKu1W9MwAkIaPa9HqcunSx+oqdyC0y/k9DBWuu1VWBOXUhVAEtV1gNeXIZ7sH
	 dtoU2aqKAk7zIWIOBCvABztvf8x2TB2zKTM/ABrif8ebmROlL1Ajp7vDsHiT7t3zqS
	 o2IuSHQhx2koX9fVRpLL6oFI5T8TX8zdE93pf2rBLySlRp0XtMhIy8k0TUvPHnVAHt
	 Kb5UOq7/7NbUxZYyeRYuyRJou1UT9DAQYGivq5QQbDYhkR76cZ+JQYPnWRuN3w8Q+9
	 MlsKZKr+4kplQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941B1FF60D9
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177494429359.30657.14975621811342402806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ded4ffadd0f969c24139de8366e6b8c0b54e9d89f828948f56251bf4a38bd61
Date: Tue, 31 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774944293
