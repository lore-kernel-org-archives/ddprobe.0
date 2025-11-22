Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BA2155322
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763797314; cv=none; b=n6XPnJ4ET39VwBwSmDrPneUjxU/G/VaY7ArlIHC0ozBGz6XOyOciRtpOE44XnMfvEbapRwA9TN/Raf2rZkMl5Ocm1dNvGdze/lrvuq3hEepE5ibxumXiqzl8II/sFtJPD9V/DUAK4IlYEyKqtADyG52xKVrpQWLwYWH1mAnbu4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763797314; c=relaxed/simple;
	bh=IfAgnXqJZhCZPnWJ6vymeSnZ07ojfOWrH5iukLuCPx0=;
	h=To:Subject:From:Message-Id:Date; b=llecnXaHrbErTyH01lKlzxhoEB+RKgCPRdHaw9rbAokmgF9AwpUXpy5KlHJ14xWl4W/YFPRrAgt3PVd/w762GBsvIaoHzVZe0i+R/LLaSOOvfUOjK/MljSuAM1gcY3NcLP1L62rPNG7bwwhvPEkqljEeCWKcLthAVpuC7yX5gPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ep8XQ9U6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ep8XQ9U6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2773C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763797313;
	bh=IfAgnXqJZhCZPnWJ6vymeSnZ07ojfOWrH5iukLuCPx0=;
	h=To:Subject:From:Date:From;
	b=Ep8XQ9U6XIIzYmIlUdOJH0lKQXWJ0A8JxeyOmM9rp+kQgnPSE5EOMSCMgF/r4j3fp
	 zrNXHc9RruhwrsyoHrdEs5g70N/ItZbocbVZR6i5EmRroYmVhRff4j9/46Pa10n1DV
	 MHIKIs0J3y6PnNP+Ylgfxy03tu78JathxcauyFXHVFRL5SNYcjrhhEDtIdF95zZzax
	 Hj3cXi/ZzPFETAzHIjQbw9cd0p6HkFLJCnEtYidGT7VqKu9bUlGsHXhDr9/z0tEqvl
	 TFvFiNVZo9srgkl9FL+wRvsd4csYtpSGKn7Pt1msCpsDwAXV5E42a9IdfCkrQMJG//
	 nkyG9lFbM+ONQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90128CF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176379731358.8361.14470997427425928863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41ff9af38e8c7638582bd5c5b00e4e19a1462cc244710782e687525e89ecc2b
Date: Sat, 22 Nov 2025 07:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763797313
