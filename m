Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452173C1D62
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785502234; cv=none; b=OB4FyOAGVC34zP4192JFDANqBMQsQhtliCxcXjYLRV8NvfgvvfNOAZWcZ0d2d9rwtkrxUhZsb7NIC9pzGvqQaW+fs7nxW2FwLL7d8eKHk6j52BGvkywpcMuYH8pB1KftzJ4iky6aB+/sybiWPPRdECDmWFazxNMwQmZV0S8fALU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785502234; c=relaxed/simple;
	bh=X+pqL8m7W88FpW0KFlvu1kVzgMIUS3DA0P8urqAewgk=;
	h=To:Subject:From:Message-Id:Date; b=gVJWx/D5g0IAjsTR8g8KEXwARNm/h3c83rVHL7mfbW8fUnPoFbVEe2dFLVxS52ObVWAjHcMzg9uUz5ErgI2cWD7V4Sw2exMRbh1UTnewDBgoyh1ciG9++N3cxKY7TL/QdqzVtiEkIKgoPEmz4U/Y6nlRC0uKMOlph1uWaVr8ZSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFqxcaUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFqxcaUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF46DC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785502233;
	bh=X+pqL8m7W88FpW0KFlvu1kVzgMIUS3DA0P8urqAewgk=;
	h=To:Subject:From:Date:From;
	b=jFqxcaUAUfnFp8dtVbDW8u83aOn5u/f/QorBTzTypJbM3O4Ay6V6sutXPiTwX8p1I
	 0k7xB0ZNB1s6rO4nfNX4FO8ZB+/HzHMNL/k8B42YJX52PI3HWNFD/SJOky2cgZUplx
	 eusCfv2gMjWiu7cT4wI8PD7TTRiGdtKbeNP8piuj1NfmlcIH2bL85xnFJmtNBwmIw5
	 17SCn2LS3T1h/E9KGVJ829m0rxKziHIqPySkeja76LLUlCqXUe/ZCO5TSEF7WIuLxQ
	 0r0tZXa41RXr8+qUlAlhKZrrLy5z+4ltemAfIJ40SzxqKQ8OEb2CC0XHqeyKAe02Ke
	 ZyfvV6CuxQPsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAA5C5516D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178550223369.21356.15044633325477472104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be1f25ed959008a1f9756fd194c10c9875dcb1bc25daddcef83382b72db406cf
Date: Fri, 31 Jul 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785502233
