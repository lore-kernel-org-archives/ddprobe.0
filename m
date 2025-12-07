Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0CC21FF46
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765081974; cv=none; b=EXSOSsa/2DpJ9DAMBspoH0bj6qMD6VAWcFZ5qEQN4dDFh4/nNQIylZLrBRFAueYIhcB6V1eY7mudA0veywDqcuz1//iH3nhyY8LKgVQAu1Hl/NRFA0BLYy0n87GpQWM9DhAVR2l7J9gJrVT18ej/xPA7w5rHM8RB4pl6rJ7UPxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765081974; c=relaxed/simple;
	bh=8WmUJNnExxQbvMbLbuF8FJr0w9835ItHxYdw4HMlODE=;
	h=To:Subject:From:Message-Id:Date; b=LBzQs7VhGEjqvYWFsGuyvbiXS31dx1gZIMwSHeMByaWkl2cIazdQH02MYTCxrsVEWGHFjTsZ3q5Veu+UcEpfeZQuguhokOZnS5MmNEEU3PMTd/tQAt4+ImVOarh/FWcGa8BOcPyI1+TS8U/eH63p9vSzuRaCba7JYxVhPjABreU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lx1z82Il; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lx1z82Il"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABB0C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765081973;
	bh=8WmUJNnExxQbvMbLbuF8FJr0w9835ItHxYdw4HMlODE=;
	h=To:Subject:From:Date:From;
	b=Lx1z82IlToZEBvsXR+ByOXogPHfEUY90t9CnID9oipm1thk93BBhxJWTg2/9NEbAk
	 xnH387rWHBf++vWAUoxqmq2clm+vR/cmLJkcQfP/5AC1K9qj9y9JvY7IGMviqWJeNW
	 +8fEinBIDgAFdDtOw56LDgM69Wpp7J7QEG8pkEyzHOCQrIa7VYRKH10g7FW3JsBxK5
	 hwEOvYeRAZY+kSOqlw7wUv1BpZ5D3mgY7yyiQFb3dO8xKjYZf5HEDzXdIjWtVREau1
	 9/VzgNMozDRO5UVdGc+3iGuB0YAdwDTvIDXAc8idgpKGPsMg/aUGjdugZiR9T8DxZL
	 XPI+2aW8ITphA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F4ED1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176508197358.27111.2323207116122000305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22ec78391b06ee15d5820e9217887512d76d0b770a03e9c9151eb54b7e57d3d5
Date: Sun, 07 Dec 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765081973
