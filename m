Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373FD334691
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760663994; cv=none; b=EimbOsB97GH9esOEH6cMmJ1gttCXTACeBm/TaSLrISlh1a6sfAT+9KxNUhU1EIKEDf2qgYxsylxXSWswzFgGvXFhA7/ZecO4XT6Bi5OBscA/rAPbCQuRTZFIOD44lYZYWQt4eWjveU2ch67V/qqHQPZBkli1mEpbNurcNIbkLKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760663994; c=relaxed/simple;
	bh=SiNxAEuCC2HtFeIr6F9EAVkmGQHHNi5UasxHFZ9UwpA=;
	h=To:Subject:From:Message-Id:Date; b=EeGZ+Wr7b44U3A0zZKUtDs3bd8qmEsJQBrTF6HidR69HZcp4Abn3888xV7qLlAs2eXwhpWOLPiBdqKwSQBR8HZ9pVGuyHTwfZN793yM8v0nzS+xinUVeOkgNzpEyvFzDX8ijCHQOV5R/1tDFKDKdjsv8jQqTbbEYQuz5mPlP5hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oj3eBpk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oj3eBpk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9783C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760663993;
	bh=SiNxAEuCC2HtFeIr6F9EAVkmGQHHNi5UasxHFZ9UwpA=;
	h=To:Subject:From:Date:From;
	b=Oj3eBpk23M/jHq0ztOwsSVxinh/3/cNLE5rOfTb8rIVgJQGM0ONK+CSKKckd0lJZA
	 h6dYZAADMdl5QSn0kyiRPTt+oPyc6gOARcanaRcM/GkEhC40q4w45bTNVd6m8M8PsK
	 1tfx0LqJrCESoYnUlRRhY5/T+PUGhqL6EN9P1dJLSbzWXMdvvT6/lB2HIEuSU7bVTI
	 biZSLIFOA81AjyEBxzpV/q+H2qEKNeEzRZuHHk7dBClh2XBpFtgrqr1P4ALnr2lUOy
	 tx+BYfBG4mxtwjH5deUNXpS48IQONqeNGAhwlf5U+J0f2FXEBdW4iPY3/V3yi5T50q
	 d2Z20oPC+2ipQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D19CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176066399359.3185.17084129553719265746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af378c35f175347f61ebcdb610b402fcf865d788f2c15d18c1e1f1effe63ff6d
Date: Fri, 17 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760663993
