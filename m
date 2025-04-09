Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419F8255E54
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744213195; cv=none; b=G1zI8aSVQqnn56joI1at70tOWfyHIHWZHImTAj58SP1WKGC5auoAWT99MqLgyyVxrDia852sPLBs3ERPYgOfgF1RNe/gF/7L70rhszAXL3sJozEmfcOYUZAxAUzDYAb8KXn+R5vS2a2TlypS8JO/nsgb8vq/NJNWt4h0sz9VdHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744213195; c=relaxed/simple;
	bh=2XiKPDOWcxWpB5VV4DGEpkF5IMnD9VqaZsDPwzh0ygk=;
	h=To:Subject:From:Message-Id:Date; b=jJC0mrGHDf6FV4RL2LZx/hGbvd0a+Y+pTex0mNcSdOwZ8BpiOKJV51gXerwEb1MhT+7wwIB0MTvBA3fP3PAhh5NimRqG9zasw3nJRy0Y8RU6bpp8mUA94DP+Pg4JPGDvL/bJVbhnvCmYUwcDiz22MYnMyw/VUhL4twN/kOhr31w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5lmol+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5lmol+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD54EC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744213193;
	bh=2XiKPDOWcxWpB5VV4DGEpkF5IMnD9VqaZsDPwzh0ygk=;
	h=To:Subject:From:Date:From;
	b=J5lmol+l9HC+yo4CvaKp8JlYuFKFopTHQNPPdjU9yY0oXIwF/BvO+X1SeImDTUtvM
	 rxwnNQ+15rnvSP5088mqqiza7VoHDvZRyDj8UP8Bd3VUJpEJVUElWhGz3hejvzMOd3
	 ViWGdyxOz3wDksZC7m/jnthQIheNhXCpvumRdzcs30yIN4djN6RjlDYeLIzaYQbhEs
	 +qdUL2YxQjyvewppKLbpEGoWYS+YmpxjqpJ/eXIjmrSmVr6wmqvfn+VeDAUkgcPdxi
	 965TjO5TMqU3ci6Ct9HWBZc/G8pWMRCID2zhAxMt9NdETdWQW8ruXAFHLxW9TMQeCr
	 Y/etjOjgrlssA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957F4C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174421319360.23897.6269620745376754888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86080bdbbbdd16dc9c9200fcddef0840412987b72cc70458f1c8881630887cc9
Date: Wed, 09 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744213193
