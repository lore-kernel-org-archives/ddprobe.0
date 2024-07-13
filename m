Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C1213959B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720907423; cv=none; b=BEoBixyUCtkjNTNQu/G9LyUp6v8HletMei1jcir6xSf61hoQP1YKsW/E+bPque7A3CGOmxQFPeG/l2QdmtUNr9RV60W0A0R+muAhwIJ7bZd1kepKWuCQg+MnXkTbkNN2HAgJO4fEQEWH+iDCxzXJnpiSw5AOHoA2D/XLjQGl1ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720907423; c=relaxed/simple;
	bh=bmLyo7aYcsQ27JMUH5nGOE2Z4kBoh6gLf9AgYvvTr3o=;
	h=To:Subject:From:Message-Id:Date; b=drWqrFvO1N2IvaosqB4c/nbmd5np7HCxOVJi4meO0f3XzT3kAh3dgMBuML0zQVIvk2yjsE72rn3G9IB8BNSDkKqu3US4c3hkWFsC61AYa++FSK/Cz6Q5ihe88fGrZfoemup7XDjCvZuxpd6j9BPxoHjNKGqwo0TA4bV4m6KlaJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Okdc8LOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Okdc8LOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18E2C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720907422;
	bh=bmLyo7aYcsQ27JMUH5nGOE2Z4kBoh6gLf9AgYvvTr3o=;
	h=To:Subject:From:Date:From;
	b=Okdc8LOJMDEyOv8x0wsT7uR9SGCkRAi1vAj2H2YpyUteE8ecDfhcHyBagchWXdBh5
	 ked+sdvQW4Z4sjE5nobh9reQjhPM04uaQeIDWA6IPynHMAtu9BiqD260xsxYRBjGBM
	 +fdra1gjo1zjy407kahbDVIdYQdW5NS6f/dBuIm9g+1KiKGvbFpexIEIhkiR+kporF
	 mu72F4aIl/AN5xHh1NfAQUHv+NBLjecaidPGoc/d2g1phEcBat1IexSxxsG6kc4mZq
	 j7TB+Udbar7LnETIjyIz9euOEv9S24qvJmywlShuOMCuRXJWkEJ8zi20Bt+HXMIQgK
	 DAy3JeqJu9GhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE500C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172090742275.378.15527918090001817251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109191bf7d41271b0170696445306b7d30c821ca455f6aec23d68479a5adb858
Date: Sat, 13 Jul 2024 21:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720907422
