Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2DD1A08AF
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772966694; cv=none; b=B5XWiiNzGh0OqwP747h32GQvx44HxLBy3TeBZjcB1vRNDPZQWTBTVsxjQBDTJRTB0XGM8tAEL8Jor887kh9bEa9bR4vnsW1DJmKvI6X8RQfMsR40O43bc7RKyrVwq9WsYwz+el6e+Q/jmCNVc+wcpubEnHIFHvPCTyCOe95WREM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772966694; c=relaxed/simple;
	bh=VuDkk/6A1DhLdMWT3z/SkUnVX2pyonxuPVwK5DPv5dE=;
	h=To:Subject:From:Message-Id:Date; b=MrUyR3tSh4B6DK30+OzhMvYp3+5q60GYB6xqPJrvwnxkeJxG3L8/wWH9XIDRZc5UfPMIhW/OtbHX23tih4KgoWWfDcKMhmjegHIfjy/UejmISAvSerxM9ypRHLBJOG1niU+6kDMQ8ZFCxjADlwJ0h9fmqvY089QJCiKZNE01KlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AAwjo6y9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAwjo6y9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B9FC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772966693;
	bh=VuDkk/6A1DhLdMWT3z/SkUnVX2pyonxuPVwK5DPv5dE=;
	h=To:Subject:From:Date:From;
	b=AAwjo6y9syIgMReyU5KH89zc3ThDGPIQAsmRDCrpTUuRgATqGnj9iRMHbAZc5Q/yC
	 JLwPsHDzD+oPv75Sw0D9xjZXZTmcNayvvc/RSkAFtS+FNcX2dRnd5FMANOVHCEawSR
	 KNxRVcmRqIEYy/6S36ElNAh+uajHafuNjA/wZiXgw+UefA3WtXKSX3Lcy1+qU8aVET
	 CYqYG7p9w2mhtDvZsnioqu5n80NYX0YIxBUPEtrNs/LaZvARs8KERWoY5+yOlscL7Q
	 GxOEhJf8TzxGaQqeZqwvz/cbSTSYfolU8C4gAe7qe5WtJ5lrx58y+iFydGwev5nCeg
	 DpmYOIP4pDJpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9285EF5513C
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177296669357.29944.9794349147054774700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed3f9fcdefc59881af2a924b23a6e35e457928075b37d60f644dcac96c38bac
Date: Sun, 08 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772966693
