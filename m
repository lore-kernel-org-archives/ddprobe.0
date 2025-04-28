Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399A8268C4F
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745840394; cv=none; b=LJdpSWaRWXgaAaUhtgtA4LtdnDH/tiGpeo6NMufOV04Imn30bi1ewOXMDE6j8v4QpQZS55cmhoKjkVeoNvqCN9GCQGxxeMAZc282ilAQkXL3o0KPZB0m9QzL4/D0FRq1XsEHOD27vmsWkkhuGAaS9H7h15nkwg87eG8k4RSRLu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745840394; c=relaxed/simple;
	bh=CIoAW+TrUOs/SeRsk4tz+/axeVHCtCHmPYWr2iZKnsU=;
	h=To:Subject:From:Message-Id:Date; b=twZeHgxF0MM/13plEb4cwK2A5mBHMg+DdA9bCXfqM6YRRMwyMEOSjBEjxtsKjV2Yc4n5jlsR545E2+mNDFIToYxPwugkm9RAJuDOf03OsReX57Sg6XHXZqdjfdO7XWqEQ4VDiBPQXDwTzvn1fC9cLhlCDjNW2PxobDzV9FFjymE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXdBq4IG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXdBq4IG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D79DC4CEF3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745840393;
	bh=CIoAW+TrUOs/SeRsk4tz+/axeVHCtCHmPYWr2iZKnsU=;
	h=To:Subject:From:Date:From;
	b=EXdBq4IGcZ5LTHXcn0Yo77g0NdZZjioLPMTe0pzrGQcUkJQK7s8zP+rMYRoAnDjAj
	 ytTkxTUdqZNdwvXz4JgZBDPCEjMHmLEaQsNWoQCtWeHE8/csYm5n/E4X+7z/iwRqX3
	 IhqeMNQDvHToG6GR8hmQqqL+Ln98Zx2Z2I22eDamHOe9oisfQtaZLSuWw3Odk8DcGu
	 cKHDFRoovt2YoGBXsGbKgDC/SglPpRu6+jqP80MKp+W6hAmjMKOYMg1Gjlp3tFfjlM
	 ECx7nhNbMOz4u+A7S2RieV8NiMcY29Eqyp5By360d0wnjU8/GwpUuKyF8z7CN7y+Xl
	 +KLKjTN0rT5PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F545C369DC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174584039357.8348.4208500224337171632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9ac99d5adba0c71098ed49e189254f2f66b1e2f1dfa3ca6937f06ea79d9d1af
Date: Mon, 28 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745840393
