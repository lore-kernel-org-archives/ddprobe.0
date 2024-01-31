Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD7F4F8B2
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706683097; cv=none; b=tu/61BoFWOgbKiX+CAyAtMyvuTEGJoeNVas9aZrOXTr3sBwoCkOyjERSkoCZQ7iRf5P5YekSXQXLZR7Q2LJKjuGXzyCCbYOCO/t1NLSgseMPx/Aa+OML8d/X/bv87QpxptdtdCzkxTkROQLRBHoYeq97fwCpgX4IjhHhU4sPtaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706683097; c=relaxed/simple;
	bh=jmGiNHojggs5FKAtlaeBZMewN5ZFJkA8XlxbH47EKmQ=;
	h=To:Subject:From:Message-Id:Date; b=bU/V/TlNCtb8ofbSBgqxsJKjDTEhtak9jJGBmZvKUmFqRqgVE46NGHfrxVeO1yldk9XkHLpzYZKDBpl/WCH9uxUlZN/RXVezHCl8xmaYI8OU37M+2dOGe0P4AvYlJCLdmYBjFx8Y8NSw7OiIcoXuf85or0A+N6u6ivGGb1oj9G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qT0Ht/JF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qT0Ht/JF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CCD7C433C7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706683096;
	bh=jmGiNHojggs5FKAtlaeBZMewN5ZFJkA8XlxbH47EKmQ=;
	h=To:Subject:From:Date:From;
	b=qT0Ht/JFN2WdLyKL/lTsf41u/gWMaOR6uwydlujKDPf+2tIsQ3/VjDHlFQ7Y7LTnp
	 MyYJGaPnH2jaUACpaIAKM+HYAoOihhTUD6ljCX2jhgI8onYtR1NOZXme7HYTUco2q+
	 QmhL/9RHpU1l9LfN3XvQKBHpqoJfpDXfcaqch8MIzUyi8u7FrZhVzv/SEYmKJADbDu
	 YAiy8oblwstz5SrGr2tcI9Zx1Pw+37sXXy9+b6LNFKGtXnp1VZqIy7jm1h+JnyJRzV
	 /zALNOq7GxNXDPT/Soza3jbaO/TUk7YKEM83NGppSgW6i6KAKhIcHkovgPo/dxf7iH
	 E9nbC/z14lP5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64969C47258
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170668309638.11013.16295923454477691186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd960ee657f993b935082c931dff734dc1c7d31a2b5bda01100dda98335fac02
Date: Wed, 31 Jan 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706683096
