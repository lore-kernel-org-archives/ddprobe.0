Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D1D3254B3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776659254; cv=none; b=WvNz6/Tb/rW9DC8QC0Bmtiu4iDt3Ly9eyHiHqjYK/gKnTv56lpiwjPXJJ2K9saut4cP/90FWz1tYN23n79PeFeNM0ALbccguBKmu4efebszi+7V196ZBaS3DD5emQ6ogOmX03VXo+OYjKE+hHIYeuNsXtkZJPxYzSGCTpgms/sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776659254; c=relaxed/simple;
	bh=nHmosj3b70XESiujRXySmk3en+iTftOtJ71CEj208o4=;
	h=To:Subject:From:Message-Id:Date; b=O0gT68h8ehHyqpYqO9h2S2AWSDSdAa4UecpyfDsYPM7Xy25MxlPMT4UbrjVVKr5UYx6msJLqro1dKgxxuX5nYS05ows0HcIiuKxL4x7HI6kaq1hE97YvnMvsxPyHGW2WWRduKTk/eNJE2uMKcyBccTVQDPS6mB9m4Qsk7p9CNMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=es/i4xZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="es/i4xZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB25FC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776659253;
	bh=nHmosj3b70XESiujRXySmk3en+iTftOtJ71CEj208o4=;
	h=To:Subject:From:Date:From;
	b=es/i4xZlDeJkVcd8AlZRxNcvqie37ma5XHqXLkjZ/YP8Mzys4YS078zP8qG4Xttgq
	 MNwvmc5YzgpC7V0kq5MSuPyiIcuvg8NJ94NwFVoF6+09XpA25cctQcDeQW8hbFNERS
	 En9I3YbiUS3ZFzOykdnNPQtTLuD1xvGxXFFM29P129jmhpTEfdu+MquC0wSax2clbY
	 uue+lhBWudXcZFAn/6h4DotHcVQOMNC8kmfkYBcshX7poA/tUcd2xVdVMSKQMVOfwS
	 hZThNVRXzCT8xldcRQSg2Sdq/tFWUHTEV6pf4vYUtJ8RWTQ6uG1K4NBhcu8I2Aif7u
	 TKvoGHCOW/KpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9702EA71B9
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177665925368.1559.7844948211011812051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be01c4b7a2b89164911e4a9d83e1e5e3232e49bebebf40ac50c9e489ffe6d01
Date: Mon, 20 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776659253
