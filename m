Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BB01DD9AD
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759391994; cv=none; b=QPJGiHzFYbdJUQl+dXZFWXrHHKE+ldtg3nxbX82c1C1F+GIp633rUjVBy8CNd4W17E53dKbBH38meBGszuIKSb5pegauz87PCdrCmv5WXzHTHWoxzh+Q5eCPkBUQFrtIveUUF64K+88Pn3YoEzNYLszNUNi2MTQEAIUnRlroSI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759391994; c=relaxed/simple;
	bh=kLiZ1D7vTzjVkcJr79LGg6Ra8OpCL+qOdSvXBPIgfTg=;
	h=To:Subject:From:Message-Id:Date; b=LOjOZR/RHFsOxfeXNx82ySArTKTKiS6lOnoL9RpKslFyCZ46Ia2bQGQMNKp9xEzWF/nkrprFBICHudze4mrjNmRtqh3vEKqqbAVG3zmeLpbrGUT8zjcSSTi4gGz6bfGw7iCpBE9j84XgGHruOUTOreRbseJkHEnGs27U9nttiM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPJbi8LP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPJbi8LP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A372DC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759391993;
	bh=kLiZ1D7vTzjVkcJr79LGg6Ra8OpCL+qOdSvXBPIgfTg=;
	h=To:Subject:From:Date:From;
	b=SPJbi8LP6J0Gf6ML30bk1VjmmBLjEFC5MTlHnkfL8p6zLT4wPUzcOQ5BuOWwnvqUN
	 J/2a7N06VfUxlKaJbDVNwBOgYZFnEHsi4/sMguAw0RycX+lq7rjQFeP9l1cvzq9RGr
	 YVtqe9juydohTNBY2WaT3Riia2sRy1JQ/U3XH19jTFqRxZ/IRrqAxraVl9K1B0AE/Q
	 /ztvGzbXUlLnHzggy7SIccJPpEG6WQhWv8AyO2Zs2MFA39zb9OxJEzKFnQiwrWt3rt
	 eo3iHPzvN1hd0roO2MNcUjgjNBWsKntxTFh16s8kj9LR/M4O1fSkgQiJSmj6GJPUav
	 t/HZDPWLuvQiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFFECAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175939199357.10404.16395759406810643192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07776873d348420973dd6a9a1f43b2337ac0df82a5ef8f8b1512b21a0eb633d8
Date: Thu, 02 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759391993
