Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B91735280
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743994195; cv=none; b=H15wjYX6eXlpxEKWM4c3exsHUiLtR/m/bl3BlRBA5ZK2Lgk2LbqfwQXEqXNXt8cP55U7SLpJVkS021xSpWjTJccemX3+AtXLoV4/CevDVZeAKIQpQu/GkU4UMbXxxP7kmU7Nn2269W/qW5Y7ZS/i6xIB3bzUAbZDKmQtB7YkEiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743994195; c=relaxed/simple;
	bh=x/1vwpA2CoKmQclgDAqqlZres2ZsoN+vv0NVFHOzvGY=;
	h=To:Subject:From:Message-Id:Date; b=DZfY4k01V3OysIuUkivPt5MxFbrxGPXPyVRIqWneGhZWjIkZQw13TZ7AmLZQGby5Y6s99Skf9GAFFqTkihVi0jWz//9XEsfislZD/yGyt/9qVOEjaDgsRH4h9+apH4C/4SEKV/65euDV1clXkvPn84OJpuXCiEmYnAwy8O75qRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sn1k0vug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sn1k0vug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB7FC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743994193;
	bh=x/1vwpA2CoKmQclgDAqqlZres2ZsoN+vv0NVFHOzvGY=;
	h=To:Subject:From:Date:From;
	b=Sn1k0vugtAsYObuD6OvnYirbHi1Mn6N8tn3y1pj6ll5h6htpoJ/3JJV2I+trFoI4Q
	 uG/VREaopdUCCnPH4NHJgZ4uHsIyGaEWBnzijy8TVVI+8dKH0Y9c96rAkIORCp8pGw
	 Tnhr6j3g1haw0ElzMfvSYVHLyEmOdsQkvt5T5G/ZieBHv76qez7VKXqTQcLgFl8FzG
	 gOKAu/YmNFtlCjboMmppdYjVuUC9B4uJUVWI7cIJPLL5IMas949xBMh8VHX6t/SMTF
	 aI0sMckROM9vpm0MuHd86rtaHoUaHdv78onCC2+yaG3c/CnrpEJuw6bUZmCGSyb0fB
	 n5oWPcbSpDNrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8BEC36002
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174399419365.15491.3484360315310981468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fd81b5ad8d91aeb0902684e076ebd2c52b94ff5ce3c661911a31cd6d4cf640
Date: Mon, 07 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743994193
