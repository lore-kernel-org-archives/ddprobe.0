Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BB23559E5
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770502434; cv=none; b=lYjozSJKL/uTFN7zXn9iCB6XL3YQ5tUWYgm8oo1VdZs+x0b5J92rWJlNF6h0W37TtFX3g7820MHty/djr4I7KWow9Mlr4hpXnKc+n9reP3l144RU4TBLS+Ji8wwniksGAmelokG+PEWtqzVYpMJ3b8tfYOfo8nSAGz2sqEDSCB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770502434; c=relaxed/simple;
	bh=RJCvR3ogRn6Ufv2t5jSlGxgE8UjLeRWk1kX/SyjMkY4=;
	h=To:Subject:From:Message-Id:Date; b=Bsjlnm5tYCchMkZpKvB+Z0S0GxnWZxQmX6tv0B1tP8BBBLpjkKDPbJWUPl8UuvpsFwaWU4UEU372jrupnKy2Zwu0vw76ZrY2Ci0CfZX6/RAh1NPjAN1znOWSi8Bcdt2lsAKkTJPx4mTZP2BQIAOTFRNA+6LyV7ZId6wpOcXJzBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIITFshL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIITFshL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61D0C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770502433;
	bh=RJCvR3ogRn6Ufv2t5jSlGxgE8UjLeRWk1kX/SyjMkY4=;
	h=To:Subject:From:Date:From;
	b=LIITFshLDIUY1o+rPakwlwonVSULzTPcnt1xBBgCHgNyW4gPJtB5qADlPTO8+r4A5
	 x5Pg9WGaY0c3If+CpMt65S85NeqzhTcIR7b0yN1rP/uk3nlggpSro1gjdiWE2OnzvL
	 YD6Iy+ggEPvP7w1nkJauJ5eyjU2xW3D4NbzNttXPb6QAsFqk43de5NoRm1QlkCHqlc
	 B1uCL4ADJlWUpW/EKkKKMLitCtMu3rOUVbMHK+PdF72FmN/vjFU+9VdzIkJkqT9t7B
	 tmCJqBEgQLqona67CeRnYchWtlQk3Zp5rptH+fklpxggHCV3TisewpOpBNMHfz+CTk
	 iYEb4OFPhtt2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA96EE0AEC
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177050243359.16502.8894947963838928821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a957c2317abeb855f7c03ddc0d24ed0917c35aac98bcbe57e49599f5a21161a1
Date: Sat, 07 Feb 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770502433
