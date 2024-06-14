Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099E415DBB6
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718380703; cv=none; b=BeO4HkTGpjZG2pZ2MCT+GTHFGck0jhii3fsLqV/XoCrmr3u60U/OTP04gkATZSkM1DL+iWGJWkVGRuWlvHomPgB50MT1Znl2UBckRRTlLyX6DIlyfbf8pnWeOJN0C6lcHVwgkIH35fb9f8MEO5lnumnVoX12skPrq3go1BSN0tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718380703; c=relaxed/simple;
	bh=z140GWbFRAp++imRNSG/rPfCXuQPOHTDm7khTxfIQVo=;
	h=To:Subject:From:Message-Id:Date; b=CXXKY5Pi7MfcgBvu99Xv6/+5WpQl15inwQfOTY91K+DKvL6hoMsrIHFi7sEDktf//spllg9/OmgT51bugsQC1rnaJl1WOQNRkANXemPq0AcFV0R+jxPSiCf3xBRhvmJs2Qp5JrK2pN16vQ0r07NGpTYO+jjrNMTG48MwLjXfFaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9/RoZ3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9/RoZ3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48ACC4AF1A
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718380702;
	bh=z140GWbFRAp++imRNSG/rPfCXuQPOHTDm7khTxfIQVo=;
	h=To:Subject:From:Date:From;
	b=N9/RoZ3ODVr/6NdGtfIbYB5qia6QW+fCVuPQGkmoYDzvc3bHqIyJ+MJg78LAVe/g8
	 8CMQyEoNXV7h/n3XuYTfRrpiaDuJKvBxezWaQ6vUopkWivbtjbkxxo4I+qDY7r2wlR
	 8a1+GMEKQcA9tIqgi+FmKOMP3WFTvrBXISEJE42XOVxts0q1htHKrBlvL6M35yaK2E
	 ApeeL8X89VzxqhvJbJ1+DGQvKQrn+c19+7x/CjJpLKc1chxJNNR4iioRsrgo57YfOR
	 5EWdXILl7u61eUn1o0lQtO9iZOSYpu1xvDs6aEGS6v+CVo2O3aFm4pJ6raVEtaq4ON
	 PTEy5UGmCjjng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E00C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171838070277.25918.15130794821777951964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1e21ffa9c5c088c876f4efd1433b4802f5b3e181bcb18c770c20aee90a2ae46
Date: Fri, 14 Jun 2024 15:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718380702
