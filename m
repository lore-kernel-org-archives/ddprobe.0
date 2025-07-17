Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A31F1DC1AB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752768594; cv=none; b=FOaeo75WzO+3jGYTdMQ4eo6uEnVZALms2aLqp8JHUtajtsvzaIdkzadCUEyF1eqa2Zo4qh4nE9cXrnUt3AWgCX86Ejh1wyBY2ZxOlqwOmFIfcvA+djxUPWP+3KBNTzuPoOOzErzmqrKR80yQNCiUZG0CqY1S4aqBL9vRBxBmxoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752768594; c=relaxed/simple;
	bh=NPmVXbvudDXckenffaaC8GaVfy566lWeb68Fwzo2Ok0=;
	h=To:Subject:From:Message-Id:Date; b=kzr+YQ3uTXNMFcPlNoWb2XhjaQmcvzTO58XYqn4su3LZkPaBq7MAaUtKDgxY1CgUsP//U/5niktxbs5U58KCoOqGbS9ZiOF47Gteuuj/EbOmPeaMn0IDDnPq/ecnbDJaGuULnkZad+oLztbKAUcR4pSzCQH5mF/SSlG2DRcm7sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J945cqZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J945cqZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A275FC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752768593;
	bh=NPmVXbvudDXckenffaaC8GaVfy566lWeb68Fwzo2Ok0=;
	h=To:Subject:From:Date:From;
	b=J945cqZsyzE8rtILytd8jUNVS/ES6gtKCV9cv5eYdF+fVr+fnTJB8a4e95Q4DjmOy
	 AXlwTRICgScWRbm/JVEk7049ITrUtPUZrbnMuFKO8QB4RTFfL1EeMwzARkVWqY1FHS
	 vEHX0XxwheNl4hk4ec5QJJzM1ViuLtcVtTJXOxqYOHLzITUBTmtJvxuW6uTrDEvuT9
	 1LIQQmXQiJ0rHsm7LI/yRnYBfC5Hq8aAr4L4ZScASeWsfLzIUVQosVyB8LvDC7xBj+
	 4FHXnFQAjObil8GpORg5QpLVRh414LpPARXywdgfZp3QRWsiYo7gJD3qk5EEiad1Mw
	 PYZiESFm9yraQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6A3C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175276859357.2145.5580561128661527693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb55b0f82d437610272e582bd7d179d4249a13b0b3499a131db709e7c09a3bc7
Date: Thu, 17 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752768593
