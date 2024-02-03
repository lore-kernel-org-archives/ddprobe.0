Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05702882A
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706929697; cv=none; b=TTYA9uIYT8SlshOZhhHOA84qAbiaNywqmUipNX3fWCuWZTp0426/poPDTH7PJWFxX6Emcb8bkOFHTuV4MUFXGbmFcd85EfY8fPobxvkQZHugTAasoqJlXdWFMaxcywSM9XSRbMl87op9nU/W27vapHgzDhN59G5I2XLQL0KZbZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706929697; c=relaxed/simple;
	bh=4eJA338Sat2bd9Cu2H3N9//pY1UuvJkzHymAQMgdgFs=;
	h=To:Subject:From:Message-Id:Date; b=mNJqY+d4iDUsmrRFX23EmnYYfQCQZ34atbxRIojlFyd2u2eyJZZPgHZXruuAeBDrK61DZI/zpzatnAvX+kOev2pM7fS79ub0R0BVE7P1a/HVrApQp3qFYrgqxyYiesbvh4PRW4ZhRIEe2DgSjL8ky+2tYxbBy27kfTstaNkmtW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5qS7N+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5qS7N+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB3DC433C7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706929696;
	bh=4eJA338Sat2bd9Cu2H3N9//pY1UuvJkzHymAQMgdgFs=;
	h=To:Subject:From:Date:From;
	b=Y5qS7N+zFUVN6kFKwAV3ScZ2IT4752MAZtxtaX5uvVTcwJVWaY5za2V0ZHAyK9Vlh
	 weEGr0X0BUcyZ6JgvkeviL8eVwXeFEV87QfequveM+0mrexroHUyhN9L9ChCN7p8jK
	 PYrlP/GO5a005TEy1NpYegfnCqQMD7qujDfHnJIscOwrm4uLfpVMaMro1PS25kqKTT
	 oHdB+xQcg+iChTOQfjLhhC4sZIjeF3vY628DjysrdZQzzm+HciUIGBOa3MiSKGEgHx
	 b6RRw+VtrkcKXsr83xiEe+5bvtwnIg3vvXEk2rNYF+bvU2syYpfpciJtQIN5BltaFL
	 4bbJTYUKBRnXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 619CCC48292
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170692969636.31549.17908771101433425149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60feed0fbb620b7f30d10e71efc1adc8d0b16f28f7537d9fd8aef0ac8d0e916a
Date: Sat, 03 Feb 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706929696
