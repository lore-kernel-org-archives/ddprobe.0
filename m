Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A62620F09A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749207594; cv=none; b=OxYbyH8zNgslcDVN3MubQ/yW1nfeJrk2d9a5h9dZxa/YDxlGD5baZZwhTdCx0pVx9ZEEbVZPDmd1mzdljJH7XgifZQ4/GcVGb72+N7nt1TmIjMfHaolUT+o+6dS3bTQr80UX78C96z/V3O03ExdlxatnVJN0ua3ttEeNrHwiTnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749207594; c=relaxed/simple;
	bh=GQwV6Utw/eqCe12L/zIi/tLfccDq1loXAdb2kg7GPE0=;
	h=To:Subject:From:Message-Id:Date; b=jA2H/rIonZZIdN0pJclbA9vYzdZm/2ze9EHYV5M/RHxuqp67hCsn8gHGilSS43oPevaGx6aHjExynMw40DsvLxMsDnWbMFMX/rfrepLTjV8hQlj6i0yBn2lSOMawVcPJWn3Q7RQzTWnXeXOEqj3H5eCox8Qf3LojtC1Tit91VHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOv0ixaa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOv0ixaa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1725C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749207593;
	bh=GQwV6Utw/eqCe12L/zIi/tLfccDq1loXAdb2kg7GPE0=;
	h=To:Subject:From:Date:From;
	b=eOv0ixaaz5kIJjSSyy8fzBzqeIkYrXYcmfpkAAKhC8BY6xvUrW744oJABMCBLYAt6
	 2SJn8/jWaUrqbi+gNAnZVjtGclvcTmLhcd5p6oKuz2Ui/BHI2F2NUxyV/j2TA0+h4J
	 kiCyKr+ViRcks2tlAj1VTRyP3Q4wJFPerDJwrNxR3QQsZNR1yJvOSe/O9hetJ7a5Jl
	 WvDVpcFAFUMfTqyN//R7kTBPb5QX/mcM7A3Rzfwf+epg/sPdIy5O2BQKInUC8M+7sq
	 zJq/QlwXe7HKSVGEosGpFPyP1OW6+I/3opSENu4niBr4Faa80yoKqV4YHqdUMmqIQh
	 TZPYUJumUea/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E11C5B559
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174920759359.22284.17762624225622071221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a3f5a7494596efcec5f0993225dccd340a8c7de053b1330da7b117180ef5b5b
Date: Fri, 06 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749207593
