Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748F72F2D
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 10:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719136943; cv=none; b=DlAdCqKYGv7eyft5aBSba8uxb+D49CrFcXNzIG2kNAPHRuQJFiko9Q5FNkga5PL63c70slPHMnm9h2DCQcZvOUX7Gh6oseNcdSBOSz3OzXmc+0wX6T2Pe9pg7ExHvVYG9HkUqa/LzPWAW6b+JI2/nHwheiZ0yKCp59OsK561ZqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719136943; c=relaxed/simple;
	bh=wfL5dqdoPEvF+apxxWXMjcI8EAT1JPQLa1MafIMDbkY=;
	h=To:Subject:From:Message-Id:Date; b=YyUEB1eSwWAPakQrO9VHbS3qh8IwoJAy9LgAjm7nLerFf5U9cojJXsllH/1jHdPBVzTzolxi1o83ImzOAHCJU0vW+RkF8EzGOn2YjbPPF3qro5Ak3tI6kcy15DWlieJo1LFB8R3+rIY2Dv5OuFxhrNYctJ2zTm9MSGLo1UnvOi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KK+9Rtk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KK+9Rtk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECA3EC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 10:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719136943;
	bh=wfL5dqdoPEvF+apxxWXMjcI8EAT1JPQLa1MafIMDbkY=;
	h=To:Subject:From:Date:From;
	b=KK+9Rtk1ecbEqDgPuV7GXRxm+mn6zY/5yx4dNPqhkykSwM0I0QNkyQ2odPb4p+d/N
	 ghxSDqX7204bkbiuTESIeNx9e3ScKMGv5SYapKv0KbWFKGlnAVMjEa8Qi0cZGzKCo3
	 ifXzVdPeWAFkUmOON1gbsGylHwIlgPG+trpy8TScDXb1TenPBsbM5p5kgne4I4t8A+
	 77J4SmuX9fXYksZDofY3UYJlzy5mFpHlztaH4MamTz05t8hF4eBDPDQjb+J7Hzt2Gj
	 ItTk4ZsWoeiEDo+snCo4yUUQrw5C6ITSmwr/8mhd4KkY9WKqG9JymUzEN/i6rTG1G1
	 tVbbv+kVBX61w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD503C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 10:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171913694278.12084.14435448462642943160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf060ef996104627c71bd0e4334cfb7cffe99717a9e8b5b231af766d4300b78
Date: Sun, 23 Jun 2024 10:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719136942
