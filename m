Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E52516C86D
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722465354; cv=none; b=JDJVn/+Ph8PducWvYHDxQrQBaJ2cK8uOmgJKewfaSQuv40nr3EAoiFsR/SWDYyWoQco/p6nd0yT/u+b9A0fv4ZAy02SMiFou2SWZ/7Q8/D676tGtHSjTs5/bRsjJfKGL68ULnHEE9UM2eegtnDENcmUTniQZmZU+/Pz0XWdsIy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722465354; c=relaxed/simple;
	bh=dUuJnUTEgHVBXdHk3y6bsMwof1iyS40F0yWmp6opifA=;
	h=To:Subject:From:Message-Id:Date; b=FGjwP6vzU9VHnHmAD8iF+3pHD6Cd5Lv7oyvQ+reZvjzqNBWWtETW2jnj3fR2oR7b3vFSTiT2yXtvFNMUj7w07dIyGvnbQZJVJxCBmVJ6WjgcT0x7ukmiEhCYV/CFKixdX934nfsGf/utB0N4dr3WDQczjEWPnOUBaR6rMW/VorY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gp75rzyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gp75rzyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFBEFC4AF0C
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722465353;
	bh=dUuJnUTEgHVBXdHk3y6bsMwof1iyS40F0yWmp6opifA=;
	h=To:Subject:From:Date:From;
	b=Gp75rzyCrUr0zHS1HPjMvooOVO3xEEz7F3CVWAwpJPLUsyP/2NiK08qUqJNvSNbW0
	 5mwOucSBXEScWztcDzYt5rzzRHLSCW1sjcBZKeqlMIylfFvcsEgL7wdnjoEOcIxoPg
	 zpBYEbn882veNdeCilLWIacQD4aHTEHz+zTVuT1WlESCJ19EmmipyIg133yl17/1qf
	 5Ud5AbztuWza8IWPk9Ah9q4ObIKUP77N+bT7dG6KX+2r7uyac+d4pLZlXgJrjFUmnW
	 jwDf1S6zqivTX5jAa9vAKVhICmRNvQfw4L04TteJJI9q0s548smb1HBIahkpRkDotw
	 vgz62KC0eckHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC58C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172246535369.20123.18216761707889408154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70bb40301005f0004d8aa6aa7d06c3315374017b9b48bf4fd6c01b3c56eb41cc
Date: Wed, 31 Jul 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722465353
