Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6407639AD6
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727435154; cv=none; b=GO9gBPZuzufp1fPG+DuYq0Fv26Bp/6xuqwzNFWFHQwAhMXy50AEw+O0EOsBSpH8kTsW3HKne4x8636jvFH0DaAPbIJwJ0jWT9OkQhfqg8risRkvA+lukxLlXX7qSkaE3NO/BRXbcJ4eV1eF72pyphpGoi+acyWmG3BpG9axBuDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727435154; c=relaxed/simple;
	bh=B309NAUytC68fniU9oP0u+JVA7BhnRARkHD2aPU+n78=;
	h=To:Subject:From:Message-Id:Date; b=e4FTcgx6WRlixu5P04ds39oxk8aKxzSjZLCtD2WWwm/RPBtAyG9Opy7KOsNG5VvV7vMaESaOrfQk/kCX4ABkSTC3Jtk8I+DPnaBxrO3scR5SO3oUgYBciyW+elR+4XdUEfAsfBigqmd0L4WF+vKnpofkqbsvIHygfROp9uLbv4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZg/23QX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZg/23QX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B04C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727435153;
	bh=B309NAUytC68fniU9oP0u+JVA7BhnRARkHD2aPU+n78=;
	h=To:Subject:From:Date:From;
	b=KZg/23QXhmbK/HzX5eGeNGgormeV2HuhrtveQt7hv70uD0XGr92AP1h4Gwcc9xjan
	 8RJEo9OYnhiwiUo1JRS5+CG8pM1tlAaLTKwtTMl8ZxIRGANu68wUpvIV8ZGHfhCOG5
	 4034F1FpwWl6HazM9tZseNIc1A6hdf7I8Li7z3vEwF0dOPPIcg2lWOFDUrJ9E9wwBA
	 R6XIP0AFDWinWmW6f/z/CIPC3FPfvpmkmESl+XK3A2/9P42n/3EMOXEsbp7fzk8Jhe
	 NVNzOvZBqTswNW9t5plUfMkWgu/Xpbsn0aax1JvQ56U9coDmldmgi6p3gX6ZJYl4K9
	 jvBHo+/78rggA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF77CEBF97
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172743515363.18837.17364187335535603496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 600fac71dfadf6c1da2548958900e4c92979dff6097647cd9e632daa89551aae
Date: Fri, 27 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727435153
