Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219383594E
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756657194; cv=none; b=RrkyuONAfMm0DelUrdKBfgDrA2omjCRaUO+8Ms4Ziq90zS+ElPwM4mHUC84pyqzqLx9eM9bHcDBjR8sJEvCT0qPmYCAPHq3GY4w44sUVAJ3jILSLyHfnGEjClg6AuZZsenryG3h17TbGE05QpPT4V7WU8UphVWIGAs08QERn/qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756657194; c=relaxed/simple;
	bh=tL5cd4Zz5EYN42en1Zn9NXH9Vp5B8Cl+tjw70V19Jgs=;
	h=To:Subject:From:Message-Id:Date; b=A7dDqDOOO66E79kQw+j8CF+zMNXyujWMDzsXCAeTXAUHczAXi0c8TdbcgZd0iZliF+4um5ox4w1GdE5CuetnonEG+IquA/98Fb9VDKLuasRIMSceoe3u2g3EGW998S4eCbgDMWUzxYtnPfuLtL8LFoOX2TjLGdP/WH99ZBEgLn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dse3oy0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dse3oy0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5553C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756657193;
	bh=tL5cd4Zz5EYN42en1Zn9NXH9Vp5B8Cl+tjw70V19Jgs=;
	h=To:Subject:From:Date:From;
	b=dse3oy0NtylJ8kje3Cd710EQ15zcSYa5At1hdPI8lDvl7uWFJeIVcnB3Jr0tfQQb9
	 AOOWKT5mc8Ih248rC+EhUxXYPC6vFj58u84CvstG/+Abm1qoUZQkdJWkZvAjY2tSBl
	 dcyVL0SY0l2XEKZw2eLbPQuF0pt9xBxmDdkq7z/cUFG9pbfBXzj2/a7+Qfc9W6Lqrt
	 Cf9uAL6fkAeZK/RaKQKWk9TCFLl2UROE3xloCYJCU+g07/sb+wcls3Sjp//qACsHRr
	 I0TeWDPtLo4ZfTJ34kzu8cWxnqFljDh5fzAR+nnHWfChr2SrF8M4nYFj5G02x6AC72
	 04aWdQ5rGdPLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911FCCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175665719357.11431.6390153078115217471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d43cc0e0b9a5d7d1328d4f2a8e0165b3d8bbbf3431785bc7dc001f139bfab7d
Date: Sun, 31 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756657193
