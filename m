Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242211C173F
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728422754; cv=none; b=DnxWUahRT/tn2kB0782N+3zuo95h7sDbp9w6pwXiujEwWoHD4wFGiPq23FWh5hyJjOgWvc6mVCu12UGsVmv5gxnGYY3p2cUNxZ2G14u5pOQVFgiQIbB5xj84LH+4vI7E+6r5CjoR89XT3spXASjNcAFl9xzzr5TVAqO+UqZ5XrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728422754; c=relaxed/simple;
	bh=1ftIkKw/et5T2UpEWaOHftqKHQOeob7gFrBjSsOvkrc=;
	h=To:Subject:From:Message-Id:Date; b=s2HDp2l65ajslf/zTiwsoY/kwamJ76BGMeNko7z/LfyACZvAcacz4pw9wwUtr7vThnKeiY9aXbG+SMXyCVprMYGwivzIekN7X6MCQh+jCpErmQJ71GcL472eDyFBF1iXq3nDRb9+DYcHV9lfsO3xvsjo435En1+dej1sy0TCcV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5eZxtzi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5eZxtzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DBCC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728422753;
	bh=1ftIkKw/et5T2UpEWaOHftqKHQOeob7gFrBjSsOvkrc=;
	h=To:Subject:From:Date:From;
	b=u5eZxtziUOpdjg+vKP0bi0GUmhxHiknINM6RnJRb7+f4IuZXEKa+evRtT4AD6EJM4
	 JNzl1ILSiwOaybsPBVU6o0TAMxQUglUST64Qrs13rMwStKGxI9+sXjeNNogSReEgHl
	 0eM4uLPE03SKWI/D7HTiuy9YVfqD6pfUftD9zMn4WjZ/rKZ5GpCgvtHhJBDrSYLOcx
	 BRUN0tHJC8oitK2QnxJQD/Tq+EzeIsXxggz7+lNYu5oyXjtch1aKGcYHK66beNdpm9
	 fOtw8mtRBSStFoEzN3TLdPHbopX69A/cLNhWix5vcjIiH3xnzyFcHg0P7d3j8wgI7D
	 tQ42hNdMx/MaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D94ACF0427
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172842275361.25716.12303131480367541606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86cbf82eed1b6bfa71c1243810f7984ae6491e84ede4e5f71e82d0ce344d013
Date: Tue, 08 Oct 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728422753
