Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411EF1A268
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783645714; cv=none; b=qeHvgPGqVCaVgbX/w0XakhZitDTiUcXwYRoqL7x+HgRhcH0/CGo5aYEETZpYRc6TBPCWI0rJRC4j6q1OgJJj2IvXN0Yl1nTbAkrb5Loh+leEEX+yZosKprIfiqlrsfBBSHHl0oE/gS8qel/TkFhp8xWzOeFcjyodguBeH8z57Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783645714; c=relaxed/simple;
	bh=cjnNZI5MHeAo77kZ9lRUvRQbamdpdFgt7BxfPDYxs4Q=;
	h=To:Subject:From:Message-Id:Date; b=JzpEtsAnqhLsFRteU+LKDyHdiKuQl8DM1pUvozwTjq5AIslcvZkLlIICcXnBBdRNNiT4IGOp5QhwtqZwB70uFfXUk6qbRPPAgIAxl1C7DYIpIWflpchlvf/2Ja+yTz99/DPHwKuZUQoTBJ1jjaadt6HzDL8R3EBjLENX5EjyU40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CA6UeagA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CA6UeagA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE06C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783645713;
	bh=cjnNZI5MHeAo77kZ9lRUvRQbamdpdFgt7BxfPDYxs4Q=;
	h=To:Subject:From:Date:From;
	b=CA6UeagAdaz5aFuOSryrzUn1c8ct9geAD6pzT3HMW9Gz9U3mLcCYqcys0sAjiNJdO
	 NgQT3gfZlZdFAf4hsXvYj5QkVKCvmdk2gnQZ47Qp5N0rVILM/KZ4dLsXZc6uFc39Xu
	 7ww71iHe9Ef9IDdqyOOkZzovSgK+HioZRUDWNJ91xQadVaig96lN3ArQvjllLoum1w
	 0yYq+cFhcK5G+/mGxXi1qj9H9utsi4/jmpN9afb0DHVXQX34yWOmEyANfRsI99YmsA
	 VjrYdjCW6+AXiVYJyQkU/Ybj8mdIXNvsGXcNGY7+QtA+OSJun637tWLZokYZ6Z4QKW
	 9tabKk4afJjrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB164C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178364571368.16992.1860140192322454261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65cb28ef24f684c0d510619bb5f558bdc38ed1b6f33f4ecc5b64359471402a75
Date: Fri, 10 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783645713
