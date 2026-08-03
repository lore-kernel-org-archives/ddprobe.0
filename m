Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F6526158C
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785721234; cv=none; b=VypWILnTT8KJfIf0LTWcahahPwwc99PBWx4x2JAXho9fo//XF0V/NY9QpFh3LOkO5ow526ZmsXzcq60+KzNGbYN4/P4SsDFYw5FKb9u7iRMZ83NobuY7Qc4Ca240+5Iwhl+ab6l3ovyKJQarwgdabXUkEx/EUakrOZ3PuwyPepo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785721234; c=relaxed/simple;
	bh=Ph9Ds8osKYIVbQWVEGVlTyPqxrFk7HGBiKKZQ1vXeNI=;
	h=To:Subject:From:Message-Id:Date; b=FK9YG+sOx0NDjX80OFCeT3Ay7xBR5xaLCnfcoDDHD4DbhbYMrdJxHcdZGvr6ImfFIpe1ZXsSnQac5FREni0NEnPK+l5G+keCZlyWfA13HbjzIaA5act/1k+9+fn0wwy2okWOyfyLQvYu5X6URzRVSpyeJ3tmVQefqPaU8HzRobo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kfl8Evsz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kfl8Evsz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECE8C19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785721233;
	bh=Ph9Ds8osKYIVbQWVEGVlTyPqxrFk7HGBiKKZQ1vXeNI=;
	h=To:Subject:From:Date:From;
	b=Kfl8EvszGoUqTjgLsoQwL4mZSmxOvkUdMt46v961+1gTLPc+AS2K3GA1CcE3VSH8c
	 2jqx0xfGarJoKiRFkkXZRhiffCWkrR54DdasFrBodH0eG++vINWKRnsWsm5s1tj8mp
	 FJ9SIyLHxwhsg4ix4dYvG4jolutfv92Ji25n1nSrFR+MWjFUi74QBOtH1Ivo8W3Uku
	 fzVZeTgmtmSpE/7eT7Cyb7Qfzud3RhQYdD9ENBs5RxcqsRmlIgomTHr1wL8BnPEBVf
	 KKoK/xN4kcKXU6xxosM4yH7ux9oXuW8h9uWWQIiBf7vnBMs5ZiukZ3tCJ8XMAZxIWI
	 fPreKTP8+7EzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4CCC55174
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178572123369.26847.7973828030228466724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b623b72d570aed2e30b067d2993a041dd34e4750dc93a86ac2548c90efe066
Date: Mon, 03 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785721233
