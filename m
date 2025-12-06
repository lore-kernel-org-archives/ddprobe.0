Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289E526290
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764990174; cv=none; b=tj8wzf+YjHUw9sx3sW5Fw4WVMWHSegktmwtHkzBxSw73PqUg4ma1YS5xh9OcgFzfXFdN7+6AhOkjB5t1EyWQOndSqatOtU2GUVNJP2tdBvsAGppCtzZT3ABJVsFBCHokJW/SmSGOdPP3MH0Q5X3QpS/2U2xda2/st4SXIySL+Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764990174; c=relaxed/simple;
	bh=AXc3sdMdcxnltjT08QaDBEOPkdykusZ5ymy8+ni5Nfs=;
	h=To:Subject:From:Message-Id:Date; b=CUZbrrPqy1QBDwfYynn9/DDZtu/YwlNGqB7LjX7bsUPypFMYlVbtRsMM0OXLvtbU/HWZRquu1F2n22Ooe2DlKk3GOfTSiLHbLw/24qEdmoDiu0evb4VG3Evx6Tzu4VYxMo3UEKrDvkJ7yQjkw+/5ZK3NY2Ld4fhK1sH+PrPkbFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PG7jPmJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PG7jPmJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B171FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764990173;
	bh=AXc3sdMdcxnltjT08QaDBEOPkdykusZ5ymy8+ni5Nfs=;
	h=To:Subject:From:Date:From;
	b=PG7jPmJ8o+cc0mJKa+/JbFrcRMDI9r4ju7zO1PoLwODrGbmJP+l3uU+rmkO+duf6D
	 ckErdjkyYXQYin2Ki7rtWQz3zqiD/0hLckA01R0NdYz409w4IKkVc3ZZekYBgRc5Yh
	 YFjxhNSdQAkECGJ0FxS3qm9PWRF/QuboykXROEYA3aw3mt97Cyt0X5qyZcw5+8aLmH
	 hA4aGG4LQROJYVsrKskdfCqGihXhXDEHE+e1q8zSLgi8DyzvLvpamMnrmvRlLbxfRy
	 sf2J0qgGdcPs0XdjNmXscxJHZxz5nWb5KF0n/YCAlyGExW7k3mRh4CpHx1odlcZIg5
	 8F7EGsOx9SZWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C63AD3ABE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176499017360.31888.15682866361758778128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad3f9fc755b2e1cda0fd1bf1398c59d9634b977141482a148da315656d1a37b3
Date: Sat, 06 Dec 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764990173
