Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416472F8EBC
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785237634; cv=none; b=DYi2hgKGGQi0dIyhfwXzZtyW0Xr8udfZMkK/Uocvu+9yuRWD2Gz+YPDXPj+D3t0yLYS/MCXVR3wksQK/Gws0ObgCdFP/nMZZZaKFVbn/wtfcF2cxarIgC7LXjR6GrOGeSFXpaZhVJzcV1GsVEk1tLcGmPsAY0S33AS2ETJd79Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785237634; c=relaxed/simple;
	bh=bW8cA5bxwsMftZ68DUQcgC+/Kd0YSVs8kmHOn6aTBbQ=;
	h=To:Subject:From:Message-Id:Date; b=EbyR9vtkyeM7KMy6hkGOhIkF6I8+mC4+I1O68/KIzIBLDCpUcR5V85fNZwLSX/RWPzKzs/QnkcF/JtXXDwrSa0YxZaMZukMNeUz56DJ9SdBFzzxFYJwQluagPPM6IGcHxrEdBLRv8SIMnUZCRVxjbnTpuw2LqS9M49nEB67WfQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RErfhvml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RErfhvml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D069BC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785237633;
	bh=bW8cA5bxwsMftZ68DUQcgC+/Kd0YSVs8kmHOn6aTBbQ=;
	h=To:Subject:From:Date:From;
	b=RErfhvmlxlzfoYbUJkmB29HRX7aXR+m0aeBn5hvJeL4+PzwtQ8Y95ZPgIMOB9itAs
	 O+0OBE5YvNaSysw4WmO5ZZ2MlZ4X7o2elbvi2Saq4PQkxJiKsgI1dOiUHCyFHZteUS
	 5hAP9WcK2X5p7DHi+azRLxJ90TPI31XJvUFy5+amPZh0ChGODW5WqYir83rOcWL168
	 oGP1JSgpc4DLA99rgHoejLridiHylEkl1CN3aJgO0Ku2RVsoCOKvW+kXbqKxUoqGIa
	 pSmUO9KG+EE7k36b7721D7biHswcQkbNUX/1ED8EiNbzp7/XYrelvjA7IDzLdhlyh7
	 i1msnBrlVfHNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAD9C531F9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178523763369.25783.6483944401702694129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dd76b6545829b85b7b84de125e4a483d6a4e906931aa5e69f425d702ccc223f
Date: Tue, 28 Jul 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785237633
