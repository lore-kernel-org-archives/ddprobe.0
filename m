Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B20C2AD2C
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776401254; cv=none; b=evkCw3Zuvj2sbx2u8KTsQ7ugXgIRrSZhGfcH/IccSuSkfwdfOE0IDikj6W3RnMJDCaD4+ato7dxbzP08km8wXDJIaHZtRRcUbVDp5tnhNeyTyozj4BAHNCnfhWaZtdwXrpxc0YKWObOMDLTVChI2KWrZlTuAb31vKG4Iwq2pYeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776401254; c=relaxed/simple;
	bh=EbYSj+mD47NjSag0jjT424OoAZA4b/fq+UTqcxrABx4=;
	h=To:Subject:From:Message-Id:Date; b=WOjbzgy+vcCMClKUhpg+z1TyKxNu+UgcnA1RbqMbRlS7fA38amfw/nZ6d1X45BEXkSCs/ZaPtUbe+ut3GvcRRvkoGrrQny1N1+cEugG3YW4QERvZfCYRdCURUBwi7BIAtV1etNNeTcCAp88D0VYWuOdiw6ViNs41iQc0Vtc6Y20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXoylyAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXoylyAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04F6C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776401253;
	bh=EbYSj+mD47NjSag0jjT424OoAZA4b/fq+UTqcxrABx4=;
	h=To:Subject:From:Date:From;
	b=KXoylyAZsvcIO5Mb+/1fjuuTzRgwAkp1IXU6mP96nydkr5mu5IHphMmnEXLmqwkXo
	 KmhTw4haZQRv1WLo2K32yIG79qsS9T3NsLxIXEClRCF0jvc+EO99Jn8WPedrbc42eQ
	 dUgZ2g45W+x7CYEuhhoPRTceHIJm6tPwIjizFJgGSGkWGvznjmefc/7jUPLUDfJ+IS
	 aO6KiZcwUByBVwcR9XC9WWPPno69oxMSbYB77hXEPj9bEhQIScjnMHIWb0+fGfDvjm
	 Br0TrGGsuAq4DYi2+Mf/JJsPjyh4xbssaq7vd73ptDlK68vKIqt54Y8fZZTObdXHK0
	 M3mQJj0f5Ht/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF188F8E4A9
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177640125368.7618.1817851533958444884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c3341e7fdc095d84b684f992a442aef1057c835c4637aea1c8c0fa6f438ad6
Date: Fri, 17 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776401253
