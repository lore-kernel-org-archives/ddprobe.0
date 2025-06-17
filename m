Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293451DE8AD
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750137594; cv=none; b=OzRLZ486nk037XfN5i5nX4oc7xq7e60C2+vvk50H5KbSgmBIGrpznjJCecOXyymF2mUhEjZRlnD43JhijuuI23rOhM4xz9s9WaKVyt93lbTq7aZ+WXvyDHRhyBzU64Q92i3ry1MLYlfYEDc92Yu47Zwgikl41D+0fgGqJfv1J3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750137594; c=relaxed/simple;
	bh=irfYWSyyFHH3ylbVKzJua4VfHfz1bfUUwkCgRU3amkM=;
	h=To:Subject:From:Message-Id:Date; b=pEHy7z6Mm+FjgditbBYiJJpuKOYjmlt4VIUxAflar1noINWJNntk+mePxiWGcJW5bIQa/1f3yYdqlJEAD7G9cMEO98qp6mGeGZdbZI54O5Ug6d/3LlKUH2WOs7mcL0AuMHzE4AknMAS0Jc65juRE9INwPfY6KDuwQOSp610SXfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=It+psgtQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="It+psgtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F1EC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750137593;
	bh=irfYWSyyFHH3ylbVKzJua4VfHfz1bfUUwkCgRU3amkM=;
	h=To:Subject:From:Date:From;
	b=It+psgtQsshZN4P7WAqXRNY4IkYVTT6Tc+vCTWDnc7JY50W3WzyVaAoXG9Bfzpr7n
	 x+gJj/szN3swp3IXFqd2Tjj5BL96oYXkWQV/moaKDCNR7z/2DPE/oMhzeMAk7joy6/
	 zTKdeC5QFg+ijtRZIjckvG1UkxaFbr232ZyQafaESI4Y3lxp8CwiStisTSnuIaATiz
	 Oty/d8fnEg1C2tz4wXExhJlQB6sRQX+F2VAkM8HHB1lILjnQyKlyAgQzw/KVL3tsNg
	 HibURs3nPtNW7b2b7uQTuHOqPPVlDQ+Qe/A35TDRK9zbCQuiJ4k9hwYbK1xVLFGuyD
	 JFS88A5sCNx1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF1C7114A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175013759357.9777.10698199274737589355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a212f05f23caf88cca850e3b8952114040596c788fa7cf6bb2611267fb1a88e
Date: Tue, 17 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750137593
