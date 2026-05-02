Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3802A5474F
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777763254; cv=none; b=K2XYe5MrfkjnJgxSQZok0B6GouJnWhHZQmtoFo2t47WqOEzt2DSMUGNSZxdeE3tEiYtBG2uLNbneRaWUvGGf1BydHQ4lxPnu044JrzRnOYc5ZolBaPCC+kLnNACafJeGIPKrpdw7o4O0te7S7Y/+G3/gdcY8dxh3chJZC39+pLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777763254; c=relaxed/simple;
	bh=JidmiI7Shbag1rUXJwogrYF+RMYmJjSeWGmf94eezzE=;
	h=To:Subject:From:Message-Id:Date; b=D7AftGXN3h1TZouMAYXGjZhC1Ty9UdLVuGlbQh9aPENMG+YC8kWefQ0FrjOagAUEX3p6RDa4Hocqaxv97IF9NEYLdpYrISXGnL4+dipxr3napY9ug+HEbL+kDgu1uNVyD5AEp6acjwHcmfZOqZrdvcHZR/8znF6QVo/o1IdhAAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMWXLoDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMWXLoDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A3CC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777763253;
	bh=JidmiI7Shbag1rUXJwogrYF+RMYmJjSeWGmf94eezzE=;
	h=To:Subject:From:Date:From;
	b=FMWXLoDlVX8ahfvJGemooz3MqboXsPu5u5IasOAnvAH3iEJrDTOaatpYnqf8cA2Sn
	 MI4L7L0bfehRNQFRN2W5IXOxW5pcXcTe6HcEiy4jZHnXc6sjSUOIFombg/amcHIZSL
	 dStWbbZGKkY22Anm0jIXtqrzmfnXQ7o7fm1AxmogC96KRUqYk3h9SC3HRqWnBOeGpC
	 qydwTtHSO3f85Rq13gqLMn0YjhnBfw2F4PQKl6yjlaD8pTEwbY3tGk9iHB58yemDXE
	 +zfarkQoBSJWSPSrOpnchGGtakWuSa96HPO6onk1jiMMKzeVdkgOl/Xg8/JXdgmGiA
	 YANIOToOtatgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF752CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177776325368.4670.2107813734437458922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a334fd1912ef64539bbe7cae7990bf55f596621cfd7342e68492e1af12bbb5af
Date: Sat, 02 May 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777763253
