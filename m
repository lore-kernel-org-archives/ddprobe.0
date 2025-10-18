Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2371827FB1E
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760815194; cv=none; b=gpgXqEbjePloa7tKPQWQm+NiYGrXqh6hvRs6ZISw6Afrubx+V5QlIjMAZjrcD2SrIS5kUOPygy8O+lyAABcy0psNmDFgPwxd+2n/xTNGLAxBjY6ghnO5no+XvqXTZVeaZ8wDA5AteGJttm/qHr2XzP2cFpO+L+8coIp9WeVMBzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760815194; c=relaxed/simple;
	bh=krIeH1fMMiLrhdzwExlYtXAy0d3MJcKb8DIPbMRXgqU=;
	h=To:Subject:From:Message-Id:Date; b=CjIm65p9eu0xi8T6Fz2BeNL2L+NUCT9/YZrazdOhCsqWVV8eMmZ2vUp20qQDmmz+Ubdg4O2PUzvg5dU0RwM8NZs1LCiGznibdgsz5SImZyPKeXlSbXL4aTiD6we/hB/xMR12S9KhTh8thYdqdMYZgjV45j7eRmDkmD4VIIWWMnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mda4A4Js; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mda4A4Js"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AE0C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760815193;
	bh=krIeH1fMMiLrhdzwExlYtXAy0d3MJcKb8DIPbMRXgqU=;
	h=To:Subject:From:Date:From;
	b=mda4A4JsPrr+mc7a6A5Vu60CyMLWDs0FCUpBJSwg0CmOdjydnvbEoWhVMK/UAKoxI
	 xGM5McX2kgkFrPD6fBy3/BCeEWZjI99/DoIm3N3YDzpuASuo6gzNfB1f77vbWwLpZE
	 zyWgz8GfDynKDEDV70wSFIxqO+lTpMYxiKHws+zluaal3Il3w8koV43c5f95PEy1MH
	 DKWAkQg9fv1ytMMyxnjEFTbpGtauj7B4Ioofi1mHIjOhZcmPi0cryRu1/ZxQjmet48
	 qa4MZ0EnujOMVmP4wxl/OlSBS6qBdrC6c4cd0RjYJ1cBb0MpqjLkYl7V2qQ/ywYfiS
	 7U8GitJ3gq7Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983FECCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176081519359.24174.10068105210574326724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c66dc335047d0b30b3e2ca345308002fc262a7b5e16463e8bd6802a25523dd2
Date: Sat, 18 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760815193
