Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0682F94A9
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752767994; cv=none; b=ne3iiW+HUGizS7vllWBA4aLD2xcWcgjjP/SNCfC5Jww2v+G1u2dl6D+oXiQN5JV3bDrO2u0ldwUNOXqUuNCYnYQZYZsPw/DC9htaW1HsIzVv4bHOaid1UlTzVHJ0GOO2TdR9u6Qm799p4VhtAuNYwSdNZMiGRppaDJu10D47KX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752767994; c=relaxed/simple;
	bh=87+yJBnEqvmUBkgyRpsRpQre5Vb4GVCM0YukGIC/LxU=;
	h=To:Subject:From:Message-Id:Date; b=OVw26lD0hJ8cSu7UTskMY/TJluvH5i+aQRH3dIYoa6c65wcpSQ9GSKVn8Gjfs7/iIk+OYxqwwSCqSwh7ygcHL2Cz4Eu0Knb791IUDYJIFEE6lUU6TI5MXQHda9qQnLECCaE2onryo6yaoqEvp41AzybtwjVvjym+mMbVSGcRixw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2GOhwpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2GOhwpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F9CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752767993;
	bh=87+yJBnEqvmUBkgyRpsRpQre5Vb4GVCM0YukGIC/LxU=;
	h=To:Subject:From:Date:From;
	b=T2GOhwpWwhqWG8LZWwrjvWAL4nDk5RnhOtY7bYfMtgqdxYM+oGMW7uJODG+CndbJ0
	 yB4iY7W5fOY5tXZw4mpTBdehtgZKI3w3AKApypQWbqo8EtpWlhcX8CzbgrUr3+ypDl
	 guJXA2y9b5QpJIBKSXiIH24vsmvaP+gc98Dl6x1rOsrmVFzT4CkXheC71S3RiAIEJ4
	 w2jRF3RoswZ5mr5opHWE8ps5cz+8QNW0HStHKX0STSO3ckMGVk8TRX/XEl55+PzCKe
	 /ZVTDs0EjPf0QBORDlmfiD+xIdf0ZSAAK81SlPnK/z2FYv6Z0A87qs0Qp3UV0DDclA
	 3JothsdABKaMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92442C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175276799359.30464.1064315576448841771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25f42d9e8f9219ec63542a6535f0ef5aed27594d87549568aa2e71b60dc23b2d
Date: Thu, 17 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752767993
