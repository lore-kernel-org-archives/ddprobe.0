Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528212FB969
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784258314; cv=none; b=B+TBMdkY/bTOPE2IH3r/IIjEYtCmHCIHVhpQlIeJpkslioSgzx4BFfeJgGOcIoMnTJHGRANi1TX5oStsAoFSKNY3kUMSoCyTLv/kH4YoIq2btmlAJ3UlQRPnzu+tqJ0J1EcnnnNLpqYsP7ipV+NoChpXNiHAb97GCMmZZPVVzcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784258314; c=relaxed/simple;
	bh=pQ41NBW1gAr+TdIZrtBOJs1eu87xFpGkpDoH+fEBVCw=;
	h=To:Subject:From:Message-Id:Date; b=ss/bbrXXZxIvBj0CNaYSB2tPZBuaJPmCZY+naumrJo6jMxLrmYDb4Nfo7paXfA6hkI2KXZW2HBVDw/54fLiSilX8SXOggeo++niuuSXdntwjp3PcnsMsOVDuegJ6lDBddtFpIn0uwVdE4todtl0SfS+w4H4VK84Xf3ZXz6b9xso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMv6jKpB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMv6jKpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2541C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784258313;
	bh=pQ41NBW1gAr+TdIZrtBOJs1eu87xFpGkpDoH+fEBVCw=;
	h=To:Subject:From:Date:From;
	b=SMv6jKpBa8zIXpwPq1EgstnS5yVSQh3YGCdjElfKNwgs/15xgUgRl+LoNs3QVO+iQ
	 vD6yNBSrG46IisPOCMkUiTq/AU5GjqiZwFfgkVUD91xIkvqKwNhzP2erBhFgukdGAr
	 GPjrn53GnFFXymHmrsgZvm1Ab7ofMCubSWglSQ5w/LN4/GarB7nnzOqLWnDYhOdVEX
	 hF0QCFm8/iyaULBd4EZtztSuuXLm3ug9zJ//1eHV7/PTDYChYzawD4o9GjNnzmUAl4
	 wnYgHFRKju2Yu6LvQx3rwMB1nVg59LmDaohxIdS1ilTlGD1zFn4hEwstmFAWE1ua/M
	 blj0rzS/aBd+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5B4C4450A
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178425831368.18189.8621232263553103984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c918aacd0c51c36c92bd3bdd95015e8868e326cfba50b748a5a54d227274f1
Date: Fri, 17 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784258313
