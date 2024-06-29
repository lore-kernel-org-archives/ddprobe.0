Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87AAA63C
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719620663; cv=none; b=mCcYDC9S5pWFtj3zPBpDjLWvHXKPRrvArGDa1Ko/4Gxun7ezHGGqx8VHwhOFENv4GPhf1JXeKn0pop0Y7FDtB/DRpx9CrWC8Utun2arBu7YHb9m/ULmOb+aCyF78ivlv7XUKGiOO8bjbRy9bFDdJXgujEklgu32tSbujFuBdv0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719620663; c=relaxed/simple;
	bh=pPlFTyCv1DpVp23Jwf6qN3ZQ4HvicaElR9wWoNmzRAM=;
	h=To:Subject:From:Message-Id:Date; b=dEPjOa+kjCX38/sHCIKf1aerAOt9/rMngJYiynpXP5lY6jNcXN34Q+bP8ylBqdG4o8rWXiO6yrlb22yUd5j1xUnqtFLshGkBVRlzFisRiMaK200RUKz/n2hyzj2/AzxEJrlpZtjWXWivrloK1kd4Hagpui0A3MtE5EZ2NXRrFw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFPzDf8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFPzDf8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09FB7C116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719620663;
	bh=pPlFTyCv1DpVp23Jwf6qN3ZQ4HvicaElR9wWoNmzRAM=;
	h=To:Subject:From:Date:From;
	b=lFPzDf8yKcIvsc/244RFTLePVQTQEOvnPpn6nGuNY4wnQ9OTPzaNqvohgm0fR7vlW
	 OulSUyjGyC8Kydeg7GOEB83AHQZSozJjuTFkQww70nOAT1n42APqFYAOtDD1RLWG4U
	 eRNQDeBeHC9qQ/PDR2WLeH3UDDjCv8w5BOBLBIcJ8KccygrSlw2WuJWDLUXmylWkFz
	 U0jmmzTcWsLpWXRgPDCO4rrla/vEHqUQo3F9VQYso5slBuP/zLzSekcn+DB+Mya6MY
	 iEpqlZck49T6JB018Rjz24UTaRczBC+OZv1cU8wtaWMSwcUvjvacOMidwRfDlpzPLF
	 FVUDmwnJ5M7Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5F10C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171962066285.30282.1719231875040518195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd2612fba5b7c22b8f21509702d40e4177838f4dcfdef6d897faaece2c9c3ea
Date: Sat, 29 Jun 2024 00:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719620662
