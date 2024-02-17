Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A4B1C68D
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708147097; cv=none; b=ShnPGDT6jZaZaO6t2ACO9X1vaLBnCmexipXqUwRpnJP9/wXeOJOLXHgwFZ/FVAFxhK0ZmOwX6T+vwiinXmM0Qy7pnBhCthvpgRDqiDDe6Zi2DVFzGFV3P5SPCY5Oqf3WUWBz6ud2qjp1bpJ+GPAicsjnPxnDC76uXzy2wsoUflY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708147097; c=relaxed/simple;
	bh=YzRg98/4ykzPap/1KTTHJrUGb1cpL7HL+SEInkbiuDE=;
	h=To:Subject:From:Message-Id:Date; b=TpqoCyp7VsUbXoF8EAHPIqznOdy9mz1oUOqDTqdPCzSwwovkyP6pB4U3s/yOuk6iFIFLDZRkOAJPdsi/fdjPpfeApmCxHRHX2B+xMFrmdtnNEXXX2AeKgcA8dqyh/a7Avt4IBZz51kgdkO52JX5cT0YG+MKSoYf8IBPbHkxzGxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2nnKQfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2nnKQfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D49AC433C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708147096;
	bh=YzRg98/4ykzPap/1KTTHJrUGb1cpL7HL+SEInkbiuDE=;
	h=To:Subject:From:Date:From;
	b=D2nnKQfdWOzCrsIWbGtk7AfA089IRiUDNZJwmyMy+EGEecpeAWfFrlTwBEBcX3HbH
	 akuz6wX7/RZjvS7Bz/Y5zClZux/k5d9NAsjuH+3EmVOCZkDtx+ahc1fY5GA0D2BlOg
	 jUZyFT54wsCQG4IbG8itoVA3/hSfDcgEf368NQ3JKjwou8SaFTTRM5MApSK68hV6rx
	 XtVvoP6D8z/zqNyB+2/UJ/Zz95o/qJppZmfuQdrX+rurxolULKbuunF7cjwBWdRr3v
	 fyf7NuIXH06rp2Rsv0rlIbITfCssS0jUYPvYRE69/TrS4rocfg4J5HsrQ38cFkqpoT
	 P2H+jsJrP1lIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6106CC48BC3
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170814709637.26138.4389207199080203762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 575b50fa822809b410a1bb8f8d4a6b0704f6f48a1ddf62a3c84a5a2c48c9a7b8
Date: Sat, 17 Feb 2024 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708147096
