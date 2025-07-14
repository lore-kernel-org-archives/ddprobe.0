Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F95619047A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752504594; cv=none; b=eM6DqGGcsZTp3M5OMRi48qvR7u2hSr5Db7m4yXqj0yAtGEiXOzFI1OkRh/Lzuv4ipwgH9hRJsWXPwyujutArzSIgV/acpDyzbLlhyy8TdSOiXfyvGsrqJOAUaYRWTBsjwW0eXC3aIdVy4mqKj4pwWE9YCRJLA6utH50qw3tkqmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752504594; c=relaxed/simple;
	bh=C2w0a6cty0YR3r3GfWtpMEm+p2+yJEnTs7GFy4qHVZE=;
	h=To:Subject:From:Message-Id:Date; b=C1ALdGgizI8gdHziUL4eglp1/D4aLZoazvoBRhSVP4NPcle119pPjbofNikm2nhwMZ1g/WopmX/WceMo6g/PBxSTY+81UUWq0EFbC+cUlNrp4npncaDYSrTYxSSfGpA5dWlWMiJQhz2CR9ZFWWDbeBSonGe6zo/sf0AtEJD2a7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9vgSBb7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9vgSBb7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A205EC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752504593;
	bh=C2w0a6cty0YR3r3GfWtpMEm+p2+yJEnTs7GFy4qHVZE=;
	h=To:Subject:From:Date:From;
	b=i9vgSBb7BTZhoqNGQckKU71qDTtfejyaTEThGFVCuVQ6zaS8pcIxY91xe3INPCS5A
	 gHvrE1LDutYNq27Ow6e/+WVaOhRYAbK2qKXGPgp6zSScaDbKDJb2xNy+B9eyRaWpSx
	 qQZZtG6L7bGZ4h6T0yESnvvG5NcMmvJFe5JvZwD4ZTxn5aK+NO74nlrm9D5zRXApoF
	 SQmiNRNvN0IeKQ6SvyBU7zXfV4Egs2qe0LwXR+CPYMpF4Kd4jG2WLIVfY90r9d0iFJ
	 kim4ucubB47dEtP2ToNj9g4Z45K+lRoWBve7sw8jyw14yrOqYypbA2uC/vXhgYcejv
	 uNtFbKmuc9ElQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B1AC83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175250459358.6786.8957176201889389612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f50979b5294673177a67a23a7d1ccaebd8ee518fc87a92227a7a9edca82300b6
Date: Mon, 14 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752504593
