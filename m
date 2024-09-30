Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E18131E2D
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727718354; cv=none; b=CsS/Ko5QCC6hB7/9tHozkTt+H180egS0nYXvilnp9E09CkXp/VEutBps1UDOiU6XzCm7yUuqq6CcgSomzUL2dJ4kSSoleKFDH8tdiGHbGUvbbdPL5kyHu0Hg1woEhlKkHPgNp79EmD1koytFsnu/C16M791TcI2SdV0GZlglF+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727718354; c=relaxed/simple;
	bh=O/8fkLxwMFtYL3qVN+w4I8cTjk8DWDFWkzGbUWs1OIQ=;
	h=To:Subject:From:Message-Id:Date; b=n6eNmV9enMGstiBVr7LiDeyVBcY31FaMrnLRUOQ1iwqsgy8eZmjZWXgLiaPUv5Sz0ZGz6yDBOEu97K6MNm6PBpwh/fmZDVJM6v1ajx1AaJA95DB9I6oieNSGDFssbffGTnk3aUdaPAP3bLGqzPgyIIcEcQhIinkBsoCyk2/zOvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLV6z7dB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLV6z7dB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DE8C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727718353;
	bh=O/8fkLxwMFtYL3qVN+w4I8cTjk8DWDFWkzGbUWs1OIQ=;
	h=To:Subject:From:Date:From;
	b=bLV6z7dBa3fIYYoikcUUVRp6cUXKaMMrc3vub98bWSV7w/s9UCfKelVd4Mu7tKsV9
	 KyNJQqviZGrBFEquW9sajtySW+enDxJLiItnXEAGPFqX63e2CyCZXppdNdexRgF62k
	 wNYxp6AeaOA6jdsrxO1RlgCKjlEKmNfHLvdnAFKhcH/HOsUdTkodTakSSVTmx4X/12
	 U3O4lKt/oNSRRUw4phyPj4p6rxl7uok99vIvlm4IfGhEG3LtuBGdTootGMxG9yLoSF
	 W411txeOoFnJ2c+I+5ryPcLnUCVfJt3H4pJPCYRHASkXwzWvRqb/8+ToTCS2pF6yku
	 2ndXBBHCjPl9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A79CE8379
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172771835359.20900.3448437417571409345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bfa4b0f5566f5f8e680c84bf8154f2ed655adf2e6a3b4fcb89edf2ff05e8b34
Date: Mon, 30 Sep 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727718353
