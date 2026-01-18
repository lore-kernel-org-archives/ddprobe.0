Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A7127FD4B
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768741434; cv=none; b=rdHo5TkIKOrFvCrJOAqJdXnUAkxIhC/pTMQI8By3PeLhsCXdxsBr6EbNohA7D45KHmXjb9gtzLW7l2Wd9zfmGpL64YbN+JNyO9Efwdv0303tlo0IKXpr5hv7xIMCU5N2R2sOHeOT5UvVuIrz5IyFMYkKfpf/NIjcTf87wa+3TfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768741434; c=relaxed/simple;
	bh=VmGpszAQF9nOwR7MQfrExFkd41i5QadetFPJ6df2nf4=;
	h=To:Subject:From:Message-Id:Date; b=lFww3DzoimZZk3hQvqywwlJ3o6HNdbDuVhrQEEqP+QUvOvnAS+5WB4izhYUxk38EWaZOZKnbejJ+XdEcuDmLf+H/qaij4/i2MZJw2M0SodyNX1vyI7atdyw1xyOCFWhost7K6l6Oj95XR0tWC0uPJFfT7QUiIOJ5UxCb5h5LxIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFpDzoDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFpDzoDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D94C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768741433;
	bh=VmGpszAQF9nOwR7MQfrExFkd41i5QadetFPJ6df2nf4=;
	h=To:Subject:From:Date:From;
	b=DFpDzoDpeASS1soZ/zzeWatZirsuXRBqrHz43J2uMz2a2LfJZUR+w8j8u7l6cuk0o
	 QJwBDNOMNNjrVFPv7XH03rH0DzATicVqTq4k4OmEqZjRGp8IehriPhYlCdaIAa3nTI
	 vS6fIR4KNiAC/IlQTBCVe3n8qHmyTJzEh8OWkJ86vMQy0xB7S76iWJYq6hXN01vI4i
	 cuYWAriUi0kdeIYXXkNtyczaFYwXDqZx2H+Z6hQAMFFyUtkoh4pWL7ECkOMy4fomH1
	 9uQ6202cjb0EYCVBHu41a/D7LpmWZUZL9BUR7wOS0T/C5dLT0IkD8yo46paFGAY+TT
	 1x7t7fBe96ScQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919DDD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176874143358.26657.11707130645450874727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac84d61fe147e376c4e59ecd5975d78df71f0532a706e20a0f6b21a7b766a4b5
Date: Sun, 18 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768741433
