Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250933987D
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728441354; cv=none; b=ZMwBAjy/S5+rGJMKESJavf/e8ClQJ1NyUThGSqipZVOsodH5hkJZ0jBWRDbgTJ5+ZkJnrzliSc/Ddk8DOy42YuIiESHwKsCcXLZJxTZNcMhjewCT4gTn4Jzp+6bIvEhUdwkebBQp0k0GMc6BjZ9080u5NFi3HF/W9KzZvcdm6V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728441354; c=relaxed/simple;
	bh=jDZJ7fXWHU1yxE+ZvVNI8QAr5tQIOJQKbybQx152K/w=;
	h=To:Subject:From:Message-Id:Date; b=AT5EJKbtUd7zJE+6wcLruhhvhVdGvkItGd4Nmw3LHYsYKfVN//JsfrLEWYhLWVXRUfVIZ+nHqaa5gh8AG0aE+0NNlrjsvcdoh7D2nkB7HXGw9prjsl6bX3ZpYM3SLiEk488QtEKzrHaCVjA9BL6Cu0NL7dQOLk6E9TjvknCfei8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WINRlAeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WINRlAeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48ABC4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728441353;
	bh=jDZJ7fXWHU1yxE+ZvVNI8QAr5tQIOJQKbybQx152K/w=;
	h=To:Subject:From:Date:From;
	b=WINRlAeTUN9W3uLydA3KMcuXoNS3Kj/dtasNFRKHuK4vsIJeassTViy+fRQUOVbJ4
	 RsfwTqujBJQ9ydrl1H6Prn7k0X1rxmJOTChETxh37ydERzirHhwomacbRatPNwJOI9
	 cG1MV9+7a15XmOgd+SL7XdDlTADz0eTu7hjJKCuhvJVz9Lo4bTz0OPi0asTc+qYo4z
	 UNVYSTDdNz8qQolA0K+8XdiLEJzL1RPytXND6WQQ0rze9dNuajiavwnZ/utdarBra8
	 wH90r5kuMzvNhO8EbR47O2vCzy9DvgHORlqVDoA69HQ9DtDz+gPAmRR2/y9FFaHBvE
	 7DNNDDW3mflbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A9FCF0432
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172844135362.25410.5337337886129215579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f45daf68e06a47b5b221c5322d6b26babe43b1e6845448bab5ea21b449feb9
Date: Wed, 09 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728441353
