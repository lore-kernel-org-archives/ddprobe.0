Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8A22D0C73
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761337794; cv=none; b=tvOqYBeZplwKifsE8XGeKdQMrtfZMxdqZGc146FaGVEmiA6LksgzDg/dMBUwEvRO/jwIDzIddE1PJ5SiRs0fQluGUnXKZxRzTAj08r6YdUxgL2i8JV36pQIDDSbUgLqMvqbtY2jvfRlf4llYXn+3CHxYM4sugYWm75ys5el5Gxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761337794; c=relaxed/simple;
	bh=WzSDAc5+K8BbfXxVqyVwZ4wZd3ceQi6bwurcBrh6mX4=;
	h=To:Subject:From:Message-Id:Date; b=Wtidtqq5ygzfuzGml0yeVvNMKkzlbNmRWkfsKmoHh2FfadRRBR/wwXTiIAYro4Cf+rsPk6TVcmJ/LpfzkNJNoCiDTfFVBnmsNOHwkLMKLoYP8/V9c6SMaGGUUFGFZGTo8SAIcsZNts8QGDa69cf4dBR8qpeF5oF2jYc1nINKi38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVeZxQFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVeZxQFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43E6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761337793;
	bh=WzSDAc5+K8BbfXxVqyVwZ4wZd3ceQi6bwurcBrh6mX4=;
	h=To:Subject:From:Date:From;
	b=CVeZxQFZ8XazNLpZcjX1PwAA+/uG1ZAK8lKnVmkH1usX6l7O3hhJ2YIiOQHKnoPba
	 JcfgQ9ZveocS4SAFsU/puEnhZIvql398JxnNRcdaobBgh6svyksFLPaBF7WLcaRPlk
	 pyH/vUnAITr+4GpUzSQyPZYgATINQ5GAwjtICQsT/Uv3qKLPiD5AduL1AJ1pQEvg2N
	 fkxo8n9aVXBGFNlLCtw1faP0q67HFRCL9nKbwDNRAfxCbqEbPxTYNC8pL63CD2XG/W
	 hvu6pCg5+jBi/xGIPhXOO1iRCCAu+YPIErXah1RoMz3VQRsSSOqHKiGZ8dmPtzoibm
	 9r2C4xshiF8qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915ECCCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176133779358.872.15576143471893548018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a32b74464848e83407ba2395958fe40c3dcfc3b932b9d7e971e0dd54cfc27e6
Date: Fri, 24 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761337793
