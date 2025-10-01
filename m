Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168BE2777E0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759349394; cv=none; b=CoB4RLwxlyQjfVSdjfAtIwqY4FtendlNQjL98dkbGM7O+dedxwXFp05lFztQ3ZcZF97SI+i9sEBmz0nI7nVSIsrkkxd5T5Qj40JXJ5jC/O9nsXXNtLGYKjQEKF3Sam0C/NTPHkBsjzoC13tVnAHdJNDkKtM14bwt6h2QcsJuSpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759349394; c=relaxed/simple;
	bh=p+iNO5EPzuOT49KgFx2rHFMWZ5WB50olmgs6vg/EhUs=;
	h=To:Subject:From:Message-Id:Date; b=acKjYt8sUR3LgNIolqED2LVwj8KEQnelluIjFITFWnwxgwYl7rzbZNpKGsqdT7lak5IHsx0X9uu8hANzKzW9Y54LH5oNW0kzALyyZ+dFRlntKSk+ifBKiM7bN1xiBsJrF2YjNBMm72GYMFNH0TD3UhbSf9SgWzmZCEY2XJkd76w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwAodCF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwAodCF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2760C4CEF9
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759349393;
	bh=p+iNO5EPzuOT49KgFx2rHFMWZ5WB50olmgs6vg/EhUs=;
	h=To:Subject:From:Date:From;
	b=GwAodCF8e3evWMxahTejYNjxSKevNpmSHBriV6YGvAgHqD73KaQUFVBLJ0jBrEuaV
	 bgAUuJJ1hScE4/lDqUSOj3GL0qTzlXnG9ac6SQ7BDx4QX3pGPIw4ftQepFFKoydU3N
	 gZvjjei2icoOJuRiuxoRRwt/IWrYzq1E8Rw4LhIZHm/YK2cKEtTQTpAN3A9/eQD9ck
	 vBWP9gybmoPIqs9gOSdTNUBd2MotVP29S4xBW3AjDXMpSOb0R+TUXyAMqL3VO/QxMi
	 N740AgVhWlhsA0GQAeviXvWQwht4eAGfjvJ8M2WLJVMUTzsdiRWr17dxnXh0QP3FwG
	 xjSmpLyULg9zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D0CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175934939358.14086.6559619041529842239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a786602c5116fb93102149608af180c283affacc194c62bb8c33f5c53da2cdc
Date: Wed, 01 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759349393
