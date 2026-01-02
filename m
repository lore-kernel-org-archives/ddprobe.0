Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C119F176ADE
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767374033; cv=none; b=JX6JGdLIgOIIg0jisgGh+H2U8opMlOLlFPNT/v5c3dLJZaWW633QGiLYQT6xJJl2RAMag4NlQr46Io9ckWAFhENlkUtkoEpQQ6MppWx05HrZn1AVEg40XOmB7uWEPqejzl1V6SVfJ1dFh4GSw7Xkv1xQKqwqT6pts7EZ2r4EF4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767374033; c=relaxed/simple;
	bh=DY6Ja+aRFuLQ1N4ptHb4ixQMopKTAfXCexsUQCVY1fQ=;
	h=To:Subject:From:Message-Id:Date; b=JzLJlYKI3RuCPWPX6lKIo01QYF0/RdyFYM6VgEWWqsBz+KIIOQzVeyYupfN1KovL6aoxBzpXlq9RCMj60XN17W5VEfeTCzckR0NJtri43BaX5WxjJFeu4X7u5PzFkH7ARKZi8RbV2lBqoTmoMg/J5GWzfz8QHkqZLemtapbo/Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRjnWb/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRjnWb/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E938C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767374033;
	bh=DY6Ja+aRFuLQ1N4ptHb4ixQMopKTAfXCexsUQCVY1fQ=;
	h=To:Subject:From:Date:From;
	b=kRjnWb/Tu2zIALCphZ6Epl5KhT/Mxrix0JofYwbA64MCstWCQmDvDeSzt9aND5Quv
	 k7jGWW9ZeAJxt4MmWfkUmvyCgMeF4PMpHsrrgjHzs0HEHC27C3rZsfJDQVqrRcUuHD
	 wghsTeMSOuRg1UyUJI74K0na2sJZfS2ygBNKpP64G58HrCL9Hsa3Y72aaHnFvifPHS
	 FzCH/kC59CrumMY0lYt/cvI03S2Nxwn1WZ7WAbNtuhIfzAjzy8xVlfl0PIjWwHAhAc
	 wvcnWbuvhuY4v+4oMYSiOedAeozzcBrmJ7QWigwSDaKD/hm6nVWXIzD8vwT0xqlEqL
	 h35Bn2CJmwyrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC02FA3753
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176737403358.11278.1812108939519793624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb54de8548666622a10861d9bed7837e25daadc43b3cf80d8b6b816e6df583f2
Date: Fri, 02 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767374033
