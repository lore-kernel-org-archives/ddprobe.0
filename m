Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52290D50F
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 07:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716015743; cv=none; b=dBpiIXXBNsLfyW1qq6OW0tVn5m4+H+mGi9rIzqckqzO0xHlqSqoBm/b6FESxDixND0t+DXSjCxPV9ICk0sv5lQOWiUnvNZtWee1WyWR+pF81sZRPcCLgl91CmWrJiUFE9znGq8Tlm1dGMPLe7tXaQjzaJeAddtzyyRfdrpOUa0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716015743; c=relaxed/simple;
	bh=hFq2UzpeUN7UwscQISttB8BVTRRJVPcns8Jam10xaPo=;
	h=To:Subject:From:Message-Id:Date; b=mPIla2SsC2/nnWW7MoqtQTFJDKZvF87tCVW8OLkJSjWuM9ZiRELhvyitJ5SaLvywnY4U84VNwy6en8nRndyWzYbqN48mAVIZ4ogFFp0peVEp8YSET1yFK+4TdsG0AriMucQwfKWEbiQeJdOU2l2oE9Ui9m0SnYVFUiwbLLEgb0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ay/nqbg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ay/nqbg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B68C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 07:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716015742;
	bh=hFq2UzpeUN7UwscQISttB8BVTRRJVPcns8Jam10xaPo=;
	h=To:Subject:From:Date:From;
	b=ay/nqbg7bYTTMu3u6fVMemy6B9XMwJlt5zXeMN4XappDKgXdmEKxeCRwaPDzykMuZ
	 enXbe1MdnC2kOEIdNENZ/yaNsZFhStFnjZay9FYMe7dy7/tp7/3TEKSVf4YF2Oicaz
	 XnUy7WJFDGHczvOPUIKPr+pspTrKH+Q0mtn/gcPuNpTYdtEf61XppR+B/cmCyNltnu
	 pd1CdckWBdYREjvaE4gABr2qLYyry/50+7hHvvKXN0/0BVh/xloZxgbxKWWV683dal
	 /b/M7Zx2iNMokD4TIPxA2aT5piN/fMhP+1OJMKtp7EWEQy28cM/rRvW9E/zkYysMHH
	 vQ+P7ppY7ypOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BABC8C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 07:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171601574275.24498.1985653089358847661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82cf4cc7ece6b7e7c10e08f8eb48378f787e962e20c0ab4b1b42562b6be8fe6
Date: Sat, 18 May 2024 07:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716015742
