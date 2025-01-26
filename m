Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B3425A65B
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737898554; cv=none; b=boBKz9vq6roWmI0mypOYj23HxT9GuYgUn9lInYaexp+Rt7G4JnG0BNd+6IhXHN8PnNGnwaCjo2YrfmZlGwfhMZr4Ge+ePa/yrNdTXTKApUZxsoT9yVvL9y2VWuqmcQv0opcdhHjd7u6cvMlEAf+FJFrxZd+VUGNrkgGK58iHXpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737898554; c=relaxed/simple;
	bh=JmUefm6vhslVaSYcoXCEcqbYU2xTd0pb51hte/4mmL4=;
	h=To:Subject:From:Message-Id:Date; b=IxrBBEKvVTrZCnOgdbq65uTbkAxtQSMz+aGFpGU7SbBz9c9gTixNfk6C6ov7TTDCCB1tUFCOAfBbw71gR6aFiSH/5zP2rLuGsVrzUlaU58tSF3My+GYfzHKz4dize0Fgl3RkyeBiId5YLnyvuU7E4FInWkw+FOVYE3Ihk6kDHkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fK4x1mez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fK4x1mez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4314C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737898553;
	bh=JmUefm6vhslVaSYcoXCEcqbYU2xTd0pb51hte/4mmL4=;
	h=To:Subject:From:Date:From;
	b=fK4x1mezv65KXmEFujAhtDjKdSKqUsYRDAg1Ok5//caXgI4N/aaJFCbvBNIkRm4YO
	 HgChOhzPh69DVK3KpeT2zdMdD1Dyb1hD2TK8dT7ZKsTHrsARI9LBaPpYinFZIzow/h
	 jAcWkmJnaTQxKPNkjq3qt70nylTGGjKUaazSDkDrDpNqMU5V3+VDYHP764HSoZSxC5
	 93MWdKGX702vCtC5hd+dd9nYGVHfQsfIGTr8hXbkbAuvDroXpw3DTmXrb8l/ZGna2D
	 IPokCV//IxcsxiJ7HXk/B1bveo/wbqQ0Lp8i9Y4ilHAoJNqHAnUhGQ02bWmjeyzJ8P
	 aGs3NtGSPJFow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91752C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173789855358.9016.199641917061248671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d92b0cb166b98452513f3e94be2b5cf96ccb0778cd07f3b2902ba080cdad2e6b
Date: Sun, 26 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737898553
