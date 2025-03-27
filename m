Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318E120E315
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743083994; cv=none; b=D2Gof6rsUVjL5UXd3HwyFkgN1d0gaWc4cdm+MTcm3wWOFp87jleE2Vi70myo9Ti7X9VovSektYzwRjW613c7/QMolSp5bfweknOMuW6UCcHL++6kML5hFCYnwufZwPcmZBkrmF6JPquM/8iDd/WQqyZS6SmK9q8u64PHZ/S9NHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743083994; c=relaxed/simple;
	bh=7cYLvCBwRdLL06jM44ygURaN/1I6yIxyn1aWE8ohfpg=;
	h=To:Subject:From:Message-Id:Date; b=TuC+UVDg5XVj5iSdHCFWP9cqRrfDVs9WUaaY5ZwvOqUfsKJ5LUe2HaRf4XnO6+oRkeghfFqLYt7ADKQki7/sqXhjb4iDny2Gc4v74qAzBQnmhU4gha7ajFCJRkhxE6P4Gip1z4ZZOTPxRqKABes/iLuTM6pmfLDd+9ccYHRX6Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUmtMDaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUmtMDaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9647C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743083993;
	bh=7cYLvCBwRdLL06jM44ygURaN/1I6yIxyn1aWE8ohfpg=;
	h=To:Subject:From:Date:From;
	b=uUmtMDaWnqCyC2B7ewiua4DWwDuXLYqjb6p5WXnKXbI0Xr7ooFOuGL95SAX4rr58l
	 1QJj9RajG2mvx72PBD7DrO4m43fp2qfy7VNkmJPGAJb3jGz70VZrjhdIE0SUPiJhPp
	 RfUMbIHLIhAmXYgvbTfYT9Wa6Zca+d23GHryQcfYrU2joYCYcjpBZHiht9a1ID6SaQ
	 IRmsN9GPrbKcxzpNjpnF+Z84QfIRCwTLlXTVUaLkqaCAXA3/5H5RAe9qCgHz0ZnkWB
	 BfOuFvZcQXf7k7Hj5SK62ufJ32NZABRdcwDNh/XlBRRmnKRINr/+vhfr/Ae0MljVej
	 1fB0BHC4jlUuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D7EC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174308399360.30605.4228310922694374862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a255e289fe9d609dfd335f6fed24ed985cc72b75beeb058da96cc1847df5ad03
Date: Thu, 27 Mar 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743083993
