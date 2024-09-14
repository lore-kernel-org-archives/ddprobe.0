Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BD97FD
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726284954; cv=none; b=HBRd3lpd88t8V8gCof04SxUPW5nboXFg6z1qCPwJ95lL5g20OBmDJvVDDsTy++sEPKdiMOA+8vIwKXw+GqerTOKBi8ESA/ONRHXowzMX/9dr5ecAJ7C1zr1j5LSY++Dp43kbLigcxrx/k7bFM0rPJ0BWuCWmOYsPQAvr2uPJqVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726284954; c=relaxed/simple;
	bh=ZPHnUdc5pokDsjrovX/Zk3N1ynPHEf3OQ1yLuz0t8R4=;
	h=To:Subject:From:Message-Id:Date; b=d8cWXnCTATUQpKPGYPOhba5OGRcq7T7VoyY6teZ/E8vi2ZVCNQeA69RiEMjXACFa2No2EhuP6ALy7bvLmJuSMGxePDT04SWTjQfAgVu5MUNAf1IcK1JdHIuwAqUMmqHEkognl6vfSUBCNIklZ4ueyrvpP7s5ydyfO9vrZkdATg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAShA2at; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAShA2at"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85B4C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726284953;
	bh=ZPHnUdc5pokDsjrovX/Zk3N1ynPHEf3OQ1yLuz0t8R4=;
	h=To:Subject:From:Date:From;
	b=vAShA2at05ZAquFvd9ECFnH8D74gPpFeBE1C0v8a5BCYxVigRSeJwAfQREEudYhOI
	 otswChPqPx2oav3/oKXwkVsfslu8OA7aQcE+jGS/NoEgQID8ttT0oAdKhA8fyRNk7R
	 q1jfyo6jLS2wP0tj4hhqT81FtfKcvcokg/9fo/ilEgm1pxWR1bKzP8nuCf0i72iABN
	 bJZ5u+ihjNEvUxzRntM5lcr9HRDy1Q0uRUJsDKYB0L3wyW1TX9HmWqhLRHfZbsgPoZ
	 t8ItydvEg6nR7ShijCCZuDH5hKM+DGfqNl6GrbumiE+p7uAXYD+VOh0uvoRYbzRiW3
	 u56Cwb/Fv5IBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A763DEE0202
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172628495361.30955.7699899635638103415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f2f4f83002f27e04547598daf99dadcc22c0a1c2bb1be1136c48e6c6e2ab15
Date: Sat, 14 Sep 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726284953
