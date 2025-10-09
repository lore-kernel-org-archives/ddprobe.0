Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA5724DCFD
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760036994; cv=none; b=ijuNCucd/KU44jPucxWwsf7ZAsulXjO5Dsnzi5ISKFFXDuWCpnkb2yrNK3/WSaw7UiasAGFtuaDJDazYVaEuZyRf6e6Qa00En6WOKsSNTsoB262gQ58lUmN147TyfF00PixeBdIMuQ6XDx1LyD4pzwxOZaRswI1ybU9LxVF6Qko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760036994; c=relaxed/simple;
	bh=dfuNVnjyesBqeip6IADQxYlnBqKF/Gw6UEfyOv2gihY=;
	h=To:Subject:From:Message-Id:Date; b=q/oJ2wPRsOdO+SvKenePJcIu8Wprl/Ko5fPT6DCeQ6yDkX4DrMy2h7zohXxGpEJcn4ebcDIfhkpBxDUhUqfrqfYyLBc5KhEnSM9jCqbej6pZopv3KkVfHhdQzRu/ZKv+DBZNWCoNk9D654P5MRGbPHFehLEbeZoLUMF1t0qyHcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEKWcunS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEKWcunS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51F7C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760036993;
	bh=dfuNVnjyesBqeip6IADQxYlnBqKF/Gw6UEfyOv2gihY=;
	h=To:Subject:From:Date:From;
	b=DEKWcunSrTx2FQCnJHAlrfS6kwL7NSvA7a6Y8OOeW17FM2x5FSrWpSoqxJpJ2VHLt
	 O0vTd25jYpkSRrFKoXsqfGRIibj6xoQSVmNPrnD8TCdVuXQ5f2Y7GsopvQ4PxCzsVG
	 0XNBf4kZ/oO2xo811ebyvHNCokL3vH5/lpGdxkrofj9xgsBRVl66ROveb3fhzJkYXL
	 CqoIWlblqAEBEkX67JdViPHJcnAbR5IdCWFSqhjNp+EQEvqPV3OUy0HQjQzLfnpV3s
	 k3oqv24G7bzTYuLI8bBpQr8LQy3y+BFjdM5bz40eZ3D55vO7l8PMEhHxTg5dFO6fT2
	 jQJeAUVV3g3WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9072ECCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176003699358.26496.7661876206320088849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a219af87536e9d114268301a6494b055efbec2b0194fe53457def37f5ef577d
Date: Thu, 09 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760036993
