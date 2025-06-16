Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2637120330
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750056594; cv=none; b=ccFvCVM2GDD7D/TBtnK9kQbWoG2OFPvLgLJGsOnKkMX2je0EY8UNWBy2hcMdO9c1oAiRO429JoJKAXaQ5z8ihn5CHMxbIQnXAdBJTozJcnXQMupWxLP1iaex3Z+yYhJa0CT478ulp7aYqxBjikJTOntHBX5frxQkZdu24bzKMUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750056594; c=relaxed/simple;
	bh=hCIJuPXh3XZh3Pbovrko07VQk1kafY0NCyfconpJsWA=;
	h=To:Subject:From:Message-Id:Date; b=l5WDv6mfUAlAp4DimaAJ9tgACLHHSYhkJaQ0WA3dVkPne1B6Bz6aghQjZSnWSmRuhPISWiSl6viuEGFMe5dvYl/PzuTsZbHsuvC8Pkial8dOf8JW460qzLTyv7Uey0qERHtG9uIjkLJa9LSedB+L+1epy8CK0p3ti1GbXNK14bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpBNMedg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpBNMedg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80C6C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750056593;
	bh=hCIJuPXh3XZh3Pbovrko07VQk1kafY0NCyfconpJsWA=;
	h=To:Subject:From:Date:From;
	b=YpBNMedgqPHZE9xDNGu+bv8eqXk7M9F8Nrzuaa77DWjmpycT04i04u38gVSavBWHZ
	 hSbcIJPbb5oK8sw/89y/eXrExciQVa5ojD0Xaj3G2b6PcFRzAXMmaIqBvx7kFFAbb2
	 /tNNyNa8V5Zml5ItuV/uF8l/jy40F0rnSdu9BptKphEtsQF1uNI93IpUc4CSH7eB6U
	 YxvIUXtBT68b3LcYtiHpJanR60TZYkAzomfHJ2P4gnbVb6OnAFXZAOthNmVvpf1kyI
	 1fl+aGbCUjG9Z23Os47Vgp7eZdV8CH/RnwgDMwH9C1kV/KqLkP1XqwS+9gh9JhN4c7
	 CTyWFhIEC2TcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9170AC71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175005659358.1586.1024726873842102026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c5c7664695aa59f3e7a8c8cc1c89582ebbe3bfc88973f81ec7efb27a71c109
Date: Mon, 16 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750056593
