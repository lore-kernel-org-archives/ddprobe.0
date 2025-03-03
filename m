Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357691D5CD9
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741005534; cv=none; b=mIUb8h04bVY6z7lNVHFI4sSXC5a+pmil6fBLglVLbq90hTGcH7tEBj7KLnPzbcwvt3hOx9NTwpq7cSprmCnZtE8kXBiTWF7LDvuXkLMsE0K80Wl/l1T7Bs0rtJFNSFZotTt26kwSUAM319MtrG+24eE9Bmoyx1Pxh/4fa2GQ2a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741005534; c=relaxed/simple;
	bh=zAfOv8MUJPjRjwZWJaNGqbyFImV0JVsc0ZIwowpNyV4=;
	h=To:Subject:From:Message-Id:Date; b=TDPO34rpveddpproS2cpDmKhvD10mlYOrBUgVq3pbeNl32u/Lcz8ugP+GoK4Fjr1Xm/KgnmdMEs6uAyW49qFAbn3Bi1PIUsF0l7U5pPJiS+1NbFJPreUtBLG2xTCTNKQ8613DjWvFiu323xjMVEidz4tbJRhtaLc3Z9l+2BUgNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYY6VpyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYY6VpyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C47C4CEE8
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 12:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741005533;
	bh=zAfOv8MUJPjRjwZWJaNGqbyFImV0JVsc0ZIwowpNyV4=;
	h=To:Subject:From:Date:From;
	b=GYY6VpyWylnQRJpM2TQDuUtfhh4yo7cfBOutZZu3nRfO4ssujXZqHCi6hNeKFWK0x
	 OSVGRuXriRuveG4xdDdmjqAiug7xHyzPgc1UgBGaki2I9w6dcd2O1zWE/B0qU2Er9H
	 QkmSAByf6lT6ZZB3ab2RDmXDRn361Qml3ZpE5vEqV27/wO65O42krnwD86oouDJaI1
	 ZOyroloBmJ1+pDYU5J72azFwtXzpTbnTFxnz3E+afVqmtuEW8AHTFQam8oCqHhqnff
	 epi2WP8ICuNf9UY4HLljIHXAydOPBLhr9Qg9mUigvuszFppLO0YMyctpeWOC8KCy3b
	 I4oyOKKYJKg7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F6AC282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 12:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174100553360.15716.952728173408854386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a628bdb0eb2ac4a691c255bf1f03e539c601188a865ade4204753aed01569d9
Date: Mon, 03 Mar 2025 12:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741005533
