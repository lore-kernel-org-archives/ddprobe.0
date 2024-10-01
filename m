Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48EB1BC063
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727765753; cv=none; b=jRT5FVxIHuIiL00A8O8aSMLdVlyjnOjIdHkRrfqXtEprsY7CtqXBZzIxayHYMVCg8fwhLnQtOAXzsX10ak7qvK/c6EvzFoiybBvStCK0qVVGfxmMvqXL3v2q3G54ZgLQFhE1WvqtvyA3y/ltifP1virOWLy3G/9rDnGNI5tJA2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727765753; c=relaxed/simple;
	bh=1CmRgH1oEe6mxI1uBK8VQhdoEBWI4KsoHbhmKolyqm8=;
	h=To:Subject:From:Message-Id:Date; b=qXAkgYGv3XuA/tkUj6o5XkzqFHcbya1JGyoPI8XaLz8ynHoC5NZ35vOpRHPxiIoZxUFKs2MEdKHfRXy5kg27ykxyiKtW+ZU3oW1q6KbovmBQsQHz7GAJ3ysHO0GGkQMWb8+OBCoSXqYh0pQj7zyUEUcYWLZddMa7pwshw1yAVbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEbA061a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEbA061a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51AAC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727765753;
	bh=1CmRgH1oEe6mxI1uBK8VQhdoEBWI4KsoHbhmKolyqm8=;
	h=To:Subject:From:Date:From;
	b=vEbA061aiSH+CMguboYL7KmBOXt9QR6Qrgkogt3gc6DA85bL17gycZDA2MSh8pUwm
	 pw9AEHbi+H2wOUlfMQxI2NFvFfokgU+jGqiKm7lDMME8nrdk2EWmOYb0eM9JcQ6MAe
	 EpAAFmx8Ohgpd6XkE1qxv2/m3DW5tsbuXxhIDIpBwcw6CREnVqzWgsD0gIiX6h2uhL
	 45OPFAtfyS3UthbdbJSRkWffgnaXw9O2o1RFVWHojUw/Fw3mR29YHThTZJuKx3HIHW
	 NdJqXQComu/Pvo/vUqGQIUIKrO+zUeUADsVNrUZf405+RAK5lgLq8WITrK06d+1TWJ
	 HP2sTk4HuPVbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987E0CE837A
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172776575359.393.9392706696765735885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea814f35aee737006b5b84c8014feed6d9ee6c3ad274585e0b57bfcd8a4c2056
Date: Tue, 01 Oct 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727765753
