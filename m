Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137952EC54D
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764598374; cv=none; b=ZlCDCaJOYOpV3DGkom6Z1GqxOh4bbC6lRbAROJvBz99ceSGkI4pR3JtIRCgf8jnSEhSW7sqZ82mRc7PR5hl7BlYZbiO0r588jTJ2s4V+XWizPrQ5lKs3Io2WnjupX1L2Kvt+VMifiYdwX5fT0Uq1zfPk7pdJnlHRM6R6wJEnKvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764598374; c=relaxed/simple;
	bh=Wsg/vH3+lRFmqNtiUeTNd85WX/46TUpNDBSUWDcKi4c=;
	h=To:Subject:From:Message-Id:Date; b=mHOivwnX8ZcrSSJ+/ShUwBbvnVAKkIwzMuGU8brCTSEQC+wR7sh5VW7Ijz7WyWHqmkwLymchOt/FaBH3o0nyZPyMXFqTmsLG14kG/VkmMYV83andi6eNxCjKZZFUyzlazk2p96G9XFTPWOI+P4IqpEu75f/antaAnM/k6KtVO1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSLgLkXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSLgLkXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5693C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764598373;
	bh=Wsg/vH3+lRFmqNtiUeTNd85WX/46TUpNDBSUWDcKi4c=;
	h=To:Subject:From:Date:From;
	b=BSLgLkXckEZK4+wN16b2AuGbF0GgmEUraqgN4Ba2nddjwoiqlg+qOtyHlohdTP7rL
	 c70k9815Lu7X3xsp9UHFzKtWT5wLKtaHp6j9JYAiWYisyDEce15waZFgJ6Qxor2Qpb
	 ozdTLy0l6XNiXEs3DRu1xWbReWuYmR7dyCd+FFt6SlT7F612EfpJKsRww7ozBcI5JG
	 h6A3OpsTHt1HJRx0apiDFFa5zsGVHJWFTP8s4HdBFSR78yE87Tz4immz93GIwamKiS
	 Ca5pp1qE+30JPoZWl3ytfsEuOUUxcTWexBT0LHY9rXP6HXtmkusKJVUfgMOfxZAc9Z
	 zRW53VFDRCpfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91251D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176459837358.518.2286550049247797417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c1e92f4edf2dc0b87aae9419df62484d009576c67e261026feefc0b6540511
Date: Mon, 01 Dec 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764598373
