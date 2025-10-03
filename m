Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2706017A2E1
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759522195; cv=none; b=XlfiX2G+1+pBwyQhsTTnBhrWP6tHfDmcvGUaOWlo/Vsndp8MTc5plU7rZGICfDpov61FfRhmIeWRvhcVSFMxlryyRMHKfRapv8wbCUiVIr7G9qtkUNJuOteWAFSSN6QnnBfVB3c6f9ntGJEsqp+LGt635ZpPh4TgfeEYgpX2VIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759522195; c=relaxed/simple;
	bh=vn2fqKONOS51E67qO0+AWivxrGnWG82mXZdPi3eVpgI=;
	h=To:Subject:From:Message-Id:Date; b=P6y14hW2RraUMg/vcPNllObNSuWcXXCYiFzPRH655GfoXVpdTp5b1PeTRdUF2BR62UIPoUxqHHNOwT4ZrN0hZDAjRngbuwsdxAr09U+gYiixQf3ac0FANW+piH2GHcyKm85df2x/T6uhn/AOZsubJyVVG/4ClL85H1j0UY2lCjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SU/CAqgg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SU/CAqgg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1149C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759522193;
	bh=vn2fqKONOS51E67qO0+AWivxrGnWG82mXZdPi3eVpgI=;
	h=To:Subject:From:Date:From;
	b=SU/CAqggmF/jmKAj3Xf2RDNBV5RLNhndApv9CxQQbCrOvEz8VcCafDRejn4upC5L6
	 nmH/VOC8KH+CyBEQtKn3+ZUzub2PECXdTeDlobL61jxe0MsfOMvFcOmKWzuh5WRqr9
	 TRLx55+upMzdSbWmICaiIRa1lccMgAFpjwa69bu53GzLHaC9b67mtkpHbyu8FOpuNp
	 bDaBEjx6tR+yID6dLbrzvFOMHJsMnMRF6a1QMsdQb3QrmZBq8Wbsr9UFGwgLZycy7N
	 CAkCWKtSG2XNzdhuHH9fb67azoBGsJ6nEjU3gpMhcdyzgX6THnRG6L6EpWOxIHkpoV
	 iGXr2jWIal+XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF08CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175952219357.17511.1448685675902561668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a75a5c2fc28e26e4452f9dfc9e7d7f5c6334934d1805922f3a7559892246c3d
Date: Fri, 03 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759522193
