Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D302868B0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756822194; cv=none; b=Fh/1LKHcYFjcbh9nO0PAoN35k2XSWwcxhtzJelWLLej6zR6ZlQ3sgHXZBCYxSQAzQmCylXLFwO6vaeavRXcGhv3o4dM9+bMnpKukgSjJ0o3ZNPaxJ+BGdvY2Z0Oe9s0sC8rhqZ44q+7haCJlA5nYvPFcJpCXW7dhOSZK3I3tAus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756822194; c=relaxed/simple;
	bh=5voee5chxzMP4zAWVrZv1/UeO5QW9otycHBS/mqMPEE=;
	h=To:Subject:From:Message-Id:Date; b=kkKYcrjjB/u3VwZMKoGkhPofltkVBFk6+KX0c0e1XQnv6GMzQpNWWGAfihCqAPXIVw13tyVCoQBOj4mKWLd35kefcX9t1vHdZz2qQxhFu3CH0KI24Cv0yT7aP1JkE8Vcpi0O5EYZ+8smtX4kVH02w/3YnWC5p5CCGYUkS/jAV7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePAhzjiv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePAhzjiv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4988C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756822193;
	bh=5voee5chxzMP4zAWVrZv1/UeO5QW9otycHBS/mqMPEE=;
	h=To:Subject:From:Date:From;
	b=ePAhzjivRTg8fWzPjqdYfCrDiSTN/23R6hgg5sNjVpmvl76dk/TSztsHjeQGk1DZf
	 75y9accjRaFtSRXUy20KyKlWJksRWsF0uQjusKhGCoSiAVMscOVCSYrF/X2ugLIulg
	 IKx22gH9FjrBDEaVudIIvLO7N+tRPTbmtddeXMc24Cud7wgjhaXgPTK+c7lZkqyakX
	 5phtxdgntdF/gbd+kTvyE/G9wEIknW+Q4OE2hmF1Gxe5k4TCVTbTzfn3dHHnM2XGJF
	 VLNFzzqwt+mWtVj0Y3tmxCrDPjgOhkL2t7h0QSs+/ZFwtrF6SmP8s4IGvuGZOGmLWy
	 jo3TqpntAaCdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED99CA1009
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175682219357.17749.6303569967354301256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9dbaa807635802d5179e1f4605731a83c8f49d3316eb7197e43a629aecf96b1
Date: Tue, 02 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756822193
