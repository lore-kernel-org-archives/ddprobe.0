Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C521BCA0E
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755151794; cv=none; b=m0YBgkbQME31cfxv9T/0tXw1nNb117J+pR8djiClGlFK60HZ370RARbV2BpQG0pl7j1Z6kiAFi/56b0eZcdWExoxRML/m2nxOW9WojRPDFtGQebgR1RbXxxOGaFYy/2lqloBE4Jrbc4WGrRcI6yMSfaixytuL7McTAN6TBCRnjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755151794; c=relaxed/simple;
	bh=hEADaR7Oy9QxFfvCHshPj/N4QJVAdm5Y5Jvb0NTKEcs=;
	h=To:Subject:From:Message-Id:Date; b=NEK6/JnRnp9yqw/QG9w+ivFj7XTRUvtqXyaCsNCmP2JV0dLW8IWtrDLBAi1PiA/OPVaNfvjc8crfndFNIWt6KCYJMRTG7UMu3eSRw6QzGCLXvkVUA+v9oBxEuyZGp3TIbJFGUaB0p2aNwhER7GLY3clkOwY3uJ3aeq+uObXD2XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Va7Hgqm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Va7Hgqm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6032C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755151793;
	bh=hEADaR7Oy9QxFfvCHshPj/N4QJVAdm5Y5Jvb0NTKEcs=;
	h=To:Subject:From:Date:From;
	b=Va7Hgqm+iVMpeb6yzv3dv8neaakInwBPOkuBJtXeJsuzEozokhK0qArCv7aG6LeHI
	 X9Wg+JE2EVTAFU7rYCSkIN1F1dtpqAtNtbADeMDrSbNp54IfvwCBqiUFz0lp1+30C6
	 NfwYfUP95avLVF0VyJUUp/IkGyA0CqPwoAdYQOTrX+0wxTC1jLz4/PbKtN4vPEmua3
	 KmEVBp4tyV9HNZm9KFAio06AqNItU2pm0W1c56l7WDeMWliZuW4RxQRByH/lBoftz7
	 dyqvNzpEzHLQ8JZ08ekX+Sk+sO/o+Ni47mtTSfF/RmGl1FbSFBV3TBGf4LHKLhHEZB
	 K/j92A6Ezp8xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C4BCA0ED1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175515179359.32371.17257309568654724224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5883bb04ddee976145218fcb7f94fd933c5fa5cf2aeb6bb6e89f6d011e5eea85
Date: Thu, 14 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755151793
