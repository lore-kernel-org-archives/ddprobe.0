Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBED280004
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746553194; cv=none; b=l+0IA+fhmZFahxMk2JvkJ44QRb09skDfqktlX41+zHuXJ99BssPn2veXfFspTmj6W3s1qAATZLcu+g2jo3/mO4qQ/95du2oUIIHWS6INjgMeORFbg5GgrLECzPa6Cir092cKBkvMuebD+ZpSng6nIL2Q9PQ4MvWCu3ZCRFi2Sn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746553194; c=relaxed/simple;
	bh=++jp4dv47fdOBvDlBUTlM6USgxfZISzA1AnkEuQv6qY=;
	h=To:Subject:From:Message-Id:Date; b=f6VZHIxkv5Z2mjTTXlsZpCIBfv7/jfioWG964incCJy0NEv14lz23gY1mLsxn6Y1LTqGbP3Mi4Vfu+K0BaJrId7r2ZFpU1kd8KfOILspSGWbUhoc5NszDrWAm2k8IZCk2VIhDQ3/HIaALc0qPHEU70VilPtDkmaQbNmJnGjfFU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYCA1ZqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYCA1ZqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E440C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746553193;
	bh=++jp4dv47fdOBvDlBUTlM6USgxfZISzA1AnkEuQv6qY=;
	h=To:Subject:From:Date:From;
	b=VYCA1ZqBui1nZkrtsawScHVRmjBptTNPwsq9/99nKXQJumM6Q9M51YxcPGA+xhtA9
	 kT5slCF69MiYMxcNXmGK9O1CxXDH5VmOYJSg5qK4Dpoktc5bXbnHy/FPgepNO23O1O
	 SPmbjOqNmBGrkdwdSNrFNq7lS1vIV3YXcYo1D3AIXO34Rqq48D3gDDcODX/EvVdi1S
	 Zq1TgReLL/+ZRKlk4+tSKXRKQErkm+QunAyP1nWArbv0B7fnq3orVbsw43XRHLAk6i
	 E0WrazrtElhHuwTZPhOT4j4atZ4GC/XDLeEPlhxcMqLCyIZ7IvxteE/C3xmMuZ46Dv
	 ALP9Ud3soBbjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E87BC3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174655319357.29330.11760380090854475383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79eaf581360b1ba0fc917b337946c61bfa60db2932093a843cf7dba6404e9110
Date: Tue, 06 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746553193
