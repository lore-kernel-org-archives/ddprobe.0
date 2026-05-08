Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E0327A462
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778218655; cv=none; b=hKSBDhCXH8JVlnBhOzTfmUKSj7wz4VeWvgcwfVA9jZiRTKzNro1jOtTt48Vfy9qnJ6F42IGRh9/DPoDsmjjNppb3ZDmw7Njnzlo9GtMDWEhPiyR1wPzoxBORucXzkxK7CG8J9z7epawThFyH23nM2icMt7Rt0fJ5qYVgPotKjuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778218655; c=relaxed/simple;
	bh=5uiSSb5PWXZkQtOAxWDgJvyNNtRn98FhqlTbJS7YBSY=;
	h=To:Subject:From:Message-Id:Date; b=qRa4CZTMoDgQk1YZ1p21McGqpIe2vWHKw8KzmZb57KXgZl3J1zRcTRO6K5zX8f19hJrqdXuabj6ORVNozKyBQkezT56DhsqFoQcAVSz/zlgQi7GX2mLqc1OgrrS9x9AsxT4lrsUkd76t0RLNNOALzciSg+/S5HNaMpOy15anwgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cU/GDu4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cU/GDu4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6859C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778218653;
	bh=5uiSSb5PWXZkQtOAxWDgJvyNNtRn98FhqlTbJS7YBSY=;
	h=To:Subject:From:Date:From;
	b=cU/GDu4i4uy6zt56kN4psZBYZYoMK0a4cERrIMTUwWKDC+IbNvu/VsqX09qJv/Gk0
	 2cS/g9dmOnneYk1NrT98L6LUodJoJD+e8+wq940yA/sOSXN4XjSbiayE3QWVEFmVi6
	 nOm7hXQAOtjFhzyzpfxj8BkxV7QpJQO+FibJBkv7Zz2Hez8aZ4x2t3Sm+H3Wj1hlV1
	 GPEOzUdBzTHjd+llaEZca9VM0TiRTlSPoNSXTpxnpugxxSLnR+xZWOBxYlzirGerOA
	 hMFM/5R/lGusXHFtDVhcT6ALbYmPse7kLRqnIxBQ3MlFovby0Pb38B7CbLQJ+ENpAW
	 XCu0GzWXfstwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F1DCD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177821865370.20489.14952053862875471451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e782b9264adc665aab4210809550ea8c120750cc4358f65c3cdfa2373b40faf0
Date: Fri, 08 May 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778218653
