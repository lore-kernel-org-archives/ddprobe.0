Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F20645038
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769679234; cv=none; b=KdO+hOoKQ09UIfPofJQuRXLg1aeg6z5uIwMMuTp5B4VZH+AUAkfgtqpE0sDMS8vk1hIBNvVao8k+ZAJuyGnb13+8Vhd6iuGOMDl5zck51fH7NxYm34v5ukrf6PrxNy4utgoVsUeUFCiXvYi6xbVwP4Vmrfel+mScsN9OFumTq8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769679234; c=relaxed/simple;
	bh=UwktxKacCrL8rV/exKAXV7lw9k1TIS0cs73SXTz4xNI=;
	h=To:Subject:From:Message-Id:Date; b=Vn8kJWEpNkGMWxeVMdf/3Ef/xPs0DdBy+ojKEL/Ip+IKmea/tJT6zViYruBpRMAbfjviy30DMrNND6QA+C8jLic03GtD/2nYLkp2tlJaruc1yOiXbjlJjhytm8znyzPw9K8OMowdYeEn44GuM6yTFlC6a0CADdwC26Znj2z2MBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8GswoVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8GswoVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94A5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769679233;
	bh=UwktxKacCrL8rV/exKAXV7lw9k1TIS0cs73SXTz4xNI=;
	h=To:Subject:From:Date:From;
	b=J8GswoVEeXzZK6zKD1uINLyvxyiYCxUGfQZ1dq+Xs96UUSibXpo+VpuftRh9Oy0ce
	 I0YrQBZBMzoP6RMEliDqZ1j6kL1GpqjXJdUAKNXJ2Nmoq8XuOI9wQeyC3b5MIQN2O/
	 JNDV/tVNGzlnwUlhDajOD/VQWx2mpZExaI6JHGi9l0DY1kufQx+oYHSK9WlBzPJbEl
	 fkfFdgPdho+9LCrhD2WIM6XsYgKoeAhPEEyi8VqKSg0PFtrFfanFkrHgyMVajpDT6m
	 VJD+ENtvmggsjULsRzrp6NkL81ZnwzVOY+M0TFm9ceWusPTZdstwyLkpoaUPdTuKGG
	 6AbwR5Mit23Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95397D358E4
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176967923357.13108.17318824320273164917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9866791101ff6f695c1fcfef9eee72bed8877a7cd5d70088a05785c6d071d999
Date: Thu, 29 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769679233
