Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2581F09B3
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771977294; cv=none; b=X8/mrSWjQhoDX3DAu8Gpiwgi10+myxm7B5HHm1zJgdaIxGWtidcHA9otE2N1JgKFhyC3F1HqUEjSG3NCqcbrvOkTUS8FuvqBb+aYrl+2PmfjfzjHJ+aOqv6eCyHhBi4LgIqKVvovpBswlcrG9U3jLz0UzX184gGkhXn5j8CpfLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771977294; c=relaxed/simple;
	bh=lmA9IE1A3Ru5JJ/IQUUJ30t5uLWZ5kRflwwDw2JEK8w=;
	h=To:Subject:From:Message-Id:Date; b=WCgMFZ92TlODWG+PCbwm9aodUHCcxhEbLkYh4J1VUll0SgNADr88sCOsBMAnloeHenePBQ7lxn+5VHPqV07sWaHGwC6Um9RkFhWt3FJmxCN3dOhZOcjwE/7jGAB1ynscD4pFC/Pf88Cq9kisSIp3cHonEOl7lGyyoG9cau1e+ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vvhhfv9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vvhhfv9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F98DC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771977293;
	bh=lmA9IE1A3Ru5JJ/IQUUJ30t5uLWZ5kRflwwDw2JEK8w=;
	h=To:Subject:From:Date:From;
	b=Vvhhfv9dPCyoo0lFw04D5zex8Dd5v6/XrJp0faKhWyNiRclGSjsKS8iUCxhVI8YsW
	 8UW8+f54D3bLJ0UBSc1F6+J/+7MYG1jVhF3utg48eN2n9bs6NcA+6I7eLM0HQW+Urd
	 T8f/VkqcsHvtVkobOwDQTZekOc3XExCoA7+xa2Z8lSDd40yeBf/UxriznAdgdGroZX
	 XovrOfcWFb9opeHL4xqPNz6pZsLdx8FyqqGoyiqKSIUBlURcZOGmCAoV4vN0Fhd8o3
	 KXbL0oprsZXRIxy0jhyVXct9PP3P/pQW1cyLn7Vzq6Lq4KeGLlAM+OG8rt/CH4PwEp
	 7CFvw1Ljc0I2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DDFF55433
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177197729358.28447.1381298094622244669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6d99b235373ececb1092b7187881a226b9fff36d1b1f8dbfe0a225b9ff42d8
Date: Tue, 24 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771977293
