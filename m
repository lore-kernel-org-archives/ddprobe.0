Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C13DC30E0FA
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763506314; cv=none; b=Gsb4J/ConJ1+GmX0hAmbRgI46oyd9O8YRfA0JzTGt9wotF9R0uaNeZ7ngZaUNTBjXyMaaak26GTdSqoTZ4/opRl0miRVh07qdFQp2N/sHBZsvdGl5EMSBC+zCffCwtrvM4RAbLPfiqur3upgxn1uCGsudw7DYYNW/SQMavgrKQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763506314; c=relaxed/simple;
	bh=xIQAPPZdJGiyeVbUE9UaSGI15Cvq+FsNd9fq1u4A7V4=;
	h=To:Subject:From:Message-Id:Date; b=TDxquCjR5CyEZSspBAEZG8IL8rEgxGBqF9FoI1Q5zA9DGjZw2Yizid9L98JFq6QQdp7UzER/8BA26yDg4PBDd/6qjpTbxuznz4yS/9RXraFdx5GK+bFN6obII3ED9P6aCROUjhaJhMad5Rf2PNc4emhLL4SnJerizmp6iGkPBIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2FOrduH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2FOrduH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB260C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763506314;
	bh=xIQAPPZdJGiyeVbUE9UaSGI15Cvq+FsNd9fq1u4A7V4=;
	h=To:Subject:From:Date:From;
	b=C2FOrduHRgpE5NxtcB7kTT+MfXoXOHBLj/uR4yLAqoEvkJHZKSdHdLejPfwu5UMe2
	 s8gyoeHtOv/Cnxgn88uc9TVJoRuatkGsRToSawDZszgyl/HojUamGvh3fkAk/QzYwZ
	 5OTaqOhZNUSfnrMm/jwlCSwNMko5xC80xhueUVNYPpiZeT67gx770//+OW/xXgkQ80
	 hgMGEWWvv3OgQ6klVizlgjeSoAqIFZxLtJN0nJnmIaCD53mhi2Fu486qMMebDQ+tNM
	 Ns7AmYeP8wt+F7d7/AC2fuJvx6vEmLD5YCFv0pNC5uG4a9Jw2CIV0+JTZofvk7K47v
	 s7SngmD9BlHAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A241BCF2560
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176350631363.21928.11738247615146555178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 732edac17fc39ecc64b412fe1a81bda66a0cdc502813e62d2ec81ecb85daba60
Date: Tue, 18 Nov 2025 22:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763506313
