Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099FC31B83B
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773063894; cv=none; b=gxw8aXjCqF5KZFBjncCaxDWptBwxQoSfruMo6G2m1xINCN5Af9QimROfpFAW2jWQBY3XncxdKluHy5AKq7FcqLgsO8xA3tT7ShmF/PBEZq0eGVQnky7wg8iumwubx+zGUeqY0sdeDSrp6l1saF55mKPjQ0J1pQpP9ILud2m1Izk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773063894; c=relaxed/simple;
	bh=ZtjCrJg4TNG/mokySt+dzLTL+FPUXSuTIir+2A4I1WE=;
	h=To:Subject:From:Message-Id:Date; b=UWDfanfS64ttwXr7ERiEh+cc+BRrORH8aAmRBJ48MnhURX0OPDq437XMCOoIKuGxJdURC8iwvQv7LAaTegUW06k3mBqTQDes/yyi2zJcTUyV8PpZ3SHPpXY00h1UMLNeHJ6WMFFdKBNsxaPBqhz/EuuLj5ixmhWksRUQWcCMw9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g127yG/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g127yG/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10E3C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773063893;
	bh=ZtjCrJg4TNG/mokySt+dzLTL+FPUXSuTIir+2A4I1WE=;
	h=To:Subject:From:Date:From;
	b=g127yG/DgbnX4khAOSDP1W7WSjUnFmzBYihDRxpucR6Ht9HllnqWL0vyFflXYyI4A
	 xAkSzr5t7XHUPASmzZNQHrXsuKrU8uFfFhlk7MMhtkFwP2bD0zquCdqsqUd5d88wFi
	 oS+wgvxiQgbed4ByEWOsQI+mlE7AMHv8KR5OeIyuIVMiE+CJz3O2CYBLkO1Sl/7ZM7
	 l7o+uzNXcvBZyfc8knFvaqZZBeBLJCVBM9TW+StPifD/yVuGwchfPxgMxWgeLsWDqE
	 A7skANQOQ4SOSldcJ1cqq4rRFAM/QLSSXG6CqB1SK6g+VG6MAJ0X+fVYjuJNIfU69w
	 fxOmAPKD87jUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE48F3C263
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177306389358.24256.14087859585250891678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12a27e2f6ed758749bc3d6743b0b5a7782f9db3801ed99e8b916797287c3941f
Date: Mon, 09 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773063893
