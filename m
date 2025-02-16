Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BEE290F
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 09:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739699333; cv=none; b=ojNEVJoHcDPHFHU3ZHxCtus3k3rubiSKTaYRetoECUNFme7QJQOvjKKtHKMgLEs9eXNen1BELBqMQPEKFvLE+pld+jfHTXMkSdtl3T2YmZp+9Oj9yMCGVRGNSm7IbvE13IKIzuoeiR0aP91n0OVAyFjYPVUCI8vdyPrOq5A0jCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739699333; c=relaxed/simple;
	bh=+If/IxrU4EX+HVPdA6sUc0ox1UMa+jVruUf6kRM8Dec=;
	h=To:Subject:From:Message-Id:Date; b=SqLZd0v9YcBjr1kUjPSJ/YkGTR4taRpe0Hh8re4jdKvjA/r7u8pns2zjN1YKnY2Pwp6WzztBrxnjOTQ3TRPyJU0oZAOPfNdhqbSq6Gm+EOJolM9YY7G6oR5AtrlouN6pNsKDqfVIOEGKWwGdqat8OiBZzJw913jMbQda423vdDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HECoeyXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HECoeyXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FB3C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 09:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739699333;
	bh=+If/IxrU4EX+HVPdA6sUc0ox1UMa+jVruUf6kRM8Dec=;
	h=To:Subject:From:Date:From;
	b=HECoeyXksmSiulqFshLafXeLJkWerb+DSBkcQGFFA4QvfS0phZQoo8dGTjE2PvaGA
	 dQxOz0GzGI7SltlWoSlr9zaQ4tx8mHOlt6hHkN84BXzWubV6Bjh67AmNYOR8pT3ML0
	 RdDFhJKZx3N6IqGfBZLd+ObX88QgpnHIQ5uiznecp+oUQvd8meyeeAMzUjujSPRgXJ
	 gyvko0TPyYgcnUwzz3+dizq5hWX6YNEDiSHj4n9evBQefiUl8invXQ40N331ewlXo/
	 2vfjhkBggYyU7tk153eSy67gotJhXS6wZ93NXPmC2Z/qvMH3RVzVM1zeF1Acrpe39i
	 4qBrlNols6/9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E60C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 09:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173969933359.9923.7756625599200718937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0283f4763a15d75aff6114e39110c18b5292480e2fe22017d21f1bdb3d8e5fc
Date: Sun, 16 Feb 2025 09:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739699333
