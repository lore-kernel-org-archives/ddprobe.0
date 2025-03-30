Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C261DDC07
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743368394; cv=none; b=tYIXNTWblCLa16NeXghaituqmE5nwKjWGmZ1p4W0s52CKKANMyDgm18QPiQPj/Ttu5cb2n2aujlwNASW4TT02hfKrjfPKdVivR5dlZslAp6sy+cSpZAA8XwDukMsdLNk7Gy0juMM2pgRHhA0z8oTuPPW4ZfKKKrNLsrqz+LarNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743368394; c=relaxed/simple;
	bh=tMEgpMSXk+faF3siB/ee3MdhyyYonnq6P3uyBz9vYpw=;
	h=To:Subject:From:Message-Id:Date; b=S2D2XY2jg8S05h3+PS1+YqLoPaa47A2E154Al0c+2iaBkypmgmAIV9AuCP9pp+4ff5HVKoUpNF+cix/++xQUZ9mUyCjAFwAnjTYHg53dB3+RqpoO0qrGbjTSszd+GHECzOBcFLUCPUyxjxAnu1jqe41CIa8j/I9ZnybR8hP58AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=te07f1mo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="te07f1mo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EC0C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743368393;
	bh=tMEgpMSXk+faF3siB/ee3MdhyyYonnq6P3uyBz9vYpw=;
	h=To:Subject:From:Date:From;
	b=te07f1moOVSpmeAV3dk6BlzUW/Kquu5hsjr5qgNgHy0yBg3PRrX1VdQYmDRG/YBsq
	 SukFGmMWHr+dzQgyL13QunfwgYLJAOdyGgP+Cp9adpuvEqkX3mLbxUur+gau+PpHnu
	 iqP478ckbZ55GsPqQlPptReEPc2+9Q4EsKbiHoEjU6bBGWyFwcAMXZP4w51u8sdNV7
	 ZJ43iZFPmXxjjUh5BdZwh6J8rUW3CKfDrGq+EHHydQtj/BXvcdxS5GsyR7J2NIwovz
	 0OHanB85HX99TkXHg4xlGILf8JR/DWj7NDZ0/uoaMjI4AEUXICx2qs6KUVyfxOAMqO
	 B9nrXe42iXAvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9032AC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174336839358.5322.18055992618838131175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7d8b2ddbeab680f3cc9c121a77eddf2df32945a964aa79a47839ad8e3e65ed0
Date: Sun, 30 Mar 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743368393
