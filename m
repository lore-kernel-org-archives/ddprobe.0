Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D0126B95B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782368254; cv=none; b=VQZFz/J2qlbSTkgesH+tCXj4UB80TVL92yOi22O2oPqta/tu0LJe6PsYLkOUaZXL9atE4CodY+D52Ohi3as4FyMJiLTvVvnWlR4WPJ3DcEQVjOI7OsESxQbYpZViyXbTiL+MxzvlduiRfotexamI9N1IFZL2vdSHKt6f4VRSSSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782368254; c=relaxed/simple;
	bh=siCWH5kYKo/ErEfdJl6t3km3PwLmOlF6XiCO61VjvOQ=;
	h=To:Subject:From:Message-Id:Date; b=VnOkJy1tQ96uUjjnkYaYf5OKucWpIfmqdH0H0CDnNCsImXesSRIIRSzDxhCPfzUN5svdA2lEF1QimXgY93GC3UW8drTDmCyLNEdy+xe0J6eF66RWgdiNgV6gzDrPbZ14BoUoo+feRrlb5WjxxJy7NqbElr1yXEmfZLCSBEK2sFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQ2oBVR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQ2oBVR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4EBFC2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782368253;
	bh=siCWH5kYKo/ErEfdJl6t3km3PwLmOlF6XiCO61VjvOQ=;
	h=To:Subject:From:Date:From;
	b=YQ2oBVR0z7PQAprjqopBeNJ2koC60Eo5/kjxoLBnOUB1pF1mJKGr11+ZKcyKQlENp
	 XXRPH/1AharSo7mHOO2ZpahzR8LVleCsSD00/OsXxIb6Lo35s2Gkw26w+0/PmsqpEn
	 g1UbpEQU8c7TpezRSoMLNj9r0E/qEXw5JKMc33xUBjY/5a5myhxtm49S4ld8iq/WNS
	 8f+CqFrUTb4qBC+GGSAj4duQwqAb1OSGmHd05MP8L9SEFm4eNQujRLkprnKavYzede
	 8rXe+cc0aJU6okWthTLQfkW8Wrr658vAkpJZ1Oy9xbVJ6dZO4n4UKb58OWjBNdWYkB
	 xD+L6S3NzKUMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C89CDB47F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178236825368.7012.17134575590495685246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a997b03492abca71751b46f211d180b6f74be1ac64c6db93b2ccaec74392c16b
Date: Thu, 25 Jun 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782368253
