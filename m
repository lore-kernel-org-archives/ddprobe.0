Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4951E24E4B4
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 20:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741207734; cv=none; b=gpD2x4fi60v94hhqi8nW5EJxB36OWU1YY/7hy11Nr0y81qiI6lwTMyfD7kepPuHl83kMKc6r7ReEi43HNt/iEvGuhJ4JIbkFnw20QOfrV+mX49MnfBw26TtDAW2tHe73B27nGnJivjLS7dRdDHiX2gULk2onRLIwA4tABTMhYvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741207734; c=relaxed/simple;
	bh=RlrwmYXF00+fw7tAFL/sKoPw7KRqtVXK1cBFVCrda60=;
	h=To:Subject:From:Message-Id:Date; b=MKkbp1nzNq+TmHsPStOLR3eGJAeYcOJNny8UWVEs640pzQ9uJTmGm+8Xr8s9eksRwoPBL2LmeN4IreDJXvA32mRnCFV+PsUdUgeYK8F1cU94MSchilwIuoNoXUyk4yYWExwln8USh0IqqBS9euFGZ9f6ODzCq3wiR/L0/8DGBmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crOJN720; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crOJN720"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66A8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741207733;
	bh=RlrwmYXF00+fw7tAFL/sKoPw7KRqtVXK1cBFVCrda60=;
	h=To:Subject:From:Date:From;
	b=crOJN720h5u7d4UjOVXlAhDhrNWiHZqiWYgM3LUvuOBr8R98dqi7VeO0lMPlUX2JB
	 w5WEFRrWxThUAJKDCzlEoZxKakBlgqcaKZNBJO9haVagnogg0wvNMBhXDyun9QEYlK
	 lcK8/TIIkZz6oAOWwySb27sgpcDjNZP2b7YsLixQEN1jjEIqsUYe9AM3+M5jlUZkH0
	 2ZSlvjSfgdKEVRgVNuxjXIr7m2B5MnLS5SIM0Ra+dnUGozcZ0fDSAWOmUgakSA/u9C
	 cVnnNJflJjre9Mj2kE5CABMhwqYryKzcYvsiaClQo6xAm0Q3bpKhtoWoYYsZeOC/Zt
	 /dSrrTw44Kwcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923E1C282DE
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 20:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174120773358.18355.12362803940204075639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c7d6fdb627d6f70c85ee2dc6ca4c4fcd977339fcbb77d55debd026c065a74a4
Date: Wed, 05 Mar 2025 20:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741207733
