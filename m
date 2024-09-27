Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0D6157E91
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727438154; cv=none; b=esVig9hrseIdC9S/WUgroqjw9VonCLAOFjAmXaAdA6RjoKKvL5RpSS7uYb6mroK0GsaHVEcIoxcfdTcZFdgyw/ZNPK52BM5t7eaB4b9/X/HNBZz8lNIEVRdoVVG4tKVkPXPyhzOV8ZdkY6CqaN5FT51/tPtClnreqNan5reLJRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727438154; c=relaxed/simple;
	bh=NpT+TTryWqcqGN/JKKGK7EQ0FmNWY9c+Nqru9lA4cow=;
	h=To:Subject:From:Message-Id:Date; b=KNu9ZqIM+SixnYzEswRtYVzBzeCEY8kjJPpzXcztzQRpT5BcmOv5oceUffH86ZrQ196VzbDOtJrp8qCUUcLVF4HuCWm1jZ/UUTCK51LY/DBwsm3XR/JmiNIyPLYPlv6c5ksM66pbkbQEo2HkhWbvHoseVnbVdCpGQpWn0HBnyfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuYJ/Vnc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuYJ/Vnc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A000BC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727438153;
	bh=NpT+TTryWqcqGN/JKKGK7EQ0FmNWY9c+Nqru9lA4cow=;
	h=To:Subject:From:Date:From;
	b=iuYJ/VncF9uBtTBQUG6kKcHkcS21hhrmj9aT/UFtWcuZwgliNpAtIfd+TiPSkXTUu
	 MFoFZUq6eAGF2+ePODSrxtb8AsGMWg8/MUIL94kTfDs2A5OOFFKzO+0gmx6uSn+hQm
	 MaLRuYyacJj/Yyy0Zal+dlLcLRlhQz+PgHM7KsdD6ENgr0Dc4JNNCEQb0VqcahlDFP
	 yQSECpyIo7pvxSlJFmc5J5a+FMnKHpbC+y5lIQGeWTkNYrjdRJW44sY/Wf0cuP96gZ
	 /8xys0Hw8/Mi0HrbyPCX99Jly962XsdgmsrmxyZPnLHqdWfWma3pEPOvuEbde95E5L
	 m2bhxXZIiwYRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC17CEBF9D
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172743815358.30212.16657208278449075377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6168d8b0e86058d69f8f9ece133327f9208c8e1e0d6bd3c7be2d6eac730ac7d
Date: Fri, 27 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727438153
