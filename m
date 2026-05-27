Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406733F0A9E
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779880354; cv=none; b=f+eajzAjrtPXsnJFwTmddtnuvnl2GiDUs05UBYNv5TwxlkRLeO7PG2hyagjD8mNl2F5bpNtu8BH7zvQyfsSyrEsK5wMMaKcdHwUTAzyz8OLW6mbVWM2S7hNV6LLBbxYtBdEq37Jwtlzt7LxrJXaR/eob/V3pYGJRBFE1LLKqhz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779880354; c=relaxed/simple;
	bh=aTXEcF62+mwizZxKvXB3Fl3ZeATW0OlDoFdZ7IOAeMY=;
	h=To:Subject:From:Message-Id:Date; b=JvCSPSrurJ4i0vg6cD/q4Lr4MQV2uc+Gk7NwlOvWTo/0pZN8llBCyUnDBw7GEPl0eZIxWc6PecD62u8Y1Nux5/A0aTW9FQXF+fNPvbBA7L4sJ4fTnAFiGWetrSoJj9R3hxQ3LTRCdnfsQ38PsYkO/RQnxrpR1Mgxq5vAis0uoLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsdRBJQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsdRBJQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74D3C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779880353;
	bh=aTXEcF62+mwizZxKvXB3Fl3ZeATW0OlDoFdZ7IOAeMY=;
	h=To:Subject:From:Date:From;
	b=CsdRBJQOvO71iwS8g0zuRS5iht67w5YM/bLNRl4s3qfXEA5i7qu+l+gnFs4nU3tAa
	 9RAoe7q3NqWdEdiUA+jANGwRDYvCNeB9PB0jC+UsI3T+uxsnV08vGWLV062Q/4DbgI
	 +Lyp7ivMUgIdXki5n8tSrivwjA4KWQ/a197Fefm6ejqmPerx1torkA5yrKvQjYriX/
	 6swcfXSf8Hduuy7bMTzgTBHnpM9VdFG6YerIc2hFb43LfEQEcgX3i+/nqaWtkp0VuB
	 q9nyY/qACtKgWo/gNzbPWyJNiGqqaWJAzFovDhCcuJ2OnQBYrAXgNyu1GNv9fumdpx
	 J3Yy8mkj7w40Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E38CD5BD5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177988035368.25318.13172454916857492812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4bfb383298e213ff7418fa263fb7adbfab704b656e8c7e3967e71d4638f71ad
Date: Wed, 27 May 2026 11:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779880353
