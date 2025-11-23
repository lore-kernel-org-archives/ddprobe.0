Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B64D158538
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763890914; cv=none; b=J5D/vVLmgB+fWpckTvCYw7qqRx5uPpaua09jnaxH+FnhksrHeE2RVSGXC2qhJ7K3xiWQ4cX16r8u+7SV/UDt8Ds2eNG9a1tv8Ibp3+UpP9vXE0NOdQjcsx2VhDTXbkajYYVY/lvutlWmXSvP2UFI5gj+qQ0xyuhWxNMJKgmBu+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763890914; c=relaxed/simple;
	bh=lveKEHThIdxpML1OWC73K8TGG8glejf46ihq/WadAbM=;
	h=To:Subject:From:Message-Id:Date; b=Xa/OUkh+bGYKrAVsxTSpv5DLUcH2nt763rlCK7DgzaKEoupI9gLJpN2U24z6+iRXJxZ1PPTCxarAAiWwczJMwGimro9eh+RSGvHAZTJ5LA0OziaL46a5wKFoC7wwX1weBt2uyVoDVFySFlqwZbxEydLj/7P0bWmqH1/ZZ+jaGoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+fQdrtv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+fQdrtv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC678C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763890913;
	bh=lveKEHThIdxpML1OWC73K8TGG8glejf46ihq/WadAbM=;
	h=To:Subject:From:Date:From;
	b=m+fQdrtvY54ofSUkKm04Cm3uDMqvqgZvDVqkbcg5SJQ67U6bhrlEKVUDuOrh4dToV
	 m2RDXVSbBN2GdmIG9bfLKNM9A8jvo0cUMcFSAdS34rLWQVggoMwQVZ+v2HzhO5FRkQ
	 cScnyIYiqUyaAQ3CUpAdBCE3UE8h76taa2kEC84OVtCHhgfIELjEel9Rza0Zox8Mnh
	 LxnJwbrLHTAbp3EP1SPw02UQxfNyO/HAHYCqbTOWSuBn9OHQ/SkOFKlUq2ZnVYWW1t
	 mZE7sCLHi7qfS874JAKk/MT/jmz8YOvRK6eoMQVKN8ECeKKfttuwQR6XQrjEQb5o+f
	 o4IXHqvZWuMbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90086CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176389091358.20882.7308539710498024226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c4e8d9eb1316cd7a8c80f3dd614439b70c141f78debe987a5580e80688bfe7
Date: Sun, 23 Nov 2025 09:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763890913
