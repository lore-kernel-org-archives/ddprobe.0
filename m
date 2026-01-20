Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2950B2EB876
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768902834; cv=none; b=FWEqsdzM/yVNxMlBwmD665Wa+qfehXzLXLM3WSAqoPyhAus5y1diz4dZsKH0OwJGEgbAChQrr5/tnQre50xGOwDQuAO25mKdlwKj/Wgio+YCZ14iDrkmYRp8yvVxFXL4PBGBYglErgo8oAPyXcg9iJRZShW6y1k5nD6GEtbWXpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768902834; c=relaxed/simple;
	bh=3G4sI+/CSrrNiNfRzDegNHtLZkfzJtlGp1p4dnSEHYE=;
	h=To:Subject:From:Message-Id:Date; b=IZsKK/5pxApIi1uPM9TG0elGZq1RxNw6MUFzd6+MqS8sJ9jPlt614UIFVQcdznIIxjOgKnrCuUTUxXXGFTxbKqcOgumqEeVtdNm1EigSa1KX37rvmNybcWvAeBpnJgGlk63OVjJhTKw9uDm07IqDSbEiVy3kbf/OriPlfDBNHGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTqmJ2uu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTqmJ2uu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7A5C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768902833;
	bh=3G4sI+/CSrrNiNfRzDegNHtLZkfzJtlGp1p4dnSEHYE=;
	h=To:Subject:From:Date:From;
	b=XTqmJ2uu5IizFmxvkfoAE63/zR/daamfP1pOWQOYLbSSCDir4jCMrNe+PXhB2I94q
	 Pf0b8crUu8I+SyvlyDOUVnjjTvda5vj94wdvLHhQ3AQPUkfhX6blsK/ICausfqqjOg
	 S6ISmhgSIAT1mR+GxPtWMfFzPP2WkFyK4fUCXkbqNqktlx4SiNMH71hcC9j3o1mCuV
	 aOxSEPz+28Oq8Cz837+WgkLDYV8QpSajfYoeNtTxO8amzfri88zc/hwEZUaX8J5xjJ
	 IcA9Uohod13WYlL0UbGGV6NSsRj4NjUdsctxNBaWTfM2ejSzOLPXtabdM2fbitMz86
	 fl11Igd+gVEjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8BAD2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176890283360.12225.16844851388253739111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38043505a027fc1a5d71cdfd26a6cec3373168e93aaa27d137351a29a0d8ee40
Date: Tue, 20 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768902833
