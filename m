Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E1A1AED21
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 12:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724934954; cv=none; b=fOW9L/puYGCkgRpG04gJGPWKCj7nElVTN7FDbNd1GKf4OEeKuB/0OVe2idgYeGpWjeYev7WnCyqRTVmbL+3y48cBua1eeiWMxjDjijBkcZ+HuBmfIzcgjNcuCVPEklLeURh9AzoJt3E57ENwG7DJwapXTHNgzKf1u/Lur3+BUWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724934954; c=relaxed/simple;
	bh=m4goy0x4ZYozWmML49hvvGQNWCD5UGM18Wso9o0p6qw=;
	h=To:Subject:From:Message-Id:Date; b=Ya2GhtiXuiyrZV5R0yBZNv0MOSHhb0Tq8rGyJaMiqL87PvTI7Hp3KPLHHQhTRe/UALd2pwHO+oulK13FeZdNfuHf765uFaai/TzsWIFhf0AfUgzeyPLhhoSzjvmP+/TWTR+c5KRCmg9QbgLdCMS5sifLBH2MwhDOXklaGxRfs2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhjEeX9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhjEeX9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83CFC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724934953;
	bh=m4goy0x4ZYozWmML49hvvGQNWCD5UGM18Wso9o0p6qw=;
	h=To:Subject:From:Date:From;
	b=PhjEeX9vm0N/X/EZD95PjcdNTANVEdSzljES6EHpns3yH7+u5xbblbsrEr+PZgIa5
	 DgizsTwckXiWb2NgMyhYHvzHOFDurhAsJX+aeTyp0Z3/fat5qqA0uXl5H7YPKxlpsU
	 BKkieEEpaJRSH5weEQYn9AZMyU1tFGJUeXQMmlZTkNHRWec6VGnMkTX68P8uS6Pr6b
	 oNrNi5UIrt2s0qClk2QHo+NMwGh3zj4+ujQah2m+f8qL7bd6Bi6314DjapwCX2H7DS
	 2MEvpqkaefo6c738VeER61w2VBP6veDSYNSXbM82BJG9eI3slrTUB6pJEZ4m0mgoGv
	 dKT/TQLKmnZBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95373C83F12
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172493495360.31988.8239426536144416480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b6cb34d22b6a853433281d7988499902e6c45e4d4c1a9cb40edbfbfe169462
Date: Thu, 29 Aug 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724934953
