Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED3B495E5
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771781094; cv=none; b=T/TguU86nJCLFavIfF04/VTe2YNKaydObCIpsOUn79qoaue0EjMdqWHSRfm7J0eKXyxylzDH8WfT0mMO8a0Xnl0EKljGZPuu8C4xq+kkkfj+eblrzuk8zpIkcLnJwu+ff0QQcMxYbaW0ydXO6eqIuT05iLtR6vnA4o8jFlIZKGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771781094; c=relaxed/simple;
	bh=ktNM5zcHio4O6YyUlQE7wfjfIPo2YSASHWaSPvtjOCM=;
	h=To:Subject:From:Message-Id:Date; b=VHxP7cHdYHz+H70Uo7X4ZEh8Ales7BPZ7gzkI/wHXC1RjNlqMMWdYZo2iDjg8CwyXfcG6d4DH2DjbkH97OYYFHqRCk5345pRmJ8FpuFbw+qs1SY4O9dPd7mHG1A7LGZlo5St+hoBACO9YgQp0vyzGfTqY4TpcOxgkBu4k970888=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCsorO09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCsorO09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9382C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771781093;
	bh=ktNM5zcHio4O6YyUlQE7wfjfIPo2YSASHWaSPvtjOCM=;
	h=To:Subject:From:Date:From;
	b=ZCsorO09zHT75L8FWRVW/7hyEg7OOLHSD88sDGLtgQ4f44Cpd/awQhGTz/4Gor9ez
	 zUDxmu0P27Tv/W+AhDLWOrk3UV44/IcHGwMw67B6PJHj9KWW6FFeZi/vC2h11IGqaT
	 f5+OF0eRZaCJgkRJNM8L7StiwRrCWMK4OOYyXj1G0EePMBpKozg4gepk0lCecL2xrI
	 ue//0jAkjWOFeegb1pmlhxIMeNuUVH3cjajxrQrqxNMasV/nc9TN1CHB5r7V+L2Xfm
	 8zXePrnP6BsyR/qML3iMhK9KXvW3DFFYp+gPYF4+xt99v9o2rpGz70XT1iF+0eKsZr
	 2eoY8TZEYdn0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5DBC636A0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177178109359.3671.1860738037282748879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b140d687426416cb7dd85cb655ac34df0c1b63ee2558ebbc9e43346f67648b
Date: Sun, 22 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771781093
