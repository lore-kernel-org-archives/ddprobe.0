Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843C3137C52
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755980394; cv=none; b=jm+zE3maDw4AYLpUSfoAWKR/tmP5HbZ6KA1Cv+T0RcqcPu+6zxg9rukIbJY2rx59Lh4OZovu0VE2W1x/cDSr2Y4X9h3qU3SUTnoVUJ8QZSOTxrxZ1ABG1qyHRP6ffcFZm9/PjWVFkuXQIlv9BDc7yvlKtgwIT80sf6Uwu2IY37U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755980394; c=relaxed/simple;
	bh=pH8QcNEltKQ5Ff/xVK7v2cmvcqNCvcK8yk2+EWG5Vn0=;
	h=To:Subject:From:Message-Id:Date; b=VG3/oa5zYgUXUeYGT9MmKfi1CLeUMlB+ITmoisPQmxokymv4ZpzqGyIZSc8SFtIrOWwsra/m1IkSrSsdlETW5gDkl+1GKegzsdTna4DHbfeTOkWdr4XyUeOzi8MAmXM70ar9KWHHCnOBdqH3rdHErNdMlAadh81cdzOnGmT+nLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpklOwSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpklOwSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A582DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755980393;
	bh=pH8QcNEltKQ5Ff/xVK7v2cmvcqNCvcK8yk2+EWG5Vn0=;
	h=To:Subject:From:Date:From;
	b=qpklOwSEhbtXMDW3f4RCavYggZAwU07lNt5GULBUMnQSQeY1oEW4AgEhwr7ykvaUk
	 PSiW54hdQ16lMUpOa5gKPO/exOZpD/aoErtqvA/mjtfMI1ONS6GBNbt1Ao4WP7aCZf
	 3sc4OUou+QsSxWPB3d220S9gRGDbQW8y9xhc+OklbjaGxmZQN8w118EyNg713YJXkt
	 ABXrs/CGW+AFlu4CZ5tJAx4ggRNj5TJUeHqVhRrPkaianJ7pfeFe9TQMWz0K3MXHCD
	 gpUGlUG0Fv8ArgIHg5frkmULp9YZA+SsPR9MKE/BMn/Rxn1+lAobGUIdJtj1UsdPgc
	 qkptwrPPhKcUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9109ACA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175598039357.20827.11585766048102127025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33fa7d4edf489e58040dab18d7c2d6ea892183066365896bb806c5d3e651f518
Date: Sat, 23 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755980393
