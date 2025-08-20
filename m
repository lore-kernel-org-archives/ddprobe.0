Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322E12C11CB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755731394; cv=none; b=Jh0v8W4+O0pI5S9xCx0WokS5OH2wtHSunVcUMiIYrt9bs2eSda8DkB9Z49C34/5vqsVxyw8YSEdOyg0o0cx+iHVxvPiUN8VwJ7Kmm01NjbiPL+EQpf+HoKyEq2keQ/+sS2bAaSFA12q/WGXtcFkuZfF4JNkx4yMTfhnIEfyuMQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755731394; c=relaxed/simple;
	bh=GyWbWc2E0zPHiQ5VVOdajaUM3X7H79ublbYaITEGIxw=;
	h=To:Subject:From:Message-Id:Date; b=cWROJcbYve4AdfMJvpJNxvMJMWE0jFyl/6oLiFY4S8nsMRq+5SeUsWv8GFue8LJ+7z954mMJgviLytq2rCGO1bX7U0txK7sejE5J/fth3JMI8ddKNpmXfbOC5EFXicvNGm3gbPXuACXqYEgqB9I+yftIBWUoUFe/Wqv+IdNR+EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tf3qv/tn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tf3qv/tn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2227C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755731393;
	bh=GyWbWc2E0zPHiQ5VVOdajaUM3X7H79ublbYaITEGIxw=;
	h=To:Subject:From:Date:From;
	b=tf3qv/tn8p8kFFRgrlJNLazKwDsDd6akjktCRLn9x7ihLomdSE9mRASwWRyoIVe9R
	 YLVLxRm25edTx7AByK/YvsH8VTZvxMjKGGVkZwIWGz8Zk+yKPH6uR6/PyBujz7bC0+
	 nnS6cYEt/ktUJT+lMxdibKBvenk2FcZiKocTtLG2wTDCqdnV8Y+EHN49OlmFqlZqzm
	 ZvUTmNUn2HUv60n4hOBrL2reCRNARravAxVI06vGoI7cYFRN0iF+cH5lrC9bh7NErT
	 jdrd12C0JmrTKEqEREvRdNc7pyFicYAGY7Y4lIaVA96wRK/mt/V4lVGv5C+Y9qV6x6
	 c65aYTTL71GLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9201ACA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175573139358.9733.1427349186716142157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b2d5770b79b57e8d44d4d9917ae5385ffa1983de3aa1c7430523d6f37a15eb
Date: Wed, 20 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755731393
