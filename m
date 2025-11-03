Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EE2EEA8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762141794; cv=none; b=CB+tEKgm9kB7t6hYDcDWOHRiOzo3+n4Bp4r3LmSzvUPEbgD3f+X4fIrlzKZKDq5BgEn8SImnL5C0LrDrPy+HNZt3UBvIdMc5FvazeytMMlL/8SORi37+MB8ENgvw+DB4vDtefWuR7Zcw2z5t3FPvD3mBmh3Ki7l4S/58fQayRxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762141794; c=relaxed/simple;
	bh=6lkZ42uJlHZ15yFZ1jkFgd+dsiQ7rHCXFbXcNNwAS+M=;
	h=To:Subject:From:Message-Id:Date; b=nwvPVHbnO0lFm75O1S2+MP7nblG35AathvfGYBRhelL7ZX00j2EClim/HWQgd+K1lo/WKWDZrJvM+k0eKwdzjtrspmEa5t8wajxxJH3oudHfqpPbmZ1N0s5YisDqkzxTIyIc0XUJctMo4qxVMRlxbwa0fv/dmBOYr2cPyHlUYAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AH0jOAVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AH0jOAVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA242C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762141793;
	bh=6lkZ42uJlHZ15yFZ1jkFgd+dsiQ7rHCXFbXcNNwAS+M=;
	h=To:Subject:From:Date:From;
	b=AH0jOAVsDWobsyILFw2+MGh1kkBcbFSTLu0DkHhpSmvaGwkh7QlXIyfW/7vPg8aLG
	 hyjaSmE60DiPF9EplQi0fs0a5XG4ibVdgtajGjwPd2NExF0Gc4VfRG8oLLRRxrTQZb
	 eCtz9hlDsqcXoDACmr1uxzkrYwrl20lFUJ/Ph1VvO3+BUvCVWp+adegyOsKwVmVXLr
	 1MBJLDbIkrNglTIih0tps2/OxNSrFOfJdNh7UrTv+Z2M9ascR+Evl9Owt61wjwZmuJ
	 +CO+XgWtHEuR/IjfEPtiqpEPafDgHQmdsHyqpnfH26sR+HB+IGDxFdSAveh/sPyXML
	 uzHhW+KQ8TsBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9586ECCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176214179358.12946.16446850503993766095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 742756416de72ae087413cf79a121954dae703c61fef80ada57febb7c0be7ab6
Date: Mon, 03 Nov 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762141793
