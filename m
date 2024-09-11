Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E95A1BDA95
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726095354; cv=none; b=CSceq+U5yvKtEqmdq9ONIW/vSkTu7cx9pXwUlQu6a7B3z7scbCb/447GvSv7uihSMnlHQUrLm5d8mp1x8BpmRESG7x0C36mlKUcpgzeYzdh86B4NYINI04EPRdGb2CEQAOB58kcImVVcK6WaUkPoQt0btqnmCNTTWQdnq5WUGeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726095354; c=relaxed/simple;
	bh=7wmPQOy60qnhGzyCKsiWeYllUzwdEohj0X09Mb9E2dw=;
	h=To:Subject:From:Message-Id:Date; b=effD0GkSumk4/T5lsMkvpdo+BsE03Ruvc8PSGwnitb1YZNupM96sGpsOxcVbRoefHnvtj5b7UGLaV4dZ/vPGgKxHZe5zw9AxulaY0sxetNJjhQhYmjm5HFDn5Nr3OHCug/UknBMvA/eagOJvtdm3cm7qBn7mzvcwjqVVsU8V5UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0+lOtvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0+lOtvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD541C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726095353;
	bh=7wmPQOy60qnhGzyCKsiWeYllUzwdEohj0X09Mb9E2dw=;
	h=To:Subject:From:Date:From;
	b=N0+lOtvzhYThckoMX1WdPYWMuPlPFXFIQOcN8nB7IMCpIGmLjTjj2koAFyu3C0G0E
	 gyitNEDUukTEzfjWm8KdZxsdFmRJXwIKKaa0PD6CCrRiawwfoFW5zByVND24Zmgljx
	 en91uWHLdnmxEdfRI/AY9LlJ2bG0oHJupjwlWbKMeoceEujv260s43gIje+2hiLPm6
	 XicepzRFuBs+dJ0AtqEbuPVdKFTjS2gh0l/y5PX/VThIBuZSTxK1LDmCU6V+HHBmeZ
	 FBPpenQlioG6f5ikjpzT2IwBtM9UI/3isXmhOokUEKw+zGWhTjy1pkJ9NE7eoevlic
	 hhXdRquaLxX7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977BEEE57D7
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172609535361.3606.17470340793548663537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd9831362a8c365dbe334a9ee3c24ba883d5876c90eeb475d3c0c559907a1dd
Date: Wed, 11 Sep 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726095353
