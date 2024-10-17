Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5CF382
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729130154; cv=none; b=ldi7L9z+CaNsDhrGz8kuikQhB+5CqgMeLat4ukPlW76mB4mcysKCeLV38msyn6ds30JKwctdPuhJlF4pzhZvGi+/Bv1hXfPrMhBAHIaoxpkU67cBqyvAe7ASlGOueprIHZ1KvXZh+llnMkhRKmJ9UqHFrjVA/CkOxaBV+krmHc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729130154; c=relaxed/simple;
	bh=fVKCW+KYY0tECl4SMGzTcEmoKpmiDJvQOEhCQVWrj/o=;
	h=To:Subject:From:Message-Id:Date; b=kyYLh9ZfRu6AKYpSaaYLG8DjfqQhHU1ZMWmbrBcG6++m2ONeqUXDzHT/sGAJvVTru7HwyAO4e8dAiaLrH2E11PhLPhEH6W8yVUARUYyhT3rtfadNcHeZVc6lLTD1W4mhjBN2mD/7mHYzNs5A2cOqNzS9falvQTZvW7QGRaxLnpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbInYk+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbInYk+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE70C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729130153;
	bh=fVKCW+KYY0tECl4SMGzTcEmoKpmiDJvQOEhCQVWrj/o=;
	h=To:Subject:From:Date:From;
	b=mbInYk+Zp1kd5aI48puJpEDLbp4hlnBvdXZgazSnDJA9Skw+enZspehgZiE5HxROk
	 fNATpnqSgx5B9US0JhjNIcKOT+TpPrLtZAJQwGQUfV5W+B8C3bQduSedcNgkTlJDtq
	 sPPFy7vRB172NaHbmA9lFjtkEi2syEpQqrK2dYVzCm+gA0RIsoETHn9GgHr4jJXN+E
	 m+wpSX1xvwTy1M02k/WUf3ZPCHn4NHip0ezIADPKWTfBqL36TygDv0Q495QXg6w/Tm
	 j6QYa46w87jgk25SS6wgvSPDHKslll9ES0OncTLVAzUBm7cB62skQXVEslUApV7hBG
	 SVG3U7qNAHndw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F48BD2F7DD
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172913015357.28018.17449660655160140756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03fc30dfb5119c09cfc0b8e2fe31434f421e066e1d94749c836aaa581ac04e41
Date: Thu, 17 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729130153
