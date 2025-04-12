Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D12028FF
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744429194; cv=none; b=hHyhFomwz5al1mgNFM4G8BGh/TJ1v7MjilHOrX8ymkUj9SWe3alHFwoq71LLLy98HA6y6GZomqcuC7F8rx87AX0eI9z1isVOtSWi2IiIOS3FIY8iDM2uJleK1EAX/iWXrcBIYBlqP+HlNUVbFDW2K96O1eTdRwfIFMO1LZt7dSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744429194; c=relaxed/simple;
	bh=vrul1vi9Abg4pmGRWt28F6HBhT1L+d1gHkmkmYvb3Gw=;
	h=To:Subject:From:Message-Id:Date; b=VnZOqmSQ1V0YO1V7iDb5N0hYMSTOecz+0Drrqy4ezqakY52snX9KmI3OgcZuUo2Shu1V+WfCJQ2YhiYivqfuF2jzndEJPJ1FBw3j3u/dGN0RQDgZSpgXnNLCrRzltMzkpSUVMRTN6pEJXogGhcFAtoKI7P5w8lFWkjGXeWFeU8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VD4W5SdT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VD4W5SdT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD624C4CEE8
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744429193;
	bh=vrul1vi9Abg4pmGRWt28F6HBhT1L+d1gHkmkmYvb3Gw=;
	h=To:Subject:From:Date:From;
	b=VD4W5SdTr4qczmM4hu4Zd/01gkS+smyzvUN1N77XK5kED543xtc/IxS+raoRv7ieS
	 sIV23VmAqRdTE0bmOo+FgyVJJqacP3HJE35J1CxFY8UQg538eqDxTa5ddItKhvIAjt
	 8XpR0Jbd4SiBSyDJKEqIXUndJXwNQy6KdPoeUKw9mKU6yKTWkT9Y8B3rbTP5iteryX
	 25yex1XhcD0Ze+vp3PAzlPHkAY+HvEnt9EV55d/1TeAa88W+XHpVkvmxyFplQ627DK
	 t3xM2/irjkUaXKtT+mye5IyXXVcOt+54a9N5Nh3gKOcIaB3/L+simJZbIMnvdKonGX
	 vu/aO3UNCrN2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2727C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174442919364.16690.1861469704626523771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13caaea68a7126e218741dff53d823cfd8e0bb2cb107d5c43a5853dac06c65f4
Date: Sat, 12 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744429193
