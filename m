Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A44A257854
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773819894; cv=none; b=Pkx8IxyeXXDvp31tnd4QK47cT1x02zaxWGWV13ecfVFceARKhIS7ajKBqLKPid0k/P7WcZX45D5j1FQ/LQR0GkEBiqVNYt+6KhS3bHYeAw2z5lVyupfXZe24/I9NGgzSdn03J/crUcJp3ptwaoleR7jAvcr/7NpNiWGl/tNgDmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773819894; c=relaxed/simple;
	bh=/QvA+DhuVevsWrS+mI4kNB3Ximgtu5hCKTjsOzKA4D4=;
	h=To:Subject:From:Message-Id:Date; b=HzwPQfhCwQBb9dgZtrlnLUSed4T5M5HPa3AYcnXppfFkTbvd4Zca5HRQr0NPPo/ALoYuLuQQNMMVVn22N5vYnb8+RcricFt1CkN4baEeeEku0lTqm9rGVzRhGnVqvNoxcdXBADsXjKbWKOjc0rEPH4LCOseLXUrUok14a/1IcIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OViUpmL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OViUpmL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA21C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773819893;
	bh=/QvA+DhuVevsWrS+mI4kNB3Ximgtu5hCKTjsOzKA4D4=;
	h=To:Subject:From:Date:From;
	b=OViUpmL+D50Ulf5FDIaUeE6YwKiIJqTy4P09oc1dQntuVQvWVSkN2Xcjsx0SigaoO
	 b9Cr1Ihnp2aa69pUyOWXNXyRKHwnNeLGkVAtsTWSOwE8cXjmWqpvL7RbsEl6WmSCMy
	 k8L4YDeDdUfFS8MCkQ2UEjvgaGs6gZy8jEDVCF5j0ehHXZ6ZicAOo/GFImFT6cFDi6
	 pZbFeR6dmGUPqFDpK5Tw+fv4PMPOED5bKTtchWK/KCSblJVQQLma2EAo3Stle/1h35
	 neJ7NiTzzAt8CyTJKpJobskHuLRGAYrK0wzxTo1I+XOv2r0Lz0pwJXwGyr9a8j5iWL
	 3U+cqwNKuT13Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C330FCD0CA
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177381989362.10777.13476962180280551634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cba4af4b033eefaf17e19d9b33cca94cbbeedd9a8089f5800aaa88e07263208
Date: Wed, 18 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773819893
