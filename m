Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426AB4A06
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748543395; cv=none; b=NimKQWtfTXPnJfSXqy38Pj0+JZn5FqD5/7aGGRtlpwO2118D819bcGiSEvwMiwKcynHt6KomCYCNIjK6hjm7DImsy51VqMOvxAqxofE3L5YVmwCtY3El6GraNeFtdNM5L9b5rahD30QP7dsNc+3N9GA68W1ZlE1tQI5LqKRFDLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748543395; c=relaxed/simple;
	bh=7talKk0Nnsh/UWy5dQrUtFB/xYky0hr+T0vY8VnBUiw=;
	h=To:Subject:From:Message-Id:Date; b=iceZeLl1dqwFQ3xzPh0ZblYRNMjs5xmPbim/r8+QyYn8u122mEdXQfVu+OTDwDEDynIRJQ9N9nOT3V2Hkn3CYAErV1AAEOH6gKGVTD+1OPRPF6lWqUGNQMKu9Jrotb+dvJxljWZNN/DXUtKiTf3nR+L7vwoOBU9VB0KstPYp/1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VytP+I3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VytP+I3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0575C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748543393;
	bh=7talKk0Nnsh/UWy5dQrUtFB/xYky0hr+T0vY8VnBUiw=;
	h=To:Subject:From:Date:From;
	b=VytP+I3caIUQRbuqZH2rNZpxFkm0QwxeDlLUQ4th50E9P2GSUT1DvrGukX9gxZjg0
	 ZAg+949eiIegJPnR00CJM/BO2VYNC4VOBEOmwiVpgjJVVQMHUo/mCfW0AokBLAIdNR
	 v2cVUDmO2YSeFDMAM9KQxegVd7RflEvFngJfBBN91JzD9zxyFveF5wUanw9gThNeI3
	 7e1a4JWWc6a25C7GjCUIvYyuJuNtClNHO8NbHR3VpGO9uzMXjpyd2bxxxsc9ELIR5Z
	 MVyXOufPivWknT7EUnT+yM19tvhAYNsBwIPLF+o/u1/mcQtk5p/7oTk4D1U1J+T88n
	 SU8IcAUow423Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F112C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174854339357.21508.677525672145368354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036df1063b122b878582d95448222cd6a6e77e87836526ceac680f242a71d0ae
Date: Thu, 29 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748543393
