Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E46C2556E
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739000754; cv=none; b=MkUKAQOmLv/BYFP9HNqWPOBB8gF2poNiIFqMWWUhbX/KY3SRf/FemV3Frh22YWtNp53jKuOTNnYo0QuFRyv4Wdxtq7WUzJJikZf5fAFxlNadPQw5VyIcIwdJq+hYJ4CXw6Q9PwGorkhboV1zj0emzk0ayjr0J0fAN1HUrYdVWzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739000754; c=relaxed/simple;
	bh=OOSRMfmKIdSTuos0auWAicNXfM51Ng0wRAL0zEc4yuI=;
	h=To:Subject:From:Message-Id:Date; b=g0xSMipJnfX/huepF1J+JtvFMtx9LHaOJhOUp/jr6mHq8bYHVoVFcjpncF0wXA1iMYZGFarIVyt52fw3jT9Z4oxy/iSb3JGDWa5JA87+INqssrg2bDJW28cNZypzxeeoJ5FUkB/8UdNzqetqUFZgymjNVwK5p6YrhejhJS29Zn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cqs5D6vv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cqs5D6vv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61E3C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739000753;
	bh=OOSRMfmKIdSTuos0auWAicNXfM51Ng0wRAL0zEc4yuI=;
	h=To:Subject:From:Date:From;
	b=Cqs5D6vvI7SBBtaO8rR4/Xw5mj7C5nEGVPI6EDgiei7p+O/kt2k6qp4lbsW0vOnRy
	 NmgSwHIy38fUnkrNjuh7LaAA+ocsObxW8c4sExQ/NtIK9+GVBOiCMU2RNUswUdIOvf
	 OzKa3ohQPJsxFDH0evdLU2iLYHgNnPV47f0teQU9hH5tQG9jvwAf22ozxlxNbef0fy
	 deVXRGktEk4nSLoeXOzc+c4iYYY1UY4IQyFNR8FrcAqJlWopj77u22BjyUXxcGBo5+
	 9Lpop8d+VDIm1X9nYok+rGyUNPUDjK6/tGAe1q9RiKlo0b53ui+oXsKRWzvhQ0fW2g
	 rX85Jr7prRhZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A164DC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173900075361.5040.5317626528187073148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a88377ee264a739d3fbb98e453c7aa3e7ffb5122c44647067eda909c3ade640
Date: Sat, 08 Feb 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739000753
