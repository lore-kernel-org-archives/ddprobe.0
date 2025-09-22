Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3107A213E9C
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758535194; cv=none; b=IbCQgwj6K1BRAPkiqaZDAIO1c+9AkIXOK4dVmiZVFsqerCCaxNdOpEdCeQ5ZlIG4BB89aXRQY654UPpyxhPMKNKCCrVdNdkOBgcEubXpdibGI8XvzakRpZLkROM9By49dd/JGvO+Id8XjcWirtoGDZyqxZdzEl6Kk/An6INevG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758535194; c=relaxed/simple;
	bh=nbldzCs4Vc0QdsamIfT5lY3z1T6W8d+D97XPqInyJsU=;
	h=To:Subject:From:Message-Id:Date; b=CzKeNisQ9rcSXhN+cHG3lHg4EvMapkm9VGwNaK7A6IfdGI0VJl1jSrrXiOit2m9d9VvNbfdZAkUnI7YoiDfwhXP1kc8xw+SH6QTtsMQ26EjE1Lkyxjb3PNYEDpmeYCqEgsqu9z6aDbQYihvAKtJyINgRrGJqxJ/nVp442EISwOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vzqibzlf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vzqibzlf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80E9C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758535193;
	bh=nbldzCs4Vc0QdsamIfT5lY3z1T6W8d+D97XPqInyJsU=;
	h=To:Subject:From:Date:From;
	b=VzqibzlfaWydmO+6wItNuOhTrvoLdkyGpQzvtpcoO4zM6ds+BTRysPvmJrxxgN6Ue
	 blpFDlJ9bwiC3bLqbLm0OS60y5NfdaYc6hEI5Qh6hS9ANRvw45+gelMUDobxt0VS2c
	 ah4GdRcMo64A8H7WoWvcg8vjMpBlJO0npOQcm3y/MG0X0n5KmNwZU0dCxOvGbdEQ9P
	 B79WIXcblgATJpZFXqcVLRvmDcK0fW6TOrYlMtMUk/3Eak7WhgsQMoX3D188c/P4Qu
	 aWu1Ro5yuly7uRKxl368JOneNMrx/aFh97aDiPqhgq1p9BNJChXBpxksgUFMEqiD7R
	 mkL8W4eUnw6iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92793CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175853519359.10746.11741666089008802512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af31e2c7a3d600bcf8cd399abd382163c462cad7ea6ddd5b7c411ea32d5beef
Date: Mon, 22 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758535193
