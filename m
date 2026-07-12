Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326EF25776
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783900114; cv=none; b=R5MA24SlVBJB+RDs9WKywPK8WJ7Ub3sAczWECXD2hsz7icYugWbTJhftDngqn9C8/e23PgD8H+AnTuUntg82MJC6E+E4iBeMBEM9IErHOmhxSiffHpZPkrLcGGeGpBQDOJz6bABDRYdyyG7UTjIZD71OA4g/HhIk5IY8NcaWTtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783900114; c=relaxed/simple;
	bh=CxL3f9qw0ih275OSCxFY09E1tEyk8wHHH80BRpyhEA0=;
	h=To:Subject:From:Message-Id:Date; b=sDK8QLjO1wmlPGttpuq6i01fFRIIJy0SDsamC37VPMj3q4uZqMCXUOU6gvltV2703tOtPioZDO3e5TDki7DZJXoyUItKuzs6nM8pYZKBPUmfYq8IOPYbb/brguBFgGXeFbzgSSziejexnlajydn2uRLeAJuaviy1+rcPLA3Ij5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1i4fTy7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1i4fTy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6FCC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783900113;
	bh=CxL3f9qw0ih275OSCxFY09E1tEyk8wHHH80BRpyhEA0=;
	h=To:Subject:From:Date:From;
	b=Q1i4fTy7EjstFR2g4fikFhwWQRyQjjoB1jYJLhIahs4dj7GSVAb7ilhUBgTk+mGzE
	 dTZawfv5zMiOkOg4L7Zd/OYyiLGjEG/uimZHLcln9PpbDz+1u/2sJ38ZQLYvDSo3Ii
	 /Bb8pupWPKItyt9JuS+nGa5lXrdlcL6jGPjcRNvlTmdvARI1IHQXqNMFYzRX4YVb2l
	 mDzjp0YyNal9YNk2LSwdXMYsnnyz/eiVhIbJtmsXS+tzX96XNpM8Dvk9liVFnmyIkC
	 V8iSfvETPCas4u21acNPmZqlz4bjWhsBfdr+tWsNZJqwNxi/DWsC/XOx6IDlJpkL9A
	 siN4yaIoga1xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A848EC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178390011368.11848.134607035732260269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8170a21b8df38d5e988d0a35fdb979772225189b60c2727aa411dbfb3f57bf
Date: Sun, 12 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783900113
