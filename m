Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0D82E36F9
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752440994; cv=none; b=qHMv76pwMTqZXgM/qzvN1ATPVKXjq30LeMbT9Io/rPDpUTcXYCjJ2c7DPb38aVIpL5kmgrxD1Dknwk7txXbwczc//mqo52hOYIq052o2BK0SHdnAnNLvZeasNdCrmfW6JI+7R/CnLqlCrEfNxLi5LZ99zLoQ3iWqOp1+9Ocem6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752440994; c=relaxed/simple;
	bh=M9v0eGQSFFkihlTFB5mEoAUGIHqWqWkPpWBjM+u88so=;
	h=To:Subject:From:Message-Id:Date; b=WdRCLPv9YikhF1QtOCj00+KLtqJCOThmTi63JIYP+OzUiOKZjexby5GZ+NQc3DDw19bzeCKxVoBBFDEzGHwsWGLNJPUp8O6ADs5Muadl2XbOIWu2TfzeuDe37sYpolvBw3Nkr+lVPbi48yacYOLJrPUltofJsS7QB5I3q2x/qBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEFN1PL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEFN1PL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6803C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752440993;
	bh=M9v0eGQSFFkihlTFB5mEoAUGIHqWqWkPpWBjM+u88so=;
	h=To:Subject:From:Date:From;
	b=UEFN1PL8dyxM7FxCzLyf9MW3YMUrCqIcg9HRr25KX+sOydfI77jEv7fGuhG+ii36Y
	 Wx5+8o5YyQFQmAsmapftA1N41ku9rVAE6fwTHOokCUrySdIvHSBUYkkLo/Zuah+0AL
	 Bt6y4dyUIGx/cVfX3gHWQFSByD2xjmyq7SdAGFbXOaADx7t8xZj7cMcSwceX/wVN3C
	 AkYQcClC+He110B8teCON81G9Wy/3Bxhnp0ibYBlGDYVB8sXF4jfyIpQYJjsbwCCck
	 mqjkkjtfxO/wnvt6zMcu9DrJKeZvbeBhIcoLNvoOKwj5ev/9voZGtABVkqkWjA/+uC
	 jXCLSk1dQbdBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA6C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175244099357.28325.7728750042611290158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3715b036b8c985449b724439cc40f7285c4b12498f900843f5d8d133df16839c
Date: Sun, 13 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752440993
