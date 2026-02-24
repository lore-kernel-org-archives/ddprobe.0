Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB75536BCCC
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771925693; cv=none; b=bnjUZu7SADPyNTyGn8Aida10h5q6wdGxhEm+TSqZB6SZIWfteSZRz4yXlewV4IJjA5mYFdK4cAJKZYf0zyKP/4MUKaHewqifDWQlde2Mn+vWTrCIa7r6OkZ3hRXmVcwO1mXnl0HGrM4fQcJdaMsLSs7MRKye6OovCn0hv0k3k68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771925693; c=relaxed/simple;
	bh=20OdSFzyoL/VSi8ddutPWTEtQ3RyyzTF1WmY2x2XFwU=;
	h=To:Subject:From:Message-Id:Date; b=r9IlgOqBlbaflVAv8BEMQ6frYJT7bdfWULg2srxzkn74TbEJA9I+zDgD7itvIH6GzxD8RaPMvtZCgmDHZ1iCzaJ66YZrRgSaRcXYm229Ao3f0cvsHwTOjwSx5yKytM4VBI1m4npPQrvdzXFE9bo7t+GEbLEx/RnmGQrINsnvsZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpqwiNgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpqwiNgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C0AC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771925693;
	bh=20OdSFzyoL/VSi8ddutPWTEtQ3RyyzTF1WmY2x2XFwU=;
	h=To:Subject:From:Date:From;
	b=DpqwiNgp/wvkVYxh5yziHCxQPgWJP1x4WWx5EAEfnghVjC3S4Bl8wVPw7lVw2SKio
	 HPA/0f23pCSI+z7jAip2nsGPgRiwV57xjbuIdS+f+2fcJa9330zzDD1IYhMQTkvCnt
	 4+cTZiXdzfk/3GfcgZ0GiF32NTFh+yrrn+TmgwxlK1zNPTXNPEbc7Oy71DY/wkI37P
	 ig+WihnDLSYJSZpKpSrDHUPFdBhmw7djkas2oCxFYSR6Zh1RkvljlnFEjT/X+Awe2U
	 H4N6C4QLj3Aj5cPsAaRnfq9DUrwCgtEK4CcLkEH1mx+aekNLzQ57NxWDB91TZ6IdMg
	 KUd1qoQWz1TqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92002E9B241
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177192569358.2037.6686016926603724566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf6dfdb21a2e5a81bf5d1c441aead294226e8c83a6db75c209704ef89fac4015
Date: Tue, 24 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771925693
