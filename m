Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3262B4A2C
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727742954; cv=none; b=e3h8XmzRNWd2odQJ5LZhHoMdJmyQ5zwOcQDTiN7nMlTlm8bpp1kvC6wJ6cOu1lau5zu0KivcYY7Sy5gJvYTJmRdMwIFapg/R9vdgX+2WQA1gZ7O20pN4IJ9Q6L3fiszOvF2QLJAqJP/jC2ExTyZbq/6ZORR9Z01+aVVMp0bukXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727742954; c=relaxed/simple;
	bh=lAuNo3jgOuoWmZ26+WoUdAmpOZ/rMUtkByPiPVJwMVQ=;
	h=To:Subject:From:Message-Id:Date; b=baeISdYSbACSqC9ACK/TT5SPyAK3Cdqs1bju+R8hR8d2gd1sWwD8oWVKs3aSDpb23+SbUm8HViBKFJ3NAy0ghzBn8eFmgOiwrXeWQjlzzrtUHTukweYPGtFP5du/4zM0Z1pysDVpWNKRI465BEVjWZoYi1jJxSKnjgijLAqhXBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdgQRlEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdgQRlEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B277FC4CECD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727742953;
	bh=lAuNo3jgOuoWmZ26+WoUdAmpOZ/rMUtkByPiPVJwMVQ=;
	h=To:Subject:From:Date:From;
	b=DdgQRlEnDbpGofhSP5S4x/dHSCohGsQapZNCRgM3zMT8qzJb/FV4wgXTlls9JL/CB
	 frdEZga172CtZf/gS0WDHcXT1sjq0URsZEe1w5HmE5vSw4h94BFNz6bsqw8ftyXK8a
	 +lELJ48yhhn89Sx3LxJmQbZLC70Zh64TtXycWcsW2dJ4gwG4sgVlyurU2lqqXFms1D
	 MsobiUZlznIC09Q070iN4W2Q9xYS/9Gt21Wg4Yp9vbrlo7KA+RUETzcT/JXSvZ6hqx
	 2BWjeb8R8WWXLtZ65gqNOUHmO1qupoCIuJY+GBvWnLiItGvJIvJzmaxmsknATDNUH0
	 u/uor2Zl5II0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C662CEB2D2
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172774295363.26446.16628012334762051577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192b6e1d041a8aadf6ea70e690ea672173af8f7801fde61c949c0b05126eeeaf
Date: Tue, 01 Oct 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727742953
