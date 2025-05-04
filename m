Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B2C2DC789
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746339594; cv=none; b=eKaLf1tHXHCfO1EwBP0FrWrITINdeusUWW2snNGlIKGqtdJm0pFSl+P/97UyuRb6Ao/m5aKDTQGpD+laiyW5rSwyqL+c43Iwm0VfH9y29yHR0fILKtWxpXmQ7GmqCVB44ti0NoSBBiirRBs7FO0cif1qOEosA7ISWpYvRJwOiYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746339594; c=relaxed/simple;
	bh=4/kjh6cW40MCIsnVTwrXOAaZDeInCxIH6vIW+jJ7n2U=;
	h=To:Subject:From:Message-Id:Date; b=eU7DymzuCcxF+BfFRg+/43cdVYtqXp7J2kRl59m4eSF860yW7f5djPNZ+9Qg7kW4m2/dQn/Fe952P0fnEsboSs7PhyyoeH7fD1nuTymK5rdMhe05f/yNboJsJWdiQd7hecSA6W41ab+8ldRQq/vKR22XMttc6KzffMqaXcpwXME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vx8Ki6If; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vx8Ki6If"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7117C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746339593;
	bh=4/kjh6cW40MCIsnVTwrXOAaZDeInCxIH6vIW+jJ7n2U=;
	h=To:Subject:From:Date:From;
	b=Vx8Ki6If01Ded6mIr/3qZjNVbHtNbTYreyxKvG93cGltZjk4yUGfIz8hwQOFCEsLW
	 Fore6kRFv9fpnSrgjTb8BPXRcZAlVG4JEolc731bMG6U86Y45fYHkFRViq6sjaqi0N
	 Rt98QlzMvdky/lZokxFcV7ZfrTgXPk8yrkz6rd6yd+deFF9e1ulk0b3/V9eZXrYKwE
	 oL9eiYz43++7oqRZR6VgJ55dE/39YHOhoFOtW1OVrcw1TZoWkZxLfKaa+leL0oga4i
	 dh7cwxnVxjDtm0WNgsUmBWud4vDXXIywH/J6mWgERsRwE8BeRTZcmYeJQ6whe6fXBo
	 QogBHkYHjAcqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F2AC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174633959357.12849.696778142127106412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2a977a0b53e1e77ce863bae62c7217405656685343c438c2bf4443e8c029211
Date: Sun, 04 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746339593
