Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE88524A0
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 10:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716202343; cv=none; b=HIo0elL3XydIyVUIv/vKAz46Wz51VD5gvLfp/MkN70v3UeoevdODr8OWhf2wFJHubhFUHH4/DRaQhMt60SLlF0qVa82tD59NAdc+3+ufZAr7+/ywRmkhOuAd87f07dijWO8riGTgIFo70x3/NGNgmY30rw7o/bDFAaMl6dwph68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716202343; c=relaxed/simple;
	bh=0SuD8c3I0tsHQe23WjhxKPg0MVhXh1eWf8ykkd3XorY=;
	h=To:Subject:From:Message-Id:Date; b=TZ24oWZHeo5Hhbl+S5MTAgkc/dHIZN1Zwt0FRxQOKklfpidGHltfYy5mcDPMBjTO6BIAKBafbUcOfXTqjtd88bSvv4mW+zJvflIYDQ97vrsj4rhCx+88eWPmwsaCHdx2iXBLIwHbINwdx9Qet2j2SRA6d+wtY7tC8g1cxK8Ngrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCpn8lYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCpn8lYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D467CC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 10:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716202342;
	bh=0SuD8c3I0tsHQe23WjhxKPg0MVhXh1eWf8ykkd3XorY=;
	h=To:Subject:From:Date:From;
	b=DCpn8lYqhPS6L+dAH6XT+Me+5ACTNtYrgKkQpRq3EI0D2dg9FggJ3oPQLfuBhvA4D
	 EgMuvFD9PqA+LOKXvRWAPcdXPfmXLrmwbdOsFZa6Ig61M35HA7XnLUZjRd/VI/4ule
	 w7Kbemk1TnHUwIPaaPTkwh5VZk+r9Qgngq3BprCKGxBr6DNsHMbKhXMOUndwLVIKvE
	 L1QHUSdWsJSGx1h/my9lBRj3rQ9cQkR34PNy25JTUarMfRL4FFYBNuqYJ6xW47gj/a
	 GD0SdXc7ZelEMX49pZnEnos2Wn/UvYP/DuzNiSgXWuUljXfNUg6yrp5ynAz0bWGZuN
	 jIleznloPzHUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2424C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 10:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171620234278.2053.15565315972877150535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9639b144506d3d14cd4e65e98485fdc8078a23f7c80dad02de544dfa857f43de
Date: Mon, 20 May 2024 10:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716202342
