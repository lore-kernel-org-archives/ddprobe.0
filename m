Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5548D2BEFEF
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790742034; cv=none; b=rA1J0d53xG/nv5Ue6oc7FNiAsoObxi+RUYqjlCbi/g5aQWA4fPKDQsj92l/fAJByKKU9fv35ent9aOJyoZaZWVUq2UoSu+tJXdkdqJEesQm+OQqN26Do5nr2R+gXSrqNyxlUPtVDQl8ykKD9U93tFo+IKfJuUZuJRhsR79opOfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790742034; c=relaxed/simple;
	bh=gxDzWykhDtXdkWagbqRECk/gtZI+DIOQsVFCURSQva0=;
	h=To:Subject:From:Message-Id:Date; b=Z7lhcaI/h0iu15GhkIg04IIiOylKl3dasziaNC9WOwSizLwbvX9QqRd/CvcrpBijrPl6cVgRcjNYn/YlTtY0BlTooSN8oXoBnnGyEc1wGZeOOlZwNVvMo5DGI6NOtNATNQtH09AbRh8+van5HF669l9pbYLaOjuFp400XNGTi0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIEE+mHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIEE+mHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F83C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790742033;
	bh=gxDzWykhDtXdkWagbqRECk/gtZI+DIOQsVFCURSQva0=;
	h=To:Subject:From:Date:From;
	b=fIEE+mHa48ce1tPGpkAAJ7JlLIvvSOgrOIRqNc3mR+v2yHW83ED6QlxUH/pJ28MdO
	 Xt3cXxIofL9dBF15w+KZFw3zqrTBufPqNuzfhUEKFagbJxIr3do/NS/I8fgwuj0AsG
	 UzcKXKi5z4Tano9/jJqwx5d2kn80pNVo4SFh0hA8B3pxQxj4muiJSHe47wcnC5b4Gn
	 hP/wX89nU5GrX4Ff7vt1QpRCwUcxsPgfBVFKdibgjE+RTM4E9Y8nUmIcaNylsr/CGC
	 q2XRyO51Kj/cNawRXx+BugwMVoqUtqTy6h6y3F0YDgnv0WlY+JQ+1i0J9kXfv9JvuU
	 tYEbcJ6RYmG/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB841CA5FAB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179074203369.26992.9250985079658636222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cafed19bfc67657018769599cd85a599c7be11c7a766fde3603fa07c00234b1a
Date: Wed, 30 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790742033
