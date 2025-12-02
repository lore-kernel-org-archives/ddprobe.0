Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E87272813
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764670374; cv=none; b=qLA1Hz5S+e++ElJmvNIV1/XkwL9udiy9sohE2VDlkf4KId5Yt5Sk4qtIZU958TM2srlqH1L+GpgP1z+kdpnbpy7/NwXTO4MrYcoYtiVjkbfzrzNqzQywtwdT3O4tTyh7LUomqN9EGc8WuDhEr1Ko/2F1fbh/IMFA0nnTTeerlZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764670374; c=relaxed/simple;
	bh=8GT7QAvoKs0iGgBbjkQjs+LEF9ovM1b18V2RbqXFFQ8=;
	h=To:Subject:From:Message-Id:Date; b=gxoemKpYeTly5ftzW6X/sHnlSoSIcHQw83j/HRJgBASFjfoD0Vu0D4SpjxSqEynkMazCfDm5+zj3FJHNZalJ8BmuJRlln9Df21p3QO0xCRY58jMxCiHeoIrJ376aqgHm9owcuBN3dYzJIQ2y/+bmy3SKIo3XwZ8CbcDiXkRnMrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyoEa6pI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyoEa6pI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A272DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764670373;
	bh=8GT7QAvoKs0iGgBbjkQjs+LEF9ovM1b18V2RbqXFFQ8=;
	h=To:Subject:From:Date:From;
	b=pyoEa6pI9c1YDmzNd4X55lbRR6UVRThVEQ6/b86EqBuVGtulchWpQFJwSE5xYOzMQ
	 2w4hcX0pb7AaZAtocNX7dqxYAVTdH3Jq2QV7rrG+CenCEoEBywXzpKTGBiXa6UGJpC
	 hscSF1u0jOUlDThXHso204X+ft5x9NVdQuelFO0jABnGUOqoqN/H2YNr9psqh8rRxU
	 rnLePWtRxkQshu6HA2Hi0KIjWX5UkcqoCkTwSG2roh8Lzdy5I3tCluwV+w7IOc7ikW
	 XlRjSgmi7YiMNMIckCwOEbtRAX2Xx7JzvJT/jB5BvcdtUqMLChPO47Eq3juF3TsW4u
	 4BgtUQ8F9AJIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9121ECFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176467037358.8304.16392197025136625515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752f74eb5fe831d72b9c37d4e910657bfad06730118606bc1f2914599e8996ba
Date: Tue, 02 Dec 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764670373
