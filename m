Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC771B4132
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742998794; cv=none; b=FOcAqYd2BkY40cQ3OQthZlPFWYo/qg2auXTOv9CIzJLhjj1bo+2hfwMUZXw80JMC5dbw+eW7NX682jVQ99KCakZy8EPV7ugbd8bAttrqt+hJG0ZlmMhqR1/pi2NYU8IcpAIAbv2fXAB+pCcscIO2AZffktAcmZmYgP5m9/vffaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742998794; c=relaxed/simple;
	bh=28alSMdn7+q/ZfWBJBw8LgjEE5JAMdnk3xVuAy2Gyhw=;
	h=To:Subject:From:Message-Id:Date; b=LNHKRQlyNbNvGbHNo+u3s9bVzs79zVyZUTxrhURRlYWounffJa7McddmSROMhGozXjHFWHxU06oh7kTr+gwLPwRFt8BkHeqfHLVL4XMaUpQaWVv24YqCrCZ25AewyAUHpef68GeJsZ6z8jg6bRoS3bC/ZxAFb1v/ycZgGROeUpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1ceBLCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1ceBLCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FCCC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742998793;
	bh=28alSMdn7+q/ZfWBJBw8LgjEE5JAMdnk3xVuAy2Gyhw=;
	h=To:Subject:From:Date:From;
	b=j1ceBLCMxYaxtQBVU62/3xEw+LIUWRxs3Hs1nRClH0dAm8pmI2zfq3Z0pZzaZwd9k
	 tAYQZ6bO8GvRs2JWFHztA7X+97uFU8v8pJrh1UKpyqwtHzOZNVaFdYS8FaZzZACXYA
	 m0FYWJ1TJzlET8uaytXDKjrXzju4djIRRyoT4ITMOC44L8RKbpifjZonBO9HnYGMv5
	 g3yEXklaXsRGxm99+LRU0/3ThCc+zFem3aQqGlAg23b2lANJkUGbG70LmDowwhO44m
	 wqpZcSDpt1LFPlJ7jW00rMiUx3CdBX6zKAX39cNXTYAqyA7eBccNiHzTZq9xlfhHG7
	 jGy5w8UX21UFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93634C3600B
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174299879359.8785.1504111507703518192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9a3e6233924ab0b2bb47c0ff394007a8b4735ec3cb6adc8a2f8d4d95fe1dda
Date: Wed, 26 Mar 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742998793
