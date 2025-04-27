Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562F18F6B
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745776194; cv=none; b=BqBeB2X8QYwy2VanXoKzkuvCh0WAzSIauLWxX9sY+mLUGRBPEwK5GLvuJFyxJo5NxrKWbPoWKVhqbFAoivBJeBMnTaaiOilXg9EPdSWeobHFGCkcUImvGg+Fid6XaW2VRPp+7kiIWfpn+ijW+JZbOnAGXb1n3LiZKJIh0wllDMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745776194; c=relaxed/simple;
	bh=itz4aXOg/WFBYXUC8YUCx9m4jZckSV5S90gVu/HFYbE=;
	h=To:Subject:From:Message-Id:Date; b=iVfIPkMv2yMU6NsE69+7tq0huREQok3fkfgLxsZ8D91+Xp7m56ZsRGvjA+J45mo+vAuwxqC7XzLWrJYs36fNzBovB1OSFAuBi8ukY5s2TmHdd+XmB+4m/+pc36dICMQaw3DZ4twgX5mfnrMJehgSoJZ8WENR/kpCcLSKceqN4IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oztKTzpk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oztKTzpk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A614EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745776193;
	bh=itz4aXOg/WFBYXUC8YUCx9m4jZckSV5S90gVu/HFYbE=;
	h=To:Subject:From:Date:From;
	b=oztKTzpkPfs2SBovFEpUL+Mu11SPmwK5iFF4byvqRAefDv1qstSpbrl4PGhX80Ozt
	 M45tll7q//yNNr/U/S3B4B8zyq0fslP+EcmWQuHfvabEwAh2PXtbVIlwQgEhWn1++O
	 sveQoJw2VKQpQG2Vvl5AxyCbsGb6UtWOlFOLUhEWIIfGcNGALGa36as5/YQoYwgZJX
	 gZJ+GY7pkw/qvCeAQ9yNiiS1MF/Un1P8WYdU7azcCcX9QdxcmxpCKePuFqH1J/bePp
	 yJWGDeHP/oF9ZtmKpPQ5zB91FHTVgIgm1mAdlsiRG7b3Jve+3deESKsNK0GquDqhy3
	 BdPAb/hj+/KgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE7C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174577619357.31172.3952202499107549900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c5a258a89bb015d530f490ab1afca6970fb64b25a7d6a8b848bbb4c65ee3890
Date: Sun, 27 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745776193
