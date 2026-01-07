Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CAEA2D8DA8
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767782034; cv=none; b=r8kucI+sYTEaWBaT2elvnwNIGo22nncjXax0kwNeRcLtwqLc0OYPNbfGrJKBsJ5eELvBd2/o69M7f5145+Hv5QpNFOySSZt1+AES5Fg+9MYR15G8nhLAiXqjpeWCU9+F/z5tCOtvzS4VXvrXycW+e3v+1jP3j98dtm415Hyi+uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767782034; c=relaxed/simple;
	bh=Hi7FBUQO8FedftB/osiaQLaiofO0RBq30Fhf6Tfqh3I=;
	h=To:Subject:From:Message-Id:Date; b=T+IOFe2JXSpvrcCQTP6U/iuX3jkDbP2CL19qEi02RbE7QKHgmQfpN1/vuTiDbb9sMX3ojOgp/3iMYRwdOQFtYeRItb/SRp3JIH+Slc/CuD6BdtOKxvEDFUz0Hy9ji3YOjXomUNY31lU8HgPneN4z2WqPCXPmCuawwjy3ENVOnEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OY9Uji2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OY9Uji2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C568C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767782033;
	bh=Hi7FBUQO8FedftB/osiaQLaiofO0RBq30Fhf6Tfqh3I=;
	h=To:Subject:From:Date:From;
	b=OY9Uji2Yz3EKZP6j0x/IMrlHwy3Y56ZlMoj/TFbBjCZ5+h3E8UIIQdk04Wa37Kx48
	 kflaRmeCT8qLrVheE9OH5K3Q28yLslUiiziXiF/N1zsMaRaoq1Be5nVmm984aZW4NN
	 8lb+vXdUfyJ4TFCEBNnYG374UJ0mPfKWuUV5COYUod2HPVc6OZx1CoojL+ngE/AzZ/
	 uSIQTVdw++nfMozcKGBh998YaW8bordCmWMX5czE7a05oa/+Fm2EVFk55/rBKM/Xdq
	 EBSozhTtIW9M1JSwKHjSw8BXGmfzHSDta3Y/at2hqaZGBgeav+g144DeJQ+Y1CU0Om
	 4MFp70ZeWKHYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF80CD584D
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176778203357.3889.12703237223905187049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107eef10c60bb6f838139bd71145d05a9fcd2441902ffd70ae71386bd6abcd08
Date: Wed, 07 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767782033
