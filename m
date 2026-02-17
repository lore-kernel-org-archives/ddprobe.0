Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D921A238C
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771289094; cv=none; b=mC3T4WRzKr2VuhpYoE3V1YLvqd4LwX1R1zwEaSmiAPO919Igtgn+RCBkViPQ3hsJcYsetAT6lem5tPD7PDsrebcKV5B2n/zfSAgY+kS0h46ipJNPuH+d4Jj/K8VY9rtkBjZwDPMDxsro8HI7Gay/jDiF4nkfv06h1eAeDjrXnCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771289094; c=relaxed/simple;
	bh=Bplw3OZ4MHF/a+/vYp/fVa8F/xPUcfTH9usbNNZGFdI=;
	h=To:Subject:From:Message-Id:Date; b=RSBB8DPe8ZylZH/b7QmILr0THFmWucmXvrgAUM1Oo1LqvTGe8QlgnolMoAVyrhPoOaPenwZOhceJlnGHN1QQFF2OP18aBcui5Z2SPCqkLD3tLGhRbwDAEyTpE69z25A9/cXSVIOUhuwA7FFDtRJAgJfMSqk55TJC6I5mN6TG2ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTQXhnmb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTQXhnmb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7AFC116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771289093;
	bh=Bplw3OZ4MHF/a+/vYp/fVa8F/xPUcfTH9usbNNZGFdI=;
	h=To:Subject:From:Date:From;
	b=pTQXhnmbJedkCKxMZmqynqa1u95WUQdpqFJfTs2rq1XHEC5B7nXX44sYCRCFRVPbx
	 4eVN7qFcli057bp0IOwN2v+N7eweDZgN9aqHjMxCnM3bhxJk/S+rqed6axUerVtTOz
	 d11yh3m6RZ5T6R5PYOPiXzDNHPJa3gMEJZe2B5nmIYZPh789FpdYh8uJT0/TyB+Se8
	 KxxZHfzqFBDXLh7nuavi7st+Pp4uZTGypiNRN6APNvKKKt4Vr9kOsrZMhTHJqzD7WQ
	 TbH6bgRDFHTVkrrpy9Q1ovYw2CriUOJ9JSmvY+DeFOMyOZ29AtvxJ4fHxocMP1/NYG
	 MEtcmEZkto7cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962FDE83847
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177128909359.2617.3132785050791668042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d926254e3337c2c7da5cd511bc452a4a2df101dcd2432c5641eec6054f5cd295
Date: Tue, 17 Feb 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771289093
