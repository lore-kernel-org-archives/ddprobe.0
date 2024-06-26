Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A2F20B3E
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719369803; cv=none; b=npDSe5PAn+hEoHG9CFDrEF124EcqQFzYsa1DnFotmAoFilI3J/rk0iZ9eHJsFG4MIf7aONAwEv727V71DJ9R8tFvipCqlsyWOmBo9DJ7uk/UXWjC7OGcKj51vUfwKveKYMZbeXXPCHoRhXYs0FqXhvfG/ZdecBsXxZKE7M8sBhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719369803; c=relaxed/simple;
	bh=4+hgiZtgTr6EZcfE7uS2qXMadC6CZ6xfh4DHRQMKTTs=;
	h=To:Subject:From:Message-Id:Date; b=aeJVsxG2PpSxnQQxGg1fJPW7bYKB3vvc+SDavhiuqwo3Gzorr+Scv1hj7aJHEKbWtvfsBu+OKeRiEa9cAzuIyNXcO8xE8Q12vsqzwdkXMy/U82PARxVXHB2Tq/ma2qXRhmu6wJTjBvPsIsVbYYo4w4jB27l6T/pKO7fqmyYn0/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSTRtmej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSTRtmej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDC6C32781
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719369802;
	bh=4+hgiZtgTr6EZcfE7uS2qXMadC6CZ6xfh4DHRQMKTTs=;
	h=To:Subject:From:Date:From;
	b=qSTRtmejXwFNrPPxAU9TwKjmq+gOpQi4dFXdERxXaDhP9L0/VZO4x+YnSw1TdCCdK
	 X1N/ALKIia91+5TYMnUnfrusbLQhbX4P2JWzPhJmJR/usOFIGbpUwGXjKIPR4jylKQ
	 lLJiRF3q//C+ahGKhDPFvalKwlYUNgzbXjj+thQzwb7Mn+pCVKGdl2s9eyI8qa8J9s
	 4Y0fWAQEqYolOIV8w4fdksPT2w7GeH6TCwEJbxfNhb6ronH+L8LgXjdD625LVdBaBS
	 KTEMrK1yuvgu6HmMq6J0h/qz7I0k5TlomGBGQ2UTxmbFtQ7k0X9yByjPvMeIuQhSyb
	 +xmccQ70Z3nvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE6EC2BBCA
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171936980281.31765.8961602371664242652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb900389de10df964b51b4c20511ad67e4f8a43cc70f6ec809520c56d959f8a
Date: Wed, 26 Jun 2024 02:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719369802
