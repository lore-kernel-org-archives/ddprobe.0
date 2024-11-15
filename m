Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCEA136341
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731690354; cv=none; b=nrvZdF8Btj8XqAXCvZUU+Tn87SOVSFlqhNHznJ6Gty50wb3rEO9vO9Of+wKUcX77De0caedrk93r7NrLmasX4j9kAMQcdlEXTIomXmsUjo3tZGyMA9ap7v5yPaq4IdJkMPnYz/Qz5qOyz4s3rSSFvRywwRwoF80w7Iv6Ak11ZqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731690354; c=relaxed/simple;
	bh=iGWe70sp6LWJmwtdM4xUYwI7yBhxwhlnp0lBZujHDuw=;
	h=To:Subject:From:Message-Id:Date; b=RB8ubgvoopBVXFsqB8mht5go5yb5V1X60jB1qE4SjEuXleOFTCcBptREeT81VZMq2qL4521Y7qxoSN+42kF6bFgJJKRojSMWJJow46T3gT4LkXiAtr15ih+oAmXNQJg13m4MFkQTgI5K3bQkcNXlbY+r6mgPURjyaEIm46r354M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRX+6RR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRX+6RR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DBCC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731690353;
	bh=iGWe70sp6LWJmwtdM4xUYwI7yBhxwhlnp0lBZujHDuw=;
	h=To:Subject:From:Date:From;
	b=SRX+6RR443OENT/ydKEuglS6MfEHdVqahERQdhAW3YVbVv2yRIK1NcTUX75gtFKLS
	 6a92ff+LHJoRId3uwGv0dcBCQ3F/sYSm0pD4fAN6mr4Ku5tilhR47ZcnI9uwWffxhT
	 kdUrcSl0eP6B9A/eGR2lUW3uKyPK83zaxY7IUySp+aBYn4QgvSyUTZ+Z72rKChJWPN
	 cRrVU8nWFa7paFKYF5xmYo8rrVonMaSqJ+4AyQ/nNzxuQIPmEh7+aKb7WmD+1Jv8k0
	 3LxrNoN38tGUp4/lFUs611GJElBvXtuSxRP+CFaBOZGRDJn0OfBalc0GvkugGIiOAi
	 PwEZdY/1pTyTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92407D68BCE
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173169035359.30524.15142517113987492344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe073f0e92f36a0ab3e478ba19cb0a09ccf90d6e7b8337dc5b12d0f53f78ee8d
Date: Fri, 15 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731690353
