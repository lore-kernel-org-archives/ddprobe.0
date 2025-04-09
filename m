Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423AB210F4D
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744228194; cv=none; b=I8YzM2/NFo4R3SIJe2ObwyyeBExcB1tOKn/NmCfatfRmVVNkwPR8AoSHvb+qgKNnPvmcDlrCy3zxXhu2rbPtWvRp/1qux9d+7muaFbgPMdbuawiW+Zi1v2vUvK44Z6j1QP+pawovdNgvU6VWOTesZCoqVwt0Mppnb2LiiusCey4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744228194; c=relaxed/simple;
	bh=RJofVRTnC/14HJeod5cdqjBprjv35imar5QDHpzsdfc=;
	h=To:Subject:From:Message-Id:Date; b=DfKPjLLTnr6JcpJ3pQxRM1MLtF3WGRxliiUoIuuM17A40ycTmXQrLrA8z37OUIVD/RGYn+rO2Q6RC17jihEbdI6uET1Q9OoLBbVvG6hACrwPd3bCBcrbKf+V6bDG9LtG4rtDoOqvOYEyTqz2d1pxq4x3x7pJ7occDvKDzeoFZjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsyIUGf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsyIUGf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58A6C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744228193;
	bh=RJofVRTnC/14HJeod5cdqjBprjv35imar5QDHpzsdfc=;
	h=To:Subject:From:Date:From;
	b=VsyIUGf/vS1UItUJt7yQLx758QVX3bhWnF6tJA3iUUuiaJBeS9d9SslOy2i7j6RNp
	 dNRwrUYMik94GJDtxzYw7W4zrcFzbAc8yP7Iwfn93HhIoKTKxjVWOgKD1LygF+rdGh
	 V3H/m3iVLxi7Z2e6/fIkU80xnjDxIj1u3+xXeYDkk+jYJNZUwRArydHoASEkV7Bz0h
	 r+UyycezrR/ji3Oj0+MQryz6G3wyfKlEGDFuZVR/ASJcq92QDTVu/R5JFSQpgrDOi9
	 Lvwi0qCeyfoNOswmpqsQOCvqVXyiwkqShaKa2YBfkFn2N68H/tefgAHFsGW4O2lWrT
	 6ZdCYswrh06sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF29C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174422819360.9884.1466068762449635767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6e4f558782aeed85d81854c154485c14bab3be67a04d6c68f7335ae4dc4393
Date: Wed, 09 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744228193
