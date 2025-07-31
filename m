Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B29C1632DF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753985394; cv=none; b=mcTKiSi/T00kV8yZZn403uE4r9MOL0RnNgApKVKqBdqdOzmHrjzcjS0Lv1aWbNlrG9h2Jrr2TpPSaRdpGjcJL/Jajrrj2ljXMOyn9WTEo56+tGoQXD/0rn1YLLYsvOURML0T8BHBPDgO7x4IQfekkTcRwvRGkG+7/149dsUp1DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753985394; c=relaxed/simple;
	bh=oSuFXEOW8jBgNWIH+hsebEltqKA6dsvDqV2dB9tScj0=;
	h=To:Subject:From:Message-Id:Date; b=Izuh2g/MJhFZ6wHoVEnNCJC/EV7QHkCggv16z24TucK/ew8DtUmN11HcstdWlcsBij9GrvRgs+IDw5gRcy8tCqigywV5JhzO4ZRb73e1WmIFLcfnUysRtbpOF2jUlMnL8CBUBU+NaYApCKwa8o6NZ4JQqIK6XNSH9/UN/h9JyyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnbX9mrm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnbX9mrm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EBDC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753985393;
	bh=oSuFXEOW8jBgNWIH+hsebEltqKA6dsvDqV2dB9tScj0=;
	h=To:Subject:From:Date:From;
	b=VnbX9mrmWL3vFk2JOs/BRo4Vjj0WT3QKd+s476TTCMcVoAOEh1McDqnV3pTPnvjf6
	 UP640hduJaJtGYac/iOXgfCIMAC2XV7O/TKFeSM7fsYQH1Xhayv0iMrhLQYIZZKbxk
	 DlshOJRu3qyU65VA1XX6B8EDl6NqAntIXHx2QGK0SGXjenRxAinQiUbD/katpe7P4b
	 MBObaL+jz9FQQ/YMwadlsSpkqQfdVPHKJWdLveBr1duqK2rHvNjPMZdpozoBOJF/VX
	 K6w3A+/8e/T7uS6iNzaR6tDpuLqx/mxg9PBnRA4Dtcqb5sIsKyqJMBulxkf//loO38
	 M33SJQ1iAyZ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91795C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175398539358.14745.7052615409364402832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd1be0a18d1b6deb5cf80e6f755929d87664280e56e0534916ea07e3fb174af
Date: Thu, 31 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753985393
