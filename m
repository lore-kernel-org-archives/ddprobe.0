Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290573ED101
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772269494; cv=none; b=JMZbEV3yJm/SPN+TVgienb3p3uksqE5OpIfALTa2j+hVRobSced/Qp8pYXow3MpS8ySIVQ6dVy/4W1LWuolEy60hr7dD1HT70awFjAD3WuSM1Ors1FBPdkmhyHI1YqWzKhJB7HnD25HLxcCJSTqKXveVAwYv7k+vD+C4u3jWhIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772269494; c=relaxed/simple;
	bh=xhw7P0dcSgenmGdBmE9cdK/0H7iYdx4zVIp+q9rbvFU=;
	h=To:Subject:From:Message-Id:Date; b=GF+6LSMtBxzjJ/v/A6qZ2nGA4B+6LluSfmKt5gUFOIypw4jhYih/5I2dZwDAif+nPJstEtlrt9nM66YqC5FESLU7OyOz+pY1Dio4j7lrB2dvCCE3GLvb2mRIhzMJpxuqOOtBHwhBdKk4iXBO4m4pzTgrI9osRFYaRtza89NLLqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/O28A4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/O28A4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3859C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772269493;
	bh=xhw7P0dcSgenmGdBmE9cdK/0H7iYdx4zVIp+q9rbvFU=;
	h=To:Subject:From:Date:From;
	b=S/O28A4PJMu+Sc8PMMC65JnP9HNTVMIzFwXlLvnZ6X9W9Nd6Zzd3r+1cTmAPSRUVr
	 JC/7PBA0Thx/jyF6t4tPiDTEUia/vCTukW5QegXtqoh4VA9oMKEiMVFynQxp6sifga
	 gvOc0EoBH0Ux6MWfh7BJcHUZ8xJo8mufMWHEk/BgZkb6mzzWHq+AzFx5eLmyv5BbjY
	 jAzTW9XK/69AvK6qOabK6RAIuMxYESr/FSYn7bqkrfZQ2me/M4bJkIWC+VhN65FuTV
	 FxvRGxGm5+fEaFvcdLTygdv4KaRuSFm2xn+DQz35qa6f8O0+cO2SVGZl+S0kGR45oM
	 VHO8JaDB6lKhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9035DFEE4D9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177226949358.350.8512613313635654708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d017b97e6659e2c05d9eb044b29a7a0c9562ffaf88ad7f071cf0be9f38bece70
Date: Sat, 28 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772269493
