Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3501E161
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724457954; cv=none; b=hvPeL0pyloWfwJpvguiEMvUOYkIMoqdDaqB/J2l7M2ETg6OdQpzWlxUqsIzgL9tvJla9eABeOtI/h3x8mcLf5xQm9Oq6UZ+qL3Ms2AEQbKGN0khrdt3QVEMHHIW0DUiXR4jAjPh7yUotFHnLZvMSA47wl0UC/UKVWKnuGexfYnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724457954; c=relaxed/simple;
	bh=V0xKjzlxe/GTEhPkW3kpHjkkyhnljGiCE1CJ47WW/gA=;
	h=To:Subject:From:Message-Id:Date; b=Rutzyy4p7bWv1KsPGFvEiZpz0gxqNuIG3TrImaf28Q3unChN/xv1RJD8z4uDetMdV6cRNRcE2TPBeHiBMrHzprNabiF1uGbq5VWs/aI3gtBzEaNHos5KVbaI4jsVxWEfQ2ot+XqGWeL/UZUt2B88RtPomt845OhrUIekbsWL/Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQuEKNeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQuEKNeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFDAC32786
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724457953;
	bh=V0xKjzlxe/GTEhPkW3kpHjkkyhnljGiCE1CJ47WW/gA=;
	h=To:Subject:From:Date:From;
	b=iQuEKNeDs0a+h5vRWLlHwkA/MBK9+XqZ2T0hVGdRljukZBuRNbmmCdMU0Y/uqy90Q
	 T5v+phiggcrauo+rrEdxLJA0pSEEyTTKDuV9Lfm80Laeq/V6eph/VIuskbvWTpy8J4
	 DEqunFXrpc5Vzm4QQWKR4Q5HT+c61Z+bJXTjnpM48/jB0+INJvRcOVDRlwF4JSOwWp
	 Yjg7WGCkF0/foo820/oM45/ZRfAKl9BFJgQ+wSC/vlnJnoB1GNrtqPDNW9MDKj7s2a
	 zC6O9yAZArrrvbixdo5IjaHoOVjAv5jXtYIYS4Fl1cx8lw63Ar6275qt23ZmUGvyPm
	 q+5UICowhP86A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9942AC5321E
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172445795360.9280.18004706960520395029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82e764fc98ed8d036501c5be40a688602d857a4ac55036cec9ce338a402621e
Date: Sat, 24 Aug 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724457953
