Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533C438B982
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767858834; cv=none; b=OdmxmxhrHGss5tY/Itvn0mOmKO8Z6wEFpkdCzpUxNxti6WVZ4Vx5biaORPeLIiu2HOwWD41Fehgn3Y0y+eS4mRBm2LSOj7bIdtRh8OWKXuNxtIieL4KKQCe/SV7PX/VtGUH/bp4MClhvKPW7YVge812Hi4QYOM15bMjbO34cQrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767858834; c=relaxed/simple;
	bh=i3iW4isb3cK7+Jy+9Sv0e3Cu11hFKG2ZftKnQMz5miA=;
	h=To:Subject:From:Message-Id:Date; b=JBmu+tSuwkuMzYBmZeMXZ+OhXUNaxchKUrnTUfdYheGuj42UvGldfcuG5MrfM6sAuRq9aVIsHHXz/Zbx+/VUOjIgwBVdNDX3eGOqgHLX8VXQ7Teg+rgWzIwPGNsW8j28FYxS/fgDxXLz69/lbB9wbmkc7aI7fHEakc7I0MgKnQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITgu9IKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITgu9IKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4E5C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767858833;
	bh=i3iW4isb3cK7+Jy+9Sv0e3Cu11hFKG2ZftKnQMz5miA=;
	h=To:Subject:From:Date:From;
	b=ITgu9IKLbj2ZSLz/+IdHALuBV5nMAw9CJ8wQ5IywYjkSu+xiYzzgXyuYzaXuyISy8
	 +pruaOGta/XsEuK/DXkoCAQ31QMvj9QzyJs4LI/l44QcVi1x7ndhU15XgH/o27EpJP
	 GIlWhQrHHsgy3ZKE4MJZ1qOn4M1UDO2yaQFbAJfyh1UnR6gDY6triUrTDHnUDEw8q/
	 wdUMl1KJlNU9fgBMMW/gvLmGCA2NNjaBU8u0hETp0bcSkB+e35sJenSQtFUZ59+HSu
	 nJV3fWfzsuMmn4CFcdnF6IqOWO/tRHo/roenmrpiO9DGr8p/DwU3dxRM53cnA/HaAV
	 2qm+apmlpASsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA6D148BF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176785883357.13613.1664688425268729376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af64b4ef70b97e1f7315bc96a03a9dbac6556fc7753ae127a09489c3fa12ff5
Date: Thu, 08 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767858833
