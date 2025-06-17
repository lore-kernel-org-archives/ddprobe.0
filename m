Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2944ECA6F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750120794; cv=none; b=hL32ya97SvlETMv6WKX8RJ0EG1B03JjwG4RZ0bSeL4y9L9FPkDmtjWyPF5I4tdnmxkKLoTfPB7ELXp+qdhkzaLOOtZrowYLoMpjXYm9ZjWrLIdVFQs3mDrKFMJVIqJHamN9+eyqD9V/YAZdvLPTxj/jBor5/i71JVUXN/8ubZ9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750120794; c=relaxed/simple;
	bh=5Caoi7Zhn2YdkqOKASWjbpjKaMPiqCdlQo1EzyyeznE=;
	h=To:Subject:From:Message-Id:Date; b=KbOvniTafSX9ojmaDMeB+iBSd650q6qnts0i2dUMWQeNl2tpq+zja8SxMLb/3Ocb85EYN4HBcJwpYAUbWgLwO90fEgkWOiWezPC1e+X/7q2pE3x7DXfkk7PcHXGv9F4qa0LdoiVQi94hvB+6r8763GndR3nyK84JhLjy94/f1vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/6sd2CQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/6sd2CQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3387C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750120793;
	bh=5Caoi7Zhn2YdkqOKASWjbpjKaMPiqCdlQo1EzyyeznE=;
	h=To:Subject:From:Date:From;
	b=i/6sd2CQqIMEGrTBHgmzNEANxRZhKStDk58FDTnoQyiPBF1oAl/8d36awtk19YEGS
	 qPWIWO26dzVk1UzWvinzS0tojg8SqcVw1StYT//wHMNCboop/K55pNH94fXLWi5kG5
	 AiQtcYpjB13dTqjvSId5eHNFRJVDyxTLXD/noO+ii8cl5414SG1POQQuLVlt45j6Nr
	 HG1rBnZRi/RJI6/5A5gJd/PjH5qvppTbFluBE+zICc/G/fdBI6XC92Zh6bzp0z0Nkg
	 MNi/DYtyxKW2B3QW738QL5T77SEkJS7Is2AjZkxGdh7QqISp4Ssz1prK2WkKePR2dR
	 /mp5rHl/ktoqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F760C71159
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175012079357.2167.2559956132741164566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389ead643e98f16e8c348dd4761e91b775bed25c7b3f395c3405c6a987c6b57a
Date: Tue, 17 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750120793
