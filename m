Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0DD32F765
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765798974; cv=none; b=KF4QuypRjeCCwZoxCWcr0EAD+ZaASAvrdTfchcKW24K0J2Bd2l8PMRdTdB6R0VsVj98y1IdspUHLrlEdBbqWa0JhjjIiBWk1TGUZ19ELUI/C+gIBF0GVJNNGBOBuOVYx2/d/8s1zMfK3FBQtTUYNbKXLT/WBs6EKpB54NacnYEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765798974; c=relaxed/simple;
	bh=wJlUWVghIPsLguWciWl4J0sgOZrEafYEcjEPgJuQosQ=;
	h=To:Subject:From:Message-Id:Date; b=Aa6+JRF5mXotj9O7ESOR9iFxQuraktR9znkqZW6JvLIYhZZ2pyaMbFUeGiGvlGyQSgs66UIKSHP/01/xOE42xTHgle83A30ifCbbbFn33O+92LOcnBc0DyF0+MOC/lio/Ba2MEjla2q36OHT1ew4NzsEAgAKBfXzXgZ67lxpn5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVSTb7br; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVSTb7br"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AD3C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765798973;
	bh=wJlUWVghIPsLguWciWl4J0sgOZrEafYEcjEPgJuQosQ=;
	h=To:Subject:From:Date:From;
	b=kVSTb7brgeHSF+/28TW4JExSmB8Wijuqzu6HXHLATCbiZWXS0jvtBmMcl9OfouSGE
	 BtfkP0/BhEeUXedhbvdpLCloSdJBbNMj/Qer7JY00X020GmRIoGJIqC2kYTEgkudHN
	 gzKSYKWQo9oBlWzcBeELb7ojH8cox6D+EWMjmHgPSQitf6BOtt9Jmpt8MUyDsAhDdt
	 tH+/gvzVt12zX7yP+yE6d1udlcDlL3fA9KGd9NSMvdrxIAzZ6HiBwo9vaVTn7CNU5o
	 TpT8KlwvmDWVFBiRCKXZPVE9q52JDwQUaUeJ0F7WdMDSldbGP9AkESQlkcPMH2r/gg
	 3Xs/D28MSbj0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96087D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176579897359.29621.10376681442751935017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e12733b7d0008dccb8945e51de2c1bf8e727f275adff41e6ac48d1866ba6021
Date: Mon, 15 Dec 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765798973
