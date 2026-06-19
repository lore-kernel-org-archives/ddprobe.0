Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F134964F
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781837194; cv=none; b=J4OWhF5b48NphpnemuMDIgrsHnav++xvAYGVhgmh4sjLrU7EtIQ+4Y+IOjFhIMzbIgxofaacsvCUNOGHc5712RZdXFcPnmI6iBCV+rZdpOWPTYN4SqktaJJ2aB9xlXESHRaJ+rAbH12vzfKL/G1rbqZXEz/Hi45CPbGPdvoUPcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781837194; c=relaxed/simple;
	bh=YNvBDcFhmilYpc/XIdchCnnTghr6VhkpZuVHak4B/zk=;
	h=To:Subject:From:Message-Id:Date; b=EBDBHe/x8yqDM8ySm+5thjZYpAatKX45wx4/9qqra2B/79LMkRt5Y+zgcOzGbf6ukD75guVeamdlpzUjigunQiZLp4/iSOLCapSoe+p5PPeyNnTqfN/muN629r3/Bjs5EaD6f//0mOLSGFoMkBksuj6VaoYw9JWt8af8RgbzIjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUADcojE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUADcojE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BFFC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781837193;
	bh=YNvBDcFhmilYpc/XIdchCnnTghr6VhkpZuVHak4B/zk=;
	h=To:Subject:From:Date:From;
	b=GUADcojEl5RiFhXFQxc2hlp8kjW48ynWupH+7rCkvanpUsXEMvok8QuoC+0vDEf/N
	 fF1J3ggIiTFziJFZtFIQ+KbodEqiICUAQDJ71YBQ3RsHITfUJY78kiZT6zKKs1Qyfk
	 9Wd/OU5Hxwzypp/aGGfrz2gBdgPGGnGV1bCTg7/9q/Sw4A72QI11ETeTJYC3riK6t6
	 I/w/xUTeUaMIY45Iwq0VLU11yYmHn1hoE8HHGMqfIGTv/xe4Iuzhlca9Bhn7gbgci6
	 46BivY6hyrjOWk6CfqR0KIBPMI7XYOTt63pdDqNYEozvEOWi1oK6bbyUGmnOfRUpsc
	 2GSN6zMdRAGyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3276CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178183719369.14812.12180098145134714675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c8a637cd7657ac0c1c88ee01ee41a3650a476695ba1c15b4451d02c5e50e4e
Date: Fri, 19 Jun 2026 02:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781837193
