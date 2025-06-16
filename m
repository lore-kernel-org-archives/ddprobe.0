Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB99261570
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750073994; cv=none; b=J03iBrqn71oiWxpisBDqlhZ55z987bJkbxI9a1/Ll6cKpLKMo5vnVGzelQmKx2MGTGvjzGAMahOau2uDZeaJZR/Sbwc2JtWzFv+iBTHDp33+7V6RwM2SUUqAhzAqktrnB0luDYNZMojfj5Icf4Mjcklec0nGeT8OZk9dqy4bS98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750073994; c=relaxed/simple;
	bh=wuqdHNGQjFCJZ0+kMRdqFCEvB8h9csIzEPNSu8BZjPk=;
	h=To:Subject:From:Message-Id:Date; b=e1NnWcrlV6CFqiPbgjDRWa3+ESO/2wD2gGwal7KwXR5ta+2d7gw3pj7uw5kdRUOR2lO2GbVWk7xkXUIPdELt7MEzIB8nDF499kxSWHam0HvaatKT5GQdnHOAS2zH20IfYgg0QNC7ZbJfudUuVQ1UbjNPP1inWAfdYqFlw6dOvTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1EBzmXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1EBzmXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4319C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750073993;
	bh=wuqdHNGQjFCJZ0+kMRdqFCEvB8h9csIzEPNSu8BZjPk=;
	h=To:Subject:From:Date:From;
	b=k1EBzmXj9xQw/NbyTob3GBpSQtV+oNxxk9++3uwSmr/uzS9aW1GiVVRnE78uypgvC
	 ZXS6h8ocOOhck5O5BScXXP9+9uzvS6yKF5kQLsnTR3t9OLTnX+xZbhKpkCrKNwR/yx
	 bH3IbLHFTzN7RdSRFzl4NKRa3/Q1IIBq8YakGxvGVPxGqaPRgd9MrzbZ4i0F6yelUu
	 /L9R9sitGMiqMDJPxJugneGFFp2zLQDEYANiveOhM0LYLQ1Alru3m9mASvZpPoYCv1
	 WRS5IKpWPU+ASAZa/Q6mYoRYoAS+TVauYBP/zvJCvTQx592RXnx/lY/RRpC2KyIa+N
	 gKhViClvVQWOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9128BC71155
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175007399358.16085.1443586413055318875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c5c34f97e8bdd2a117710003c9572ce99315840f91986f5c966cf6c7c90ef3b
Date: Mon, 16 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750073993
