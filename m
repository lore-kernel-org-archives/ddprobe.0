Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178C3200B7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711608497; cv=none; b=I4xpt7h1LhJoVNicrhEvjCtiJ42/QIIORkMdpR259YHcdBc1VzNulSx0sDiZydPdAquOT/BgRaaoG1jw/nHkg5k9iuaDC1V4rzKFgWlcDCiaWHR85jPkW9vhdF9n/BpHAf/vEZ0Cxcc9VszQJw027TyZc0aXbDwoiuT6bMNLD94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711608497; c=relaxed/simple;
	bh=iaecenfzMbp1dFa/ymn1PdtTARR2w41ozP891yZ9ew0=;
	h=To:Subject:From:Message-Id:Date; b=UsOLnekZi0TgcXk4l9bk5N0/QU+s92szbWcCnapLbDRzbiyW+oOd3b1ItkZy7IP/WMUWuO0NMrT9eFOL1Yr1aF8JPsgEP5WPb6Efcu/llQaSI3u+CO4xrtuvtSlqgYZJ7wGp5CZ2KSKzs1tVCdq96j2FMfgdvMlnv5DaJ/si2/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/t+mM8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/t+mM8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8502BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711608496;
	bh=iaecenfzMbp1dFa/ymn1PdtTARR2w41ozP891yZ9ew0=;
	h=To:Subject:From:Date:From;
	b=a/t+mM8WcQTcs5iDGxGZPF420IOwI5abxsq5mpCyo8B8zyl8D7zbsgHedhwaCYkG2
	 9N3uUhvYAo5DBMX/9opMRoNxL3wTX763l1dFKXpP+QV8bOb+H65hRdNcfh3wTbelZx
	 Dv8R344h39z1L5Gscs+MkpE+z7G3ztSHqTR6SH7fkQHjMW3utk60HYoXsKTTNMzf21
	 xozy0UmNe2h/UCXGeAIP+udSNIyO2oKFRIkBfl3l+dh6aXbvQU18AB0UvB8G85a+w9
	 Ul+nReGA19g6Xzg++tMlELB5JNEdO39aJdFwNG7CA305ry5cAs6IjgRvMqd0ChHJSf
	 59QPF/VrqoghA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B2AC54E67
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171160849640.19093.2390430022832832195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632c9dd53f3759a30272c0f870d902e01aa6268173d6969091bfecd6d09be9ae
Date: Thu, 28 Mar 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711608496
