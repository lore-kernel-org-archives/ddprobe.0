Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305BA199FAB
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748072394; cv=none; b=l3AeukRzY7mqeYgJOTxhP4nokl76j9eZRsYW/ejWPh2DLOLmpsSUPymgHMnlf+oxfRCamWUhTD5uxXA8I5YkOZfBvDB4EGbMPEBM5SNcABM7e6HTzUi7W3DW+XCGIaye0KUdwY11YfXAP2EX5f9bW6m4zBkRU/WQ68JdUT0XpXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748072394; c=relaxed/simple;
	bh=IfHcfvH/DHD3xjUVLv3W9wej+g5dx25a0CdF/Tyub48=;
	h=To:Subject:From:Message-Id:Date; b=qWLFFnCKKKdjBcoRjDD7mBxKPV/HTkzDIuGIbdOJ4EEC9ou1NfSmydkGk6gDFRLvkMAbIs4JAtbxl954hwa9g7SxgrtuHuCcRVwYBm5OTWaOdZ6c7zqkCXHlELIwxFXHZia6v0Q44hnCKL9IhEMbwqOIag1sZrzlbBDfvf0sVQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HARg2OOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HARg2OOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEAFC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748072393;
	bh=IfHcfvH/DHD3xjUVLv3W9wej+g5dx25a0CdF/Tyub48=;
	h=To:Subject:From:Date:From;
	b=HARg2OOusw0pagf5P7H9HKQjZ91Uvd2roe9K6MKitQhWKrmDsmqx1tbSrXhikZawC
	 er5VItKvMk57f5VOFBU5uTeEQOopiUDkyDRfEG4bvr5rvG2xu7ed2CzSkZLdc3u5u6
	 KC/DlIzSYIugk4jmGT/Ms/EIVXSW3cVilaIolSX7LfWJ+9rM0BKD4FUkwsHAal9aKs
	 QXub4vSnTfjUMS3Q/eB4yCUcDRZUngyA8SAAn9vS82ibRLOVPYBDismh2dIU/FSOWq
	 yImG0uY9x/+YA6Qk2k7q8MTQhpt1RAhBWoAz5nhHrMNG7sNEBr43WkeThs2b/996fQ
	 Ss/k8lb30WE8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2E3C54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174807239357.5908.162912615928356773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9403d6dee237d1e55ed21f4cff8442de6292068c575a4ba58dd150840f180ec
Date: Sat, 24 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748072393
