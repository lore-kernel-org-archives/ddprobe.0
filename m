Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CED6256C76
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755530394; cv=none; b=DqqKVBw4ldeMSsV2W3jkBup4qfyWKfEYWTEE/DaFtp6XwoluL3IddJBKf+3YzXX37Q9/+NDReozwrsrqiyaqrBUQTvjavQEsfzxvY+xFN1axBdjRZfYFLUJ1v3uue7XwEzFN2NvTF6/YdVotg28zC1KKVZwVZrMVZgDHt/IcoTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755530394; c=relaxed/simple;
	bh=6bc9uvtgkYxHhlA7/8dbQVrS6+CrU718svX0p5JVIcY=;
	h=To:Subject:From:Message-Id:Date; b=bHvkSGGxXjuVVGecPfbc3Dc7UgJgaN41f7G5bIbnkL/GQIE0QZScOhALE9jwTMVJX61m2gEFiRRQ4+Pz4+kT1/eLc/Zqty4vbmZCexIvdshAfrFJHORcMTIoPmlY/fVvHkCEp/izfGjASBr6nRdJ5wOnO9gvGJ70ZE3xMxlOOpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=admQtq/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="admQtq/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2E8C116C6
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755530393;
	bh=6bc9uvtgkYxHhlA7/8dbQVrS6+CrU718svX0p5JVIcY=;
	h=To:Subject:From:Date:From;
	b=admQtq/TfQhGoltVPr/kTdoJQLsCXfLqTUGIIEw/CcuT9/Kuav+f6OkE8N9J4nnlQ
	 OO0GeIFpspt4RcAMFwYuF8cr7CglvH7jJvQQK8YRbSEYYbup2tUMcuASMOH0w0DtZa
	 skAv/pbj6p8IFwpn6c1QpLQnz1sVGrIOeke/96nSTBzrRDsLK49gzTrV2rCnkwPon0
	 IXLx8Vbq6VO0Vin96ch5UuyrUbu6tVhW5FgMrkm0P/zQA2EwllclDGxAgNlcSxhRLo
	 HnLClMDKD8z+gG8UD21EVAvAxY4aZ5I9GPUkCnWwLS8mBoNSLRwN1ctMWG43bjzAxC
	 QC/X1oclETeEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A4BCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175553039358.14612.16264383595914324392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d69b2e92d642fcf3b10753601f890b1d581cfea1a092c5e1e8547e7545268d
Date: Mon, 18 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755530393
