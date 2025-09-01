Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26D97262F
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756761593; cv=none; b=IYKIPin+Ed4mNe5hzEaTDAs7O6+gnYpmJXycgSSHoL3aLBRx3CHXkNzfv0VcQGC8MhfaR6qPJlMQsWQl+afOq3155AbeF7ueG2rham6DqbK0GZpEmwE+ql7669RCav+H3BbXTpUFmBvldTLc8lk0Ia/FebmZxVq9glP0JQQLKG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756761593; c=relaxed/simple;
	bh=V++4ORVmVO0hIp510NpWciVPO0Gbss0adSG9TJoXVD4=;
	h=To:Subject:From:Message-Id:Date; b=CH8ix8ukwVEJ8kzjuHzxIwKD4LOilBGn+fX9jUb+mkFhtaZTIyUspV6zNiggo2D52c7Jbo1LJ8m+P4iOs309P4PTUz3L9gIUmZEQQDXLIx4MBVju2RpAAwlUTulQckLt0LKIn9h6CsEWuMRmw5nZHVE4WVde+GWd8R6iy87/dxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5Oyqg5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5Oyqg5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66A7C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756761593;
	bh=V++4ORVmVO0hIp510NpWciVPO0Gbss0adSG9TJoXVD4=;
	h=To:Subject:From:Date:From;
	b=Y5Oyqg5lPTshYOCvWwQlgWLrKW8ZoMmQ7+YFkcJCU6oeOLQJG3FamOpUD6nLL93yh
	 MWisqNik+9JIHbKSLNAmsn8wYaYo4rAnr72CX73OM9R21XBXWSV8tRDkrRdG8Bdkfj
	 Ub6af9LwZQUvrQro9Q/152rVr/eNaUs6tBosloBdC0SAyyiHxPlo6yrL5gtP0AuXW6
	 R4UtFY6TkRhLK/CdYPv+gEyLcNBAekD5SuClseR1pQI1zK1edMfR0m+a6O+ELlLnZs
	 c1tpjd66WaRMixSgtB8PJlX25Bqi34C+v4xAXeDJPmbgztFxDSRo0FvEN62xHYMowS
	 52uak+VEeGSXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925ADCA1005
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175676159357.6443.16351523221799631184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58cdb980d80aee389614c2115a964fe54ecb0643748c939e243ed65475d25fa
Date: Mon, 01 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756761593
