Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3190B171E76
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 09:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732095955; cv=none; b=UVTSzIE58ypsFII4zd/S/0tnGlKFGqPuI3W2ASu7EFAksNCZuLaOyU+rvv2RHegc+Rxm7umJhs/RyjJwPE0LnMK7/mEMZcs/qZ0bTfgEbBnLinKAyuMrG4OrFhftbOuh4z5BfNLT9b133phFNn4oJhwv/L0816PTBLkmYtRNuTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732095955; c=relaxed/simple;
	bh=ARhrjK7c5KolicqQrJZdOTXvGOt1w5DrbllYZeskjwQ=;
	h=To:Subject:From:Message-Id:Date; b=ADkatds4XwY7KaoEBHBXGr9TQJjJzyp2dp5kOqUllGlRTRpzYlrz5pKt/sk0ejx45drxdbsved5O1kVfHF8AIfnKTrtH1FnqrE9OfRIyzI5OpA1oSVSQ80hEakO1nrWS2uqnzTG2E/+/J8k+EZkxkEqCMGZYYcYm4B/3K/4auS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDyrI8/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDyrI8/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74C4C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732095954;
	bh=ARhrjK7c5KolicqQrJZdOTXvGOt1w5DrbllYZeskjwQ=;
	h=To:Subject:From:Date:From;
	b=mDyrI8/9kVCvYhR4JNDATOF3awJtZeLx2Her5A9uLcqjKUmDSJkekesZO05TazVRM
	 FgdjCdinUH4SXcKQuFISS9Bz1E/rXys0db10b4PlyjaoW6Cn1ZXVLV5pfS9/EnMd58
	 ojt2SWsikzhvZs+gLwu5X+rDbVnGFjD4atoR2z+qptMHY+ZSIJNoYu8cuHDLaRCKAW
	 tTXNGQkxpfa7TqtvGqS3So2D57lkjyq8fmRCjFa1V76bFz1D6v5G7ZIK3fDhe5Adom
	 Pb85m2Ll9ygFcaLg6505+CpmgWwwa6FGw0Ctgx0DAKIt1SOHb0yJxuWgdxZx9SVPZ3
	 fB12vWdISheug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FF6D44171
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173209595358.9549.15181746153781461054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 435c90ce0ff39974cc31b8fa77a9ead9ac4a283f15bff2d93f4c7ce765ac3071
Date: Wed, 20 Nov 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732095953
