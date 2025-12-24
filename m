Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE9C1419A9
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766616234; cv=none; b=Vf0bLPIIyeebxF9S5utU/7FHjjcr94CekEweE1H4TsmQZoQmLwW3hvtoWZAjda1GdSZLLbrA2S76Wxb0gtiGzOFu6fUrZM1edDDkyNN2a2w65A7ETVvFSQuuSoCgnCs1CG92TyxVBaVW18GcLrPcM4YCpTBlikaixHSZqXKCd5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766616234; c=relaxed/simple;
	bh=KVB0CNbjMSJ+M7/jsHhJQsrkRH2vc24Fvc6vZU3LsU4=;
	h=To:Subject:From:Message-Id:Date; b=Umxa2bEV4hJSrK87LA6d7jj3J3azgLHJk9U6KjtyxPWqszFaoF/uNMvxCemmzl7Dm3r5hWXJr/XJ1aEc64om6IY8QjWsmMB06hLVAjK3s0Cpv9rH1FO7ARilwi208GToxtxwUroSIRZ2LoVILCt/BYZPJOBSNNKu/OzaW619f9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmZh6pr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmZh6pr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E33C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766616233;
	bh=KVB0CNbjMSJ+M7/jsHhJQsrkRH2vc24Fvc6vZU3LsU4=;
	h=To:Subject:From:Date:From;
	b=OmZh6pr0ACzrBongw78kKf7txFeN7ZMlHrlOM1jhT/s+ADfOA3bjb7UaQy46BBwk+
	 B4qUUgo6WbJKP0ZzXB6+MrpWCrQlIozWnb4TFE+t+05WlcJsWrj7AsB828ms/gD2ca
	 /LEBl7WnQyccATnqKh3e5zyUj5dPtkVpHqlPWJinGekkk44gVn47ypHYFhkmo+tfQC
	 5VUdYZ8Ea1UcKdTgkOsrDLpeT29lTP7lYlUncO+IDolWpiMgrFsI8DrduavuuQHxud
	 /r472N9Ik+m38sjZtnva8/JXJe2JpBVKUR2oCfPlxskkfSxSc4YkD0Hq3piIbCRpdh
	 kompWMWF7NY7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9560FE78498
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176661623357.7621.1969438369407089873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b09c3202626efecd360854a6e3c841f9044150be41000625eadf95d0d3f0f7d1
Date: Wed, 24 Dec 2025 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766616233
