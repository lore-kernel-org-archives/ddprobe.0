Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD3F364EBF
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790043634; cv=none; b=HadOewDHqABeAQS3JCwMxoZPiluPurxQ+WPA70Ryuf7I9lkbjJ51p64UN60icTJRBsBd/VA7vxy/R6TdXp1ldkISi33rhngyTwqfSXSk2gixaLUQdh7Pr1sr2nWXFoQDrTgDCu5uiGiu/YvWmkaI0qt6omtr6k7aluS0by+6b7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790043634; c=relaxed/simple;
	bh=Jk3ZCuo8kd7G/uX4hr3QxBDBLsYxNC4kPFny5D7r6fA=;
	h=To:Subject:From:Message-Id:Date; b=c6VoTDXSUwFBtvrVZUIvKuluhJ8bzbqEgt5cRN9/W38+0+PJr0RX3MoGYxVMfCAZBVW6I89YqgDOPQmPQuBBPR+egyt/Sl3aVOWRQm1Gd+/45hv9Pk5SSlikPietoo5ULlN/vSyjL+7rE4UNJ8fjAE89wh8k/SA3vcHpQM0bDkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bceJO1nc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bceJO1nc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F16C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790043633;
	bh=Jk3ZCuo8kd7G/uX4hr3QxBDBLsYxNC4kPFny5D7r6fA=;
	h=To:Subject:From:Date:From;
	b=bceJO1ncDor/6ihG2zezElggwsmPgGyhzBHowHE72Y6acIf/GRSG8A+SH6wGepofm
	 Y3iCDUcoLbf4R0bqOGIeSVNx7qwpok67+1YgyGFeeQg2qjoghHtHTM5EW2sBGTRo8s
	 XQAxyjMKB6ZU1p+CTR5wF8a+lHuJ5Zy1TFRMJod1ECjIgR948qI5izHMJBsI78nyjK
	 yJrSrJITY+EVpWInMjt4vLBEkrQqqGUrgQey7+QObMA5DYhFAFK3VxU0UuSlVwmzaO
	 P3NpdBCttdgXbmppAMZ5ldZXWPARkbk+BZpZQgK1Bi02h/Z5Y6Cp02hDvzhHPi/St+
	 kLHeeDPns7SEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0402C982FD
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179004363370.28817.8909870919652164286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c223850dd78c6f537006b6482437fcaf4b4c14ca899b7f8cf2e3c43b97dc8a85
Date: Tue, 22 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790043633
