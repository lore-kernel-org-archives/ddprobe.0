Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4540441A8F
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787464234; cv=none; b=d+hks7xvZWrT+M1d5G3xRh4hCFCJbaBKmsSjR9/GpU+M7ms2Zmgc/cPab2FGUV1bXkVMPYfZ85O0YhDkCuxS6Wt8Dk5S+XQHMvPgGq9fo8YZhY+BkBc4K4dHZUCKu3OGu9UpyWEr6e3mA3esVI866rd6Ol82KQHPkAExnnxM6U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787464234; c=relaxed/simple;
	bh=DYZC5K5MBLg+LnWERLhT0qGpWVlVCU2aXGFo44iLxlI=;
	h=To:Subject:From:Message-Id:Date; b=co7i6OLZ7H4ToVRdO2CliyJhwezRJhRca/zIzYLSLmQy7UksJjm8i0rZeYBfHlKUG74jUIctzRKzKmD2Nde2fUI+pYfg/LvcVNkuNv9cEfaEtneENUpHySOxfIHokCcfsCadZdROQDDQLbAdH3pvUOXpn7CD4/NHN7iIv4s8UPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUrH45lc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUrH45lc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAFDC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787464233;
	bh=DYZC5K5MBLg+LnWERLhT0qGpWVlVCU2aXGFo44iLxlI=;
	h=To:Subject:From:Date:From;
	b=oUrH45lc7Itmrk/Ygt4/Ihk3LqQj3Ws0c6Jyruy94MNA1amxhSSQZ6YGxc0T+1BIT
	 w+9dEbuvo4vdU5VKdb8n0TFy2velnlWmpneWQXOLs2Hn3BTG5SOrTCsQ7S+qn2I2RY
	 C4C4zdvXogoec5qLhbtR7KclOagN9NRUSPWFz78YKqWqiZKmYy3aIxkE+6AT3ymEYw
	 /YUbFsI8oxpRUpiePRmRlTHtaeT1E1hPSW5fguVNjHOKNNF562jfmmdona1MD/Y2fK
	 g4AK4wQSiev+yuNSXykH0wVnN5dFrLgtmiwcDIjAxN2KCmYPRorAGZpQvFPdqaR6EL
	 pJWXDqNX0ayVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B203DC5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178746423369.11547.1583046397731333994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f71922c03a2411e34e44ab031122a77c8e49282381939b76f256d55ecf49c8
Date: Sun, 23 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787464233
