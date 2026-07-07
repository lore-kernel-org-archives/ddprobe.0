Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE1842CAEE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783460914; cv=none; b=iW492i9NfdR2W/M+y0dNX8uNp3JP2UgUlgDkX8uo+546DzxnuwoscOdVCK8L9S3kSY6zcB1X7NP1OpZ/w+x6hRHA39LZ5eYCPAguszvsxAZrzBNOyPkkJqvDeWYa3p92/R1kt6tN8dTmgQpK0etJ8iVTF4wRjhOL7W0x2aV+j+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783460914; c=relaxed/simple;
	bh=qsleTqlACzab8zPW93UR6DWnb/ry//VTnIP+53hevKg=;
	h=To:Subject:From:Message-Id:Date; b=TZee1PB0sZwwmc5Ecrwy2hAmhfdlq7KJFBE9GNd4jVNIxI4bvnrtStPaP8hniKLIvA6qOxSi6RoKNzZm68Tc8glMYUQYrUqy94nvqbs9g1RDvmydqpsEq2Or0+kKkxgC+3Qk5DK2wsdxrrkH9bMToeRn4j8upuH/Ph4bjhYKuAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fISUEtfZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fISUEtfZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1B2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783460913;
	bh=qsleTqlACzab8zPW93UR6DWnb/ry//VTnIP+53hevKg=;
	h=To:Subject:From:Date:From;
	b=fISUEtfZYgq26mMAzh9rm/i+6J7sPs18ofp0v+UsGrn+ZY4yY+sG/9uJae7MX5kfS
	 /Hrs/hmrC5d6JefrRHgF/uufkKurfq4+147b0r0Y71C0ccvTeJFGOhh93WqLBpAzZu
	 cc3HO/feSdTScoRmFMH4tvqGMCbxiNdyEylXRVz0VylUTXfupiMCMMqa75gi84ey/a
	 5UZO6iWrS7HT98YmwS/KcOatP2o1DVQePx+OLCe/SpdsvM7tp0poq7wWXgZnnmUuVg
	 Xr7QvQsrDOVT5StU22c0c19wX72tb5622BP1ujp0oaxXr7llKvh3zAT8iFN62qVQqL
	 2pDBNNYKdRgeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86C6C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178346091368.9766.12045272840818200225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ea4110d1fc42f754e473f93c898fbfc95b09eea351a6ca5b8bb500c3b527d6
Date: Tue, 07 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783460913
