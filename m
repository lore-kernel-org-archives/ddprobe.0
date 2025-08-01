Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C1F1F4613
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754036994; cv=none; b=OOS924GgJYcwzI6jlE4lw7VUraehl2OUg3r6RDR5joRZbo1vQHguNRxNF3QlRGa1rziL0pt+t0eKucnmT66suGCaqFn3pwLSyiYN1iQTwWwMkotkzO9KlBJxdV0GRU+R2wiPBTpb0TkgRA80k3KofoZocLUNFJ9eo/GGtHH2vB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754036994; c=relaxed/simple;
	bh=GwVlDTul4lLNhgPpyZe6VMpOkbS6yVftM3NHC8O9W6U=;
	h=To:Subject:From:Message-Id:Date; b=Z/jEj3XG45wWZunvu94juvNDL8ke1a9AVWoBaoa3lyxaYYK/gz0wgiMYlC3I8u42LFNUMEljvk3Dizm5UN8A7dmYv1xMYBJQwPs4RK7jh5iMsjogK4nracP93AtLpXr2Q9xeWZKi4yGrcbDtA0cY810Hq2oFycq6zkvdwyYzkXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roWfcfhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roWfcfhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7423C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754036993;
	bh=GwVlDTul4lLNhgPpyZe6VMpOkbS6yVftM3NHC8O9W6U=;
	h=To:Subject:From:Date:From;
	b=roWfcfhCuWrUe9jp346NvbXj4Kz+dVBmG2LbAtBNmxe3onGPLMhfqLfRGvqLuJ6Dp
	 eU6aunSiyUUWK+pLxORVvdKlFcrz04mfXTIDiy3m0ig+R8gH1nF8/kzkrtp0QNkr5K
	 09coJ8olnOKDcOe05mgsVYmM+UF5GgcMNtwUuqJ86QHpY25jH5hq5wRgsxhYp7pQnX
	 HqgPeNfXIjqbbpvepcT7RoyRpfMmtrC83aplGG/P2b8OVztuYnsP9eb+MgJE1t9erx
	 gE1HcWxPkNrRtscIrJ60MUvSjMJa0IoYZD/IAZkQCJvG3eeeSEvYLopmfk15Js/H45
	 EMqB4Ke3RLV1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98195C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175403699358.16237.1450400207362225976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f2ef1c5c92dd2be84aa48c4c5b562482ad4c8fc257546b42ca47d71a640250
Date: Fri, 01 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754036993
