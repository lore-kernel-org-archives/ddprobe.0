Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B025225417
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774054494; cv=none; b=iojDrlzhU1ktXLq5gMXTYnF2kFQlBL7ou6HPrM04VGaymdtidxv7ntKtL8gZ4WDZ/IFfpeEQNAVcF0dTJPy/SFE3ttINArJkDz2J2LjWrD0CC11+6+tCR9EaKba54hEE90jjxSnTOcBiXzjmJKUgM+UorXAkHIzbcmUSO5ILcis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774054494; c=relaxed/simple;
	bh=KufLU9gXFcZB4O8NULeWk3l1Ecerl1xjW7QC0D9zDyw=;
	h=To:Subject:From:Message-Id:Date; b=qh2bZ/VeAfGKGtxldTuHcDxRGn7k/agvhttzMlo/3ZzL1ZMin/wHZVPpV6s8sa9Dli16Oq1wtzlKs+SHUaBr6QNUT3ODYGpwjWz6W87mb4Cn34KCnlI6fi/YEXcx2GGzeFb/z9w7sBT0TX+aQvpyi2okUriuRps6nXgm5fEFqeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0u8BdwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0u8BdwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E609C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774054493;
	bh=KufLU9gXFcZB4O8NULeWk3l1Ecerl1xjW7QC0D9zDyw=;
	h=To:Subject:From:Date:From;
	b=S0u8BdwM7j+zAZUKedvZc7DqH5KlB0fcBvvLQTiCU5APbQGz0NEXehDN79xh66E62
	 H11uamuYfMNAYh/5lNPbFtspc/1+nIJhJPuorhha/F/TlKsXomjY1fiBC9RegwGkHO
	 s4QXlhBMy0QqT63cGQgpsm/VABqvYifaNAz9lBOnhmRUra+P6g333gxtej11xVCrrP
	 F692GQqXIcBn1l2k2SIT9nYBerrBbT+q+9NU2tqlJjmeQ9K0kE5sjR7Eu86RanBj8e
	 OyOLlhfXnD8IBCsp5uP0Dya84aqx3be3IaU9mfC/EMeqony0zLCPu7AK+CRd+rUtZ7
	 2lqzmkM8b5lUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC91099B56
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177405449357.15013.5541954245304216823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dc7846b3e3984cd4966e98c0685eadb4b7ee65f3a0dc9449758eee9b129e1ad
Date: Sat, 21 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774054493
