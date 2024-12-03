Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B4D1EBFE8
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733230554; cv=none; b=eOSnmlw23tUVlSEKg5AHjSUb2Hz4V1QM6JBSAJiSR4fAk/2H0QKce50u5hjN9wcRKxcM/myV7x8al4tEcAFijc5+vC0Ke0CN2otWtPydcu854RhklewR3Bb6Ht+wmMitOZiwg4HtEPUs5f3JR/qqplPkzi3diD3UmMcEGfo4ZI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733230554; c=relaxed/simple;
	bh=OjHC3D7wCYys9P0934WCAkrFHrRF6vOGe3HwsclHD5s=;
	h=To:Subject:From:Message-Id:Date; b=Y4DYEwvZ50IakJJxbS3Q6fnIEsiaoZSMlPQRiQaz+lgyVJ6cIpOqMhkE6u3oobnlqBqM5jjrxxPOhJZMSWwoFFQCLM1hBOMsIDLmbGSnL9G7JwGFfMgPYX4vLpaENHRL3GBu35/BM1vE/Adn11afBv4FUEFmE4Pd3MCimC+vnn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyIobqND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyIobqND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FC7C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733230553;
	bh=OjHC3D7wCYys9P0934WCAkrFHrRF6vOGe3HwsclHD5s=;
	h=To:Subject:From:Date:From;
	b=oyIobqNDUyUDFCabomt8c5F2NpKLdBhMvpQuya5OM609ed6t3LL1KB/of0CjE/exI
	 9m54yJ0fNg0Q1zS0IWKllZu/Negk8ChUNq5NAHjeC612atjdpLftNUaEpClAmIBaBi
	 huNQRr6oZ6x+oJrMIa9gnzujTMBNPfNLB+Fw4syYUM4h7k089eiEAOv9tp8asSXWh9
	 S/z/ngJHEgFWnuvYSdE2tHNhfikwVJqZtkHDukPaWt5NmXMbF5KlvT8jghjWOjwCpb
	 ItJKc8M39thI8Y1syAmThSm7AZcMWB1gc7PghoL3fcjMkuZU5hXwqEMJvnH7m8lAHH
	 rg3G3oZMltOFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4485E64A8A
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173323055372.4164.12545904308685852615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a215468baa98851f4c793e778152aafc16887b836a210e3e37c957b23d6a1e
Date: Tue, 03 Dec 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733230553
