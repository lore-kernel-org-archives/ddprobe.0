Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249B515530B
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737053754; cv=none; b=A872kP4Vg3AGZpXq/acsuS3k6+cwdsRj00dgXssGlZ+G3nvi7pj8TzWd2ob9lNcPPDO4OW3HlE/lLzY/5zTKse8BX4uOWlqIvsEbw251SxR94/KyAyhBrN2Lri7bTcasE1PfY2w2lgEotcNIQq8Q6RcL+eix/eIyGJSlfHCX1Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737053754; c=relaxed/simple;
	bh=j3qhGwI3f7rsrmUkbe1LuWxm8cVWKBU/fFHVOrBD91A=;
	h=To:Subject:From:Message-Id:Date; b=EfN/46CBsylDHUNk32WPLkNxRbWcp8EfGZMhLBgjYzyb7RQeI3zFKkMMa0hrIPIC9iBLL+88IzHNT3Vj+AUTK605YJXtbaAc8FHYf8hs7d+PzwO/OYDKjHlJrkUJsr/2Cmy8ZQrErzGPG6LF6Jp1Xx1idGZV2e4eNWO0ahm7L7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItN/hrti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItN/hrti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B64C4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737053753;
	bh=j3qhGwI3f7rsrmUkbe1LuWxm8cVWKBU/fFHVOrBD91A=;
	h=To:Subject:From:Date:From;
	b=ItN/hrtiQUnAruNRf9Jo91hfQYEe9kdbZDvvIQQvb5E4sqp/f7fZqW5GpFAoGbI68
	 RlDCqKA7AVNMfqkvXTi/pfvTVww4d0aqImY/+WfEhdDSf8XQdLsrQQRq9MsUSk+fR5
	 1i+da9ZSJfITyVD+3ZYZE70jpMEawzhm980+ykZQAS23eL7Uxchs6VN9e5nownQWPE
	 xevI3NfN8qYuzVpRFPtM6IYdOALwhPr5HBTxyL09rez81hJ/ImU6WJZ+Db53CWYIaW
	 5CDnQV9NOrvjD524iyeYZCBkhEOUYQLwHzCbmySC0Of16E876FJxo/4hcRuEKbBebO
	 crl8mR7cRRFvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94514C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173705375359.15322.16045282972811641893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682ba4fcf6673f662b556041b423c57cf1d023b3294781161c1b8b7aeaf360be
Date: Thu, 16 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737053753
