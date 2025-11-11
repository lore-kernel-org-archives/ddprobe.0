Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F28328278
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762879194; cv=none; b=AYkeZD1GGf5/OboXyoJ4oizYf2cYuibmhgOXAutB9u6FENS3u8zdbbwSQGnXr90V1SfnWcnfzBvNi7gCDpO/jAC4P27lvWveqBp+V8mjjWxHvVFAsPWGhuNOd7OdPqxihLeDr7ZxxPzOJRW27Fgl5l6Sb+MYQj6aHZTaiKNMTiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762879194; c=relaxed/simple;
	bh=qWcEgIY3e9TmvJMUoBeMT8RGWRJ3pisnnYOPD/UpAD4=;
	h=To:Subject:From:Message-Id:Date; b=G5A4u2RKz+HzZj90BEi2vJyHf6tlRLXnV9f+3pMk8u0PYEAuWHpWY+pPhux0jenFKFVDi/HueXjc3cf9o/d+f2C4MjjRdpYjCYCSYAniHgPSR+VRoZR4Rsu2aHr8BEM8tFzlx8yMaLN3d/SbeutkFqGv7iU9RZqNg4Iimr0vEgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mv9YKpQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mv9YKpQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC5DC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762879193;
	bh=qWcEgIY3e9TmvJMUoBeMT8RGWRJ3pisnnYOPD/UpAD4=;
	h=To:Subject:From:Date:From;
	b=mv9YKpQS1d4QRVwFQl0hSPnutAVIFGdBevDHAV1BQnOu5AeXP9hYAeglT/ldA8R5z
	 xBEtqgcXuQwhBv4hz/04sIWmrml41gAerlgcbZUqpE/UcGq3f+LvgZIdOrvQ+eCUVn
	 NtQ6S1ZoofZkj7mW7zYH1cuh4/AIsfXXE3BEeIewwL20Wpw3bkS+kXn0Jzu+hKyvBF
	 oOdOdSeeGsEc8ePCduVCH2HTuXSFgu+5A3CGRQVLv/rCuqW6iaHCDmbOMByCYDhno8
	 SCUNSWWNO0cb2iru6ac24ys1n6gcqprVe3KwhBOME1sWFg61BhJbVQLL62agF8ebvS
	 s7/aQYBePbRzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91143CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176287919358.24032.12687076490738755877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d694607c2a56de356f1324371722c3f2fca67421decbf28bdcd9c2c41868bb7f
Date: Tue, 11 Nov 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762879193
