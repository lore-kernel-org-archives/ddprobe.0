Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33686CA6F
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760925594; cv=none; b=r1kbmH/ECk+rBgtSVcthm3KMC7vQCN0rDA967H0MQNwqL0GceZelxog/zjT7KMl68/pwghoTdOhyx1Iphb1HGZIs5HajmOMecltxVvrCEvdPEYT1j9iOgbowcruNRzhfTEUJiFNGQX5xb/vsEgnnF4WJC2wdwnqa1rWEtlaJOTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760925594; c=relaxed/simple;
	bh=HbNtH13EYatRunKxQPVKlkBucMk/k5aZFfLcnRxTLKw=;
	h=To:Subject:From:Message-Id:Date; b=U6B9D4b9jpU3ufLfAsi8t4delsm88tyAkDEyowV91vuDwa0txO3imzBIxTq9YRJY6r1Kj5I6zewyhTDaKXZrfVi4jpIVvLQZdwdDbBkuo2yKlRTa6NXQE9S6I3v8sljmYZsdWAtrs2tRfRlCPkS20HMvpKj787rhCvwCU+pyUaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6oLApjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6oLApjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE70C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760925593;
	bh=HbNtH13EYatRunKxQPVKlkBucMk/k5aZFfLcnRxTLKw=;
	h=To:Subject:From:Date:From;
	b=b6oLApjS49tBeCPNYi+K9diqwtHaTh3PFdO07gzNdZ0LorragRwaOo+mgUk98vztN
	 BErB5kNISdYnPztBQVjzeMN4Rp4EA1m8W8ccU1U5n2w29KERFPINeHYeIWoH+kb6j8
	 aS+4TWHfqNr/imHz0sEphB/JMx2AA4SVbN3T85duM1K3K7xUzUFGurljrGqlbAy9hw
	 WRSHJX0273SSPw9X/6zNsoLkWd7vQAvWWLzgb9gPHXRWgkvJmmkAKUO7hi4stoTXj4
	 p+chTZQx3/LyL3QXLZ5TD/wVyGZxMxSMAOw7Ye12m9EcDqgR2SyYgIQLJi/j06hDAg
	 tpKbKlsOLLuSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94354CCD195
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176092559357.16073.17797366346199419537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0763a3e21189472f7b9a4453f1495f87e8fc980f09614c34d147b44982310c76
Date: Mon, 20 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760925593
