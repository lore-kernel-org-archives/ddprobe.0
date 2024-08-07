Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C079A954
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722989754; cv=none; b=aj9lSbSUIsIQQHecGUvbyJer3DR0y2fg4PusIjUOjvIStZuH1XKDUJirYfJddLlLp5zRoI8lkQY94EWOOVthHG1xhE5kMJPzhfI2C8h2oLVnwKzYe2X5ChjwQ4+wDq4QJO2s4+Nv3gYo92XaPTpRMbhhX9Nx44n6NjT4A3KUPq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722989754; c=relaxed/simple;
	bh=YmdCLTClPOBK7EFOAJ7I6z9W5YLI/iCLP+iw+YC1bB8=;
	h=To:Subject:From:Message-Id:Date; b=WBGzlZ+v4MOFzLvZgdS/XJuhgk6nErPj8tqQ3QDX4rc7V4ZjigPx3zwkqAq/TV6VQifhdJN6/3nJ6S9bsnqMrVp1gUaC59AUc6HLsIFv/NPWXrjR0RIuVtcb/HV/XUDmedx4nwJnPF0uLqeypR0U/IwVWpUtdcYf6SHKP+2HfQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iX/qPWiP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iX/qPWiP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B1EC32786
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722989753;
	bh=YmdCLTClPOBK7EFOAJ7I6z9W5YLI/iCLP+iw+YC1bB8=;
	h=To:Subject:From:Date:From;
	b=iX/qPWiP1FqSFr/+nYE4I4q/AKSW4VICzBtKb7Dj9G9Ro3Erymz/Bp/RAnlOezECe
	 m3nECj/6JV19EYmXUgPEI8Zh5gQSQa4zFD18H3BWosxDAGj/tEXX/JKdo3ts+W0h8K
	 OlA2pCMAXUDHmPErAk7uOoJjmxxtVYXfLTdOJTBcy/0o2zoNy5GLBqsBwZn9tLKxy2
	 7GclIHhvBAqBpcmOmTPUJJ13ONIULOgVEnvZGTBWAZ17vm1V3LOJHf4c4YOtXRxHEn
	 2kS9SKWKgBlnI+mtPm618FwIL9VHMopFosDv22BBQwDegNhorpc1pAEKyZc3rvJQCp
	 ufoILgLGGxx7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A07FEC49EA1
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172298975363.21978.4704478955164562360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b026d0ae885c36dde39b5b44f827b0af60baa340ecdf967f51217eaadfd3fd6
Date: Wed, 07 Aug 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722989753
