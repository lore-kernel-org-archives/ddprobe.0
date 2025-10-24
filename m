Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253A32D249E
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761309594; cv=none; b=JUr8sMHKru/6x5fcWb3espONl6FhRwTPksgbFEK793qdf8HayJlvw1H+E5CPiWbMvCJQnZR2Mpu7jORNr5OR1GJ4HcWhewCd5h/MHXADFkSfD6skn6vPEB0aI7Oz96+oUtQQRptiZHq7Fj9WPcNSnrPUPn0qrz+umAxNN0jGgMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761309594; c=relaxed/simple;
	bh=0UibhGsIes+/Ej7ffLbMbSHp4YCxHGx449xCR3woH4k=;
	h=To:Subject:From:Message-Id:Date; b=lcRVKrsXnLLLNf8+UHKhms8ahVR2/+dILIYwpTyAcNUsgrMKr8B4V8w8ADLngmFX5q8TGsi+zzwm6TaqFkNj0NuX54c+gx4kiWjJZDdqOu77M0ygY3CbFC4sB7JGeOb7EyDUgNcBM76exjmkwvJk/ZN48cDRQ5R6WewmTyIrkeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0U3jlkq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0U3jlkq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F083C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761309593;
	bh=0UibhGsIes+/Ej7ffLbMbSHp4YCxHGx449xCR3woH4k=;
	h=To:Subject:From:Date:From;
	b=p0U3jlkqN0WeqWiZRKtnQcUQCzNHWEz8aCCw9KsjuRvuRdy4/lTPbtTBnA93xXwiw
	 K5ByVXgLxkihkST4hvnwLMbueDFQ3ssdBQniOmZOO40zf0z9PkANy/2ZeynIkLYPGn
	 8FfvWpPTDSz8VQqYGbABGPj7zwfSeIFJ/+UsMkqfsjlayuUgpfmSXsFV9fBiI/pwGL
	 W+AjPmST1EovAUXEeD7DoeLhjPkWi3BMUjDg59oK89jx6Ph20tGu3gBar15GUK2lUN
	 I3zWJCM9HbfJzU76Z0blXiLYfxoVhi5t3h1QJGpRyUue48PRY52oOZ6HtJyqcjN9fs
	 U/8h7jOV4buug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90203CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176130959358.17663.17781080835489559270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28a785647f5d812234dfa4a910e2a3d92afc0c6c389ef1234d9a31e68e9d011
Date: Fri, 24 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761309593
