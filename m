Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86C51F76CB
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734456353; cv=none; b=onj/5Sy6wQSsK+zkMcW54b6lObBtDQ7oxQJAoe4reu5yq6VTl7C61ogWSNON1JKDaUTVmhtMqGl/zn1eQvwjAxN+51D7YfaYSEcizL6NxVtX/PNCLEqDHyJzLNIAa/IwDfKv2arUaXff5S198scpbytvDYOpIEwWRZpEhALvaIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734456353; c=relaxed/simple;
	bh=EP+1BRSo30b6VT3ASHFGQI6tTebq2YlvuqB48w6N4k4=;
	h=To:Subject:From:Message-Id:Date; b=XIQut4AjssYHdP/VSWAALzUrSkH2dVADn582hr9NaCPtUDWVfJQm+qO8Et4VqMWlehTR1Fp5LgJrGm0XHpigkruHZwrGjPCKIWYguErrBRYhm/5HL5ArWxDHz6T27g21g7tRJV85Lbmqa9kMtzyUgCl03vBQCTUvx6bj+ZOJr6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmrU8fu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmrU8fu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4612C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734456353;
	bh=EP+1BRSo30b6VT3ASHFGQI6tTebq2YlvuqB48w6N4k4=;
	h=To:Subject:From:Date:From;
	b=gmrU8fu1aWkFBzkaIMBwEdtME0djwiNpQuydTJ9q6aEeXDbMk0cUDpm3PbffzPplw
	 WYUFvFFn3fqln4abhxGs/cBwmnDMcseAZwLrOqAEfEHXjfDAPr32QPXhG0jWQQgfje
	 /HCtm9kF9Vcf4pyehLU+JffyxGfYBOvhquUUNKh2GRaC4Wms3HegUBpvyeYfWa12gf
	 rFiiOWmFfcriK2H4aM0sal6BLEM2/TY0i6GeosPXObpYK4hFWU0YSNphu6d3lS3WgS
	 K4LoF8Lpk8Rk7onUfQuQUuaZF10eBaccEXMI0YH1snoi/IwIlhZaFlGBaAq4nbkUpK
	 ijVdRhgToc9jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FE0E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173445635359.22784.14308710579729068538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2b66fcb342a23a7fd3e38f8f6acc64ebf57fb10c02d61eb75a714b2b8fe839
Date: Tue, 17 Dec 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734456353
