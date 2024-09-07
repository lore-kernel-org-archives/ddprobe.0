Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3843D17BB7
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725674754; cv=none; b=ZIEGl3YW9GDzBvcqDZWEZSbZvA9ZLyAQNIESQl+w2KsXGBdu7VQA6dM1fdDG+fzvFXuWx8uBTepmR3QmMDp+u7+O7vjIp4rLGgyVaeDjl/ykjNX6US+sUfCHRxqN3FidUVGN28bOwRz+J5aPFqwBimSsbWu78uJmlU3FgRp4E4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725674754; c=relaxed/simple;
	bh=QxvSzSk+YK0Nw/S8rWPlEK8pn/IyMXd0qmH+kBwmfu8=;
	h=To:Subject:From:Message-Id:Date; b=CkO64XGuQza5XA0k0Ta49kJuBCtdJ4HXn3RBpR9Bs8s89YT1exd9cXcJP2m5CWKU9qcBZtjk05vkezYiDdvdeLGmqy61ATzWKTa+MV18bNiqAqezfrYuIlaQziwBTyxdmHFj9inLD2XfbolfnkUuWmMxjIPEbEhyQopW8K6hNs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6dlrpcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6dlrpcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C097CC4CEC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725674753;
	bh=QxvSzSk+YK0Nw/S8rWPlEK8pn/IyMXd0qmH+kBwmfu8=;
	h=To:Subject:From:Date:From;
	b=P6dlrpcMjTqYVDMBTeyZQIzG6M2txCiPsBtaEUyo1xce0QBglqLmrO1978CkPH5ov
	 IE3GD5Caq0mGaF7fDRs+enkMVwtB+Cgni24Mwf594Cuo8nQm/lN8CTSCLNT/DKt/2R
	 ei7o52a1HUj6nG9kbBGcJDj6oKSQhfLTm6pKtgl26gUUfpkrkW4AcJtH7B7qQRfm3A
	 cR36hwob9PjBssYJe7GAxERX8i9hEKaoFzpl9Cl1//cmqzn1YRfZkrzdnGn/4GsGTg
	 RZRrMYfEOm2PqiZeRRMWknBCWbAhXFszi2dwchZTlyujzMKLXs685o5wUd/owRaX2d
	 AZ+bZENGS9TFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4804E6FE49
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172567475365.16491.7771990699589586786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90ea3109a4972521571e57cc9d1a81b230e29d543dd6995a579975bc611d2b6
Date: Sat, 07 Sep 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725674753
