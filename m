Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517131F4180
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781217994; cv=none; b=kUeU1WRhvif/r9vrLhQXkbyRhx1RA4orce/6V+ymlOHKo0+d+hZeJ/ykHwpGjdXWQHvBNBVI0F3uMkAKxV52S0yJKxebDbqKs9Zvy3WjitRdeXigM+LG9DxxdZubAUdLHSpvUXh2QPIinM9pKKQb8l843nNAzlbjHjtegTuraOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781217994; c=relaxed/simple;
	bh=WTVi8Qv5CBdz1NBlBL9aWwcRPl3kip2tbqkUayzZxFI=;
	h=To:Subject:From:Message-Id:Date; b=nqTojIH0JyWzUYtZpLMd32QoBZt75wgSsWhU6bigeKZyhGzewg0tQWh41r3HGlApliT7KzLyyk/nC8tKlVca9jc35wyds0wtv/5/0kT3n9r+cRrcgX/USkf07jDszxrV5iuudslY/xVn7XsXaTROOTNwouAIOJ4SBfd3XRIacBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IL77q/I5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IL77q/I5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C9CC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781217993;
	bh=WTVi8Qv5CBdz1NBlBL9aWwcRPl3kip2tbqkUayzZxFI=;
	h=To:Subject:From:Date:From;
	b=IL77q/I5/HNo1WIAtpZff0LLSj9xe1NIbewvraAjT9aVnTMHtsDWV9SXlkN8RFUOo
	 k7otomtgegPz8tgZSHKCX5R/Rleqc5hdWKJPTykF9Mscc2Z/h3vMdmWWA94eJxf+lQ
	 PmSZrsgoFMQZpg+eN4aJ1OJvV9apyOipEp5Vz2Ufv9+bWBI74RZU/zPk3pvSox7lQq
	 KwJaxG06bE92NILguKEbilLYJWoMoWm0BiDFbw3H5zBHC3IydFoqnXXZ9YzA0gKYFz
	 pf5ybTUqrgKiMoxP93uIaG2Bn4EmHjkVwjMN/C68RnfkRgsV+Fv5EaBlAKr4k197tw
	 H7aVRZAMrNd+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB97DCD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 22:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178121799376.6674.3715514871924407937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c76803379d307d585c5ea3c915a12da38cda78a71e9504a9aa3bc49626ef7b
Date: Thu, 11 Jun 2026 22:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781217993
