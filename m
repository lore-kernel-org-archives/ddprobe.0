Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D577D364931
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776788853; cv=none; b=WKs6+DwoDBNUUjXWsrc4/W8FFShB1j6vMxrlm5mDZbahZ46bLgJCcMzQEsf+4QaZx1r3s+SplAQd9TMEqzyWhyKM2LoHMBvtQKK/nAMOlfaheKC96/PEgSbGPLaXlMkYHDdcaXmpV8gHw0AJwNJ8sqx229/JO1DNCnzt/A+gwtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776788853; c=relaxed/simple;
	bh=DklpNcGA03HfzM8zI0b3gf3gL+d7Fhc7G7wrn0VfGT8=;
	h=To:Subject:From:Message-Id:Date; b=W5QGXP9QU86Fzg9NEjuzSQS9SWdH48GF/YFMKw86zydTWbzi2dadJPi6Nn36p74ArlNysMctmADw7Y1ehnielUb63P8RDthTotI/r1v/jazN9FRHKusQ+EHkqKJwut4Gxwk1xi1F7Owu58kulFFNZtgrCm2lUXzctWF4wTlIzpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odgr4gCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odgr4gCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B988DC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776788853;
	bh=DklpNcGA03HfzM8zI0b3gf3gL+d7Fhc7G7wrn0VfGT8=;
	h=To:Subject:From:Date:From;
	b=odgr4gCeq4VwVhC90YYQVoOlGwi4wvpP/MVkmAubuhgOOQAooRr7wWDEa18N+Je4p
	 /vhn9rJ7qjZbXkzEdFovE9JD9EAhWGiBFEFpWeM/MKtsMMGyNl552qq/h9CTvfTe0G
	 SgXAu3zvLC1YM8s80Db2TNQQLvRav0NurKa+R0ehh/dGyVT7D+aRefGPjb5cFUXZem
	 nt2K73AxrnIddQ1Go5uovdga8EbWr1Qw5/W9PYm0U/nAFFqTAAFq8Taq+Hhm6CyXWG
	 p6Blf3wOndwfG4aQi6UQ469qHb8CZxrcRHCoOgBA9bJKWrSuqV/P78nuBDggDDxIS7
	 QKJXmijZVz23g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8A8F8FA90
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177678885369.16786.13481965235194152558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe030260bc8f99d732efb11f63ed262c66d06f571b65f269fc688a46926a49a
Date: Tue, 21 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776788853
