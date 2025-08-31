Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361BB24DD01
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756646394; cv=none; b=oMF70eYBzKAhP65Tz+qqBHSkLGf+3B8TaHT+DvgepMBmHjxW2zlLff1Xv/r6Oh6MZvMBnKS2OfxzfZ4wuTc1BoFneLzDgiZ93U4fjFwzWm19eRLujDUNO2ai94chcnwE257i32uq3VC0a2cTnJqYWnfn5Mc15+mlZCXf5rTgyxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756646394; c=relaxed/simple;
	bh=K73Z6YJK1EUqPE60x3lwgpWsl1KcIyltKv6lI6/nvGI=;
	h=To:Subject:From:Message-Id:Date; b=S0mSnDwv7PE35LqoygpawFNzHXfRE9XcOcxT9d11DivCPfw3BnHRgd56kbJLUW534QkRdC7XYgMQ3wN3aT0qJ5FZpEaACUTnP4l3BkYYNj+dUu3ETgrAO/HJLElXNsq49CZZnoLcFq2pOVAID8zEoL5tvi2MB6zLeQjAPSxJS3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EO1GSRLa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EO1GSRLa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C31C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756646393;
	bh=K73Z6YJK1EUqPE60x3lwgpWsl1KcIyltKv6lI6/nvGI=;
	h=To:Subject:From:Date:From;
	b=EO1GSRLaKSt4SADMHKhuYBekQ4uTWbHRcHyB2nMRZ6XbWqDcoxppi7Rz05mT92ksv
	 /DolPP1KQnt+CeJOxFHlC4bdL//E5rMQdNwb8R2BO7XOjkRZFrgKEESr67QhwYRUPj
	 cO0NXvbQbgrtyiLUKehCqg03R+dZ0EZlqW6G1vhQ9XnkoKyFcNG6NxSVzzgpnIfOEu
	 gOlizbuo2hektboSx1R5ilF7FH8QJyiHSUdQd6ZaH8Aasx9ebad7nU9SGnmJq0mh+U
	 8rM8watsNG4cHnV3ngwsxb0uiPLb8diTYqFN/cA3Y/3dcCSgOSoRzScgiWoGGbaHJ8
	 Tx8BtljVtlAMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94079CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175664639357.7247.1021975467013829593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e817d1a3094084c011be328b6e2052ca12654cfe35c781fa03165655b25c37
Date: Sun, 31 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756646393
