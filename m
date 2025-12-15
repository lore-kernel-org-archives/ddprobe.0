Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1140A342CB6
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765827174; cv=none; b=OsBUUbwlEX4uhuJTZ3D74A+9EJiTOqy+s6CxLXIoqKr2luI9wLb7nx9FdHYuOxTo0RP8hsQqJMTskUQUSKG4o5k9t0eQQX8CKYkO0+zk9IsHwib9jwsDQMO155e/P5MQZthmrLNpbCxL0HeZl7FiHdjmQeJ8ItY1EGhgd84iQ7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765827174; c=relaxed/simple;
	bh=EHwpVWdQleAOjOJGTW5+AOxnsE6UtD2qgC8mkXQBYSc=;
	h=To:Subject:From:Message-Id:Date; b=L35ke/iASAQFCMlgav0sfPGxbuekA5+8kCDZ22ksWbSd9Udykf+56BOr52gk+KidsUXmbz/sRB2YC9W1f+suGa3qX2+2FltpdvVrDWxAujhm6SEG+NzUyNQ/vXHU9S27aCELI7TgBgPkhV+OcU3++738rcvo46FNN3/ecXnp+yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BR9rw2EO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BR9rw2EO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C1FC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765827173;
	bh=EHwpVWdQleAOjOJGTW5+AOxnsE6UtD2qgC8mkXQBYSc=;
	h=To:Subject:From:Date:From;
	b=BR9rw2EOZD+0XB2GcQ+e3KDQLYkUAaIjOsItplJ5NRN2AWecTXidh6+WWpJMZcDIq
	 pu4xpnhKNLHVM0ulM9hvNGA3cIamlAW95aNeG6lREHcl4g9fjMhrPp2pcDktRVbfwp
	 zBY4FfYQe82zxc5g/SO4gS/n8Cp0pmJpJcvIg+QfWs7wSKXwPcMJvt0SVOW3ftW2op
	 WyMYGFDSCGF29uQfdgWJKBfJ/cG7o4eO/7nwti1gLCC/DmMmV4HLEeLHTaH2tFuG9j
	 Pzgq1RtxVmajTBeS3EqRClPYmvB+rG9YOW6gTBqfyK6doFnNQojYS5nFyu5yhAqe7t
	 i//41Udb0iAfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97682D5B868
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176582717358.22313.8102846879520509820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2d90665c4e0030c9511a1f209493d24f8180ca5d37785b31ab796d2542bcefa
Date: Mon, 15 Dec 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765827173
