Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CBE2FD668
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764660174; cv=none; b=QMtegorInNWEvobdGz6+1xFdP/z3Um7GXbCgB/MEJmnvSE2XFTjLDQfqpNVCJxrTcHo52MclKQtbOXJ1Nl5ruP8o6vdqCel4DCQp/4Fbor53mS7I45NlGeTZR1sa9jyI1VCAnGd2wGhxxEJ8FybK3KMLKgvqFhFcrQKoBzljKGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764660174; c=relaxed/simple;
	bh=IdMMqUAzmYYUe4kyV7Ejbe4FZiceF4gEl2hlJgMbmpo=;
	h=To:Subject:From:Message-Id:Date; b=JbzECH8X6j04uR16JrTRKdNDR9mYrtWV7wO5ftStUm3Hsxydq2ACXPQRoIjgVI1nMJlO8q3Lt+eYKX9SKuquZSMTH1l/Y2cx9DI7JAIJxuIX0sXGR0Lkn0z2ChkoV0Q1WyNiLIyOM45zow+dIJtTyp1Uc6poBKCxji565MrPrFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWq2AVtF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWq2AVtF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A7AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764660173;
	bh=IdMMqUAzmYYUe4kyV7Ejbe4FZiceF4gEl2hlJgMbmpo=;
	h=To:Subject:From:Date:From;
	b=NWq2AVtFe/Xkt4NzbGNFGexHeExaedHTVnMWKNvdB31CfPgBGWfpF1BJ4EL4/fUNV
	 UH43MAGvft+12d90KzqgqpnpBGLvgA0RN56Q4FrO6eUBpu2uBX5tHy1zGBktqfzzGH
	 Fx6YEotGtaktN+JCF0nxUgzxZG2dS5aVLQ4pWjTS7jdj+57kGQyzHcY1JA/Rf1xGPl
	 FVOYtPqBbrRvtKgAdvXGd1e7UJ1ds/rqtfTVt5tNRXS+L4n2+BKeCt9xccrjIlluCn
	 M7b46kmwH8iSt1KTbN+9FGqbvXp0wQ0AWBZT6I+V1IIYaToyuWjAjNok27iPU/nMUM
	 WR9f2gent7UoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975C8CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176466017358.6864.16110365092056792831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f1ab2221d56123ee14bbed7db2ff126cc5b2aa820c4dee9b5aaaf2692d22d7
Date: Tue, 02 Dec 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764660173
