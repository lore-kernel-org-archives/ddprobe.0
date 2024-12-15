Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF841D696
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734269154; cv=none; b=OW/4zssAyY3Hw5QqKtPbvB7WubF80ZU+/w9UtZ8FnAaOIfvpP3TknTJi0dNAqO8/a4Ja6upJp31oj0fM875NtSSu40fezWUNMg+cZv3Azq+E48P5fT8xR5qpYxdzQ/t5pHg6lppg/DIbnOmYjSPxfP3EkYmRok9MUlug9FlS3lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734269154; c=relaxed/simple;
	bh=5EQyJsXF/9TKLHbDBwpCXPR7ymHc5Pj3+oV28+NbPAM=;
	h=To:Subject:From:Message-Id:Date; b=FEkYb3Rf+/acIS6BPC0SdIzQgbMa+o60S+JdDeFNHC8y0ZK4w7saPRryqSwRnqPHJ07dFDhrzB+nK6Af024C7J5Ev0ZSgQ/6tr8Eam1aBf1sfa2YCmQBeuAQ9DxeJUYzkuJxuFxFXGxleTax/2fei/E+HSsqENMGqgq/1PV20qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXb6W4vY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXb6W4vY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9822C4CED4
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734269153;
	bh=5EQyJsXF/9TKLHbDBwpCXPR7ymHc5Pj3+oV28+NbPAM=;
	h=To:Subject:From:Date:From;
	b=XXb6W4vY3aaGMotNU7f767tsTYA4Qrws4M0GamojDU9qttCPQVPY6mynFYfflzlzy
	 4fkaJ8hBfEMUqv2hzSkA6VJ3Sow6Ep09p7AeIu59GXaRiBXRdyOxNqFziOtg0EAPPd
	 EBqaUtBRe5j7JGWzQXW/X74Mi++INhHGTbYVIn6ZdUcdPzFP31UOgGynGAS36MMa3/
	 VcnCdzA4M7gf1BovQOIi6zIHP4xCSm7LuHqgYtFZL92dSZGvs2qlHFIydkF1ZH8F8e
	 uNFaSjR3cboL5XPWJULLvGYhHsRHivJflEpc4ZJsDvzHTPtfSVuJx1tLo0q/kKtjR+
	 TdPKmceS/anZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F72E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173426915359.17654.18040665780273866156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6d0e4c0e24247aa23c7efece6dd57948e9891554eb478a1b3b110f20fbd53a
Date: Sun, 15 Dec 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734269153
