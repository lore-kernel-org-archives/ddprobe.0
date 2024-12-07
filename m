Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3310217C7C
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733542554; cv=none; b=BZaNmuf4BfBkG4w+R0wQRZHFckmgX054V9uJgrsXV7BZBtGwJfj0TduTUpR8q7asAXHOVSQ8ibyfRjkUEuPTr75tx88A8z+WZFtJAFhaZ2m19Avrxlv5Ke+kXLLuHBSddrTNsPNm2zv0Sr5cpMAWU2KJPOf41MWhMdk5a2QLwKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733542554; c=relaxed/simple;
	bh=InPlGpbx9sbAQHY/RxDlKPowE83XdL/Y1lZ5ovYPcPE=;
	h=To:Subject:From:Message-Id:Date; b=iiIF4Wc2mtwr9jFOHarHfCWRXr1UKd12c4Q7pp+2Of7iMb0H6C+HchTOdyl2K5KI3GZP0Wo4hfQ3Hjdb4R3KFbaB7ugG/IVcHxA9Ab23j1SrWEQTXPIPzl5C5Kc/TcsSTVdOhRbaN75B6G4SSyXPNiUwejAL9PEQISHUoE0sddw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkgLuHvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkgLuHvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5008C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733542553;
	bh=InPlGpbx9sbAQHY/RxDlKPowE83XdL/Y1lZ5ovYPcPE=;
	h=To:Subject:From:Date:From;
	b=mkgLuHvmSazTiUFGu+9dpfZ+HZP21C1G36yohMC+FI9Guy6bmHTC1VlBYCtYOMl9U
	 tBI5JmeDcOCAtTz/cb+41oWUMvvy8Mmfa4aK8YVcBWOdA7ReFsfM3w2qRgCm4NRvuY
	 ITZ5zAUkGIytYu4S2GkP13H22I6paoKHk4c8iOcLp13Y9FlfyemrWrs1KLfJu9xL61
	 AvpghOLOITTVKxrspMjgibjXPP7T/4g58LeJlsshcWW9NVFbBzFBZllHbT6nGkUoM/
	 MS13DBLErmL3q6bzTfXnF8xNPON17QGnyEEaD+GqVAoe/1oom124buUVGDlqtPKuS4
	 FSjax0EWAqbXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0522E7716E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173354255360.24897.411806862051061194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074d976a20db3edab9d35998c7961a83c3b376b672e856ba7b53774ef06ff4bb
Date: Sat, 07 Dec 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733542553
