Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F7C17BB21
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767284634; cv=none; b=mmZhP/yTEzoJ+LFUzy8P+duUvbZ0jxBLCXHcriIQuv/HpeKCBOHd0VlMaBYgvbqpHMSY9fqQ9Zvz+Rj/u3QEh8Zn2+A0/J5s0WvXrQlR4mVxryEHSX7g7Twbm+FCmrG74jbxnxpvfeUcaHs3iJ6Uez338w19SEkDtMD5FNqapWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767284634; c=relaxed/simple;
	bh=AkcFBSoNF1RX+YiU2m/c1Z1PzxlH75A/QvgkLyu6clU=;
	h=To:Subject:From:Message-Id:Date; b=RQObWTEdIiB30VAm7HvQowwmgSeirbn8dd6aO7Pf/tSzYbd50ezxX654ReZEfnhL5NZPZhnLRrtPbujs4Wwpy2EgcO+ddaIl/o67qZbGKxolAYPYASy92M2Esndh8XC82xJqnPt+21VpAqNteg8yX4AcGrv2DIwPIH49A2NzFN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fG/rOk8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fG/rOk8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B06C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767284633;
	bh=AkcFBSoNF1RX+YiU2m/c1Z1PzxlH75A/QvgkLyu6clU=;
	h=To:Subject:From:Date:From;
	b=fG/rOk8zTAOoSfhQGAj8iCoQy4ToQkzhja33dfUP1jomive1RjLZ3Ct179bElY9t3
	 4M0nl0FdjC/LQci5kSnFbPOLI1Wkjx5Y73MAZFUFPx7y1vbK+wx9UenmL/AFpmvE2t
	 /Foefky4nqDyZdjT1fr6BsnHf8lplB0CJksaEPpgEwxZCdjOtUmNgKnQOLGXuLfl3l
	 rygAGxZiY/QW2ku1HfcDa1973rkginyc8JRK63qcTxTjET9avj38JMecgMOW7PSSlu
	 NtbFKmnA89sL0BaAOEwrU9n6tg6pvrjoeGECzw5lvPmEVR0VEOD6v4We9fCN+DVRg9
	 EOk4++uLs86OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ADDEED60F
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176728463358.3613.422849508477385008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b9437aa9921eaefc3721ac1d08cc2c04692ab5e176462da4a36f02edc602e5c
Date: Thu, 01 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767284633
