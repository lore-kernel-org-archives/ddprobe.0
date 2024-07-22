Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9634C6E
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721627154; cv=none; b=hzm69cQqy/QulXKk7RjK6f42iligt0q9ldZKoKSwzPdToIqkOE9u/9RtStYdaC8uEWSX5Uc/tLCRcFP8R+/8dPszYPZLLCQ8TLvPXDK3F1jHWRggjPmKDXTH46T0gT/fePOHMTzngQ89CUeM4s1KEfsBTN5npNYP9BgvX1fdR5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721627154; c=relaxed/simple;
	bh=giMndk6DIOMIk0QRrGX6NwQ921cjTMoK2jOXX56HHVQ=;
	h=To:Subject:From:Message-Id:Date; b=qhdIkUFtYv4TJ9iOCBzIqR4pxF/QaCavB4neoNcn4f0Y7P4JY7KZ9FRXQ5dDUXi4r8lYnMjrWQbrC8ghVxbIdirKJl3/MKsZC56Vhd+orBO0lsl1MgP8thi95+4rrypHXJSbV8ktufDYgNQ1ReBAU1Sl6E6B30YdgJ9knOy4d50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjLNv/n+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjLNv/n+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A6AC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721627153;
	bh=giMndk6DIOMIk0QRrGX6NwQ921cjTMoK2jOXX56HHVQ=;
	h=To:Subject:From:Date:From;
	b=PjLNv/n+jue05+7AxdXgcBDNY+f9YT2oxxLHhrRUwtSiU9MCshLMDGyE1FWpIE4fo
	 3QOVp5vlixNQrx2G7Dpyk0xYFFnIURISBkqA3mgo2OjjGIaSbHBApMqVfM5h9HsIqn
	 e4wwWhxJHiFiXyHY03hldSNW9DW4YGIYoU+oi7uVAduAF4noAyFXF706BLn6k2UDgL
	 sxCrDt6rFC7NgHgrkEiQQnEMpb3aQTCBa5qkNVG+mr7PGi3uvlRCCtokJ868mPEtQn
	 KqMpWrqGzSDjHlsxFoRoQ4l2lMPG0A2CNT/8DbBIUUWztTSqpLEE3eKnr+teLadxDp
	 YFqwdC8i5QbVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C69C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172162715359.2745.3565141132506868708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f82b0afe677bb4e5541162d882e98b72da0856f9be0d48f39a93a7c2325c108
Date: Mon, 22 Jul 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721627153
