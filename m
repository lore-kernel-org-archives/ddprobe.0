Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50667263A
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751606393; cv=none; b=dkwE1PtxuvLar79OD0b/it9YkZ9Irb8z1z8twQQSaEPI4q+WhdB+gmjkUaHFDCbQdTZkXySD9f+8dv6gVUhLwdbrkwezf/jf98X5hDrsORNEXzL3kIltinT789CGnexgvG460A73L3OtDvRkgEoM0mIktex6D2MZ1qsPYq8Y8w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751606393; c=relaxed/simple;
	bh=lyWI2CuPTwNn/6dCltq2Kpo17mkWSPRj1V2plCZCgpg=;
	h=To:Subject:From:Message-Id:Date; b=B09CWkSQeU6L9jI6UqVkY/C28+lkDn99khD+wX6jwvFLcD0UnXvi0v7QJ+PbJiAPANg0UW++O5OfRHZj596SNO0eIEmEkxOAmrRSk5G9og1CT6ryp9wtWfK+aTsxEHF9b5Ts4r+8kFQNfVtEKbO1hc1NCUmZtgGQTd3U1b9Vlew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gayjhW5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gayjhW5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DC0C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751606393;
	bh=lyWI2CuPTwNn/6dCltq2Kpo17mkWSPRj1V2plCZCgpg=;
	h=To:Subject:From:Date:From;
	b=gayjhW5UVCyQdE9gwSQzWWaRe8CXwAKkykYjywXNTOpfvCRIgX75uozDdRqPKpvu3
	 0PZsDKtW3GessPm3I2nKX/LPWMnhdpt3B0COPUSrGxQjEeDFBTvvuNTELvW8QHeY5W
	 eDsh3unSxVdKjVCjlmgfNanrDCoKPQDQaSVkc/drhXaXQFqff/0oG2qzptRjvgrDaA
	 MOKgNvDgW9VnYgvFAXfC//HoHiYsGdD7WPd12hKGFKeXbWUipWhzr77C0o/Kq8IajK
	 8yee2WpXpfnyB9fIQ+0ETVwawriln9ofKoxVPFLFJvs4Xn9wQ50Q87QKdKMZr03TCW
	 vAwtDU4s+eSlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A6CC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175160639358.30422.17066904273034284780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368befa9dde443b4361fca72725bc918f9e054f3a92c18f56354294211aed523
Date: Fri, 04 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751606393
