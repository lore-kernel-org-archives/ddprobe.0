Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4792F8BFB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755014393; cv=none; b=PCoXgseWZ2gOR1DBuK9qKWIHmlPoj4qjmo6TSta/A772easMS7oHVeJy6cln+Yj/bMLg0LfynNaSSdXFbWfLpggr4O5PThHpxJYJr87fh8dkuhH5YN4720CX0YwGji3ZlFztZk+koNbSJM1A93S0IbTKixINZUyA3A3+Xcz3u60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755014393; c=relaxed/simple;
	bh=ayuAuldTy/spOtnE/uWETUWpeJWQMftnKfYrUigxAoY=;
	h=To:Subject:From:Message-Id:Date; b=LTGQHPWbdQvn9UAnr/5UdzP/TFcnNuXf5keGuCHaAAv/BlJISD5VgILYLrmCU7YV93Z/kUj+xmGekXH+eKxwVpnXyIGSsdSwTqECITHPpahuRou/LQ6paEdrEVmwb5SDmqc/s6SW3KX05suMMER1zaDXav+3K4MoJnZAvLDKulg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJPIh/Cw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJPIh/Cw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF89C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755014393;
	bh=ayuAuldTy/spOtnE/uWETUWpeJWQMftnKfYrUigxAoY=;
	h=To:Subject:From:Date:From;
	b=FJPIh/CwmPRJLBgZYWwB9difzjStN/9/11XoRSTo5QUGVfe7cEi5LqCiqq9sZQpHt
	 kvphXCb1R4XcnFWhavnR8PeNdaq7PMdzLgys8O+trAOrK2wPRxnJW1RJi4CoRlQ2yE
	 PTpvOYHDhJ7soo90qSTlwDNe13fQjuJ7i0DDyr4lZf6WfPqDys0lKlA2taK/ZlSRmo
	 Hux15rXvUzDUngQxKH3KBLw4BC4ryFL7UYdie8KeWopPtlW0jU0UpzJj9v9adguST9
	 Wn89mGLhxseOq1a49owJKl5sqT/guaYl5qfj3HG1+JCHHGv9PozyKJZIdk4j6i/fFf
	 dLZ0FA2X0wcAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E715C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175501439357.31178.201228042882104516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba50affdc3630c5adfd65d065fca8a657f7333846e06588cec4719439b4f427
Date: Tue, 12 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755014393
