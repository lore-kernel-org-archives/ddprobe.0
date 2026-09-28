Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A5853D73
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790556034; cv=none; b=g1Bz9huclAE/88fLHATFt5QYYCkDkH5zMEtEmpbp/qyJ54hLoC8Ob8QaXBzsVEMaYwZWR7ynZhUN+hohbtZdWwjyvJTw3qOJXMv1K7IKLduWN/03JpGmETGAYgAOs0mW2ahEVl131N5QT6ytS8+C58uk4soxS2FmEkBIkwd+P8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790556034; c=relaxed/simple;
	bh=jifhKw2cN4VwvmZr3ei0DfpvSZzMizEhieUH+ql/SqQ=;
	h=To:Subject:From:Message-Id:Date; b=VkuX3KQ8D1ImMXfFHpFglcrGcREucYzdVPHyTqKbsFaqYIBAZGA+gCkmrhGsbAOpozVn7LoukJG005tJATVep8aiREKyWcGausjnmv97o77FFhinL2q+QeJfGW2ViqybwfUdHymMj95J2GOzKZU+SGpHDDSl1MQJ73tcFXpg51I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtzleeZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtzleeZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF0CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790556033;
	bh=jifhKw2cN4VwvmZr3ei0DfpvSZzMizEhieUH+ql/SqQ=;
	h=To:Subject:From:Date:From;
	b=CtzleeZS0kVmUIf7YhU/3JVYbx4Fa9cCjk8Vc95uiLV9DY4wwQ/XJ3QyIr0r0iajz
	 4nQTgYKzZftLW9A8wImzuu8ZLslAwhoISjsCI8v2/sTsafdHc2S+pKSktGnxtO9UXt
	 ambEPwR/StiXJGfpfWKF+UP0Yag6HGzFFz96X+akL5D/GJRBHu7uOjOYUg2jimuL/I
	 NUiib5hcbi4VjF2RKZPCCA8+zBpcIn8VhhCzwZfsEa9T7C8+N6r0G0xFSMmG001Dfq
	 lSkm7rTAeymKlO9NecGFfy5wvoqYH3PE0uRmsTQvcb2UFmceg9B6fqbHHdAOaoapu5
	 26W9xv+MRjv1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DB6C9830E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179055603370.9771.5328646964544882136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d760a6ea0fb19abf4bd1053ae8a456ca1839f07dcff0046f8c359d1f1b4f8464
Date: Mon, 28 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790556033
