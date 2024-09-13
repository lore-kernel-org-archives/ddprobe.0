Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273B233F7
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726195554; cv=none; b=GqVwbjk7eHMYuUC5BmehD+rirqR6V7h6hP8uadITNqx/dwWDSWYxtZvLkXBjOC+iHyzQK2V4Y7VxuSfCav74rBmfnkIsmhcfopUXc3E4MY3j2GaUyj8c36PF9OIe96Q3gQPih207n/lz7tAVj8560s3e3zfAvAm9ukTENB/a1aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726195554; c=relaxed/simple;
	bh=J1lTYsxGWflQ+WrpZLsE7X5HlISRrGsVRSwq6OimrHY=;
	h=To:Subject:From:Message-Id:Date; b=fDoKg2g9638yFEUfgsuUTDbRchkhhRzT2ji3wZiWOM4vwjyAW09dso2w8pz4AGKh8OcyLF/ZQDvkHkaydNBLl9ygY19IP4zFzxoxLV/6zK6dG/MOp8I45pz/Ovt8lUzPNWcqBuYzchbwyz6d6gknVIXejBamni/3h6d277zwp1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAEk4pV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAEk4pV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86B0C4CECC
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726195553;
	bh=J1lTYsxGWflQ+WrpZLsE7X5HlISRrGsVRSwq6OimrHY=;
	h=To:Subject:From:Date:From;
	b=DAEk4pV8wGHPrGGGJt6KHN3stvBFL5Tvj2ISf5mKCaxU7785g6UnLmw+x2vlt1FwD
	 aU+JJTPyKy5ixIe+ZewFqm1lq3PQm4kCbvjdnc4vpKYPqp0C+vUxe4+xAndm6N/Fh4
	 jr/yKkVMFAhNU87fcFfhDabH857gTOwIdae33Pnh10rOYeMcUajBJLMOvoRmMBBnS0
	 4c5+v6u/KFQgHT79LaBiEenjpd4iGv8UmfLIdOWJ9PPuIJocTET6+l+mk6NE5FqsX9
	 HD45vmHzyA/0UrY1x9BykcAOjD7r9zA9gcbAEMT6pKQlD7u7US3OMDaJrMRS7A+n0W
	 VzOKTfonWQc5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9929AEEE27A
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172619555361.2697.11543331264658459236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a4eb6b0137aacd5d278b11b157fdc4a65fa64d785872dc0ae14849a98b0d32
Date: Fri, 13 Sep 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726195553
