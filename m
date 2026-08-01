Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652D6349CC3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785612035; cv=none; b=VCyNVN60IHe+Ecmo/JihQuZC3QGUz4SWKanBiLtHG6Lid8aL+ixyAsVZopnjvKcecK48LWRRcj7O7DrR/3J2wi0R8N9HnTZKhDypRrjmtMpGoC7rpsnA2ZvznicH6NhHtvWwKKPfa1y6o7d/vzerRNDvLTkMQqvgCLm36B+uU90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785612035; c=relaxed/simple;
	bh=C0d0Mt9at0Zc/fXIbr3oRD8NugEeXV1EeXowwgfXtZQ=;
	h=To:Subject:From:Message-Id:Date; b=lFNnh5b6X585jyYFxk9u1T5ez6JquBvCMv2q/4hE8RPFdx18w/NoW7Ylz+ixAz7TvVqYbqTURJKpDQl48ol6Usl4d16ytzYXdzmQ//JhRUNVhNcv3hutBMS95HZuyT16JAztjLfQOimWPjwa8HcTn1mUkDA/FJYX++KLPNFrRpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCRn3UvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCRn3UvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAEAC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785612033;
	bh=C0d0Mt9at0Zc/fXIbr3oRD8NugEeXV1EeXowwgfXtZQ=;
	h=To:Subject:From:Date:From;
	b=FCRn3UvIgmkjcqFf0r1ORAsdshqiwoI422M/PrhtYy6HXB8z7zkx9VHd4d7Ah2sVF
	 b4bMjkMce7S++dqGDrzYUVIaonWtCrFhFD6gZdIi75cnDALglExltoHLoxUsLgU4eG
	 E4Fu6LSb+DIOvtQSzJam6TK4sBK8TpTZSmHv0U4S+96/J19yseXZdI/yZtir0z8bCQ
	 VFgnUXluDFlKznqsuoKDi92jNEx1gIyYFZrq9ZAVptPXc7CNG+E0SLpmAA5uj3ERyJ
	 6ogzm/3hS8YwAzyW1afJnhpP/J3VOVGmHFqFhlhfyYY3pSL8MGv3OxMN/gJ8AsuRCg
	 z7oy9OiGZaLnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9503C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178561203368.21125.955182448993708662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e01c25039e70bb8b4e434f2b1eaf93827fb24e43482c4c6370e9a8e74f7dab1
Date: Sat, 01 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785612033
