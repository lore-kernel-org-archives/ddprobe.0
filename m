Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292DD245008
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759205394; cv=none; b=JrYaTdXwZqT3OyQMX63zAeXFjLWWG2x6F/FBzC1Eg1NgYmOmBd0YKrgI2KwqDbhU7Wvqa3JABrPqK6wk3KFEapOfNOXO37ykKEw/dzW4drf5ICI1lIoWvhXybIHJLRRMhIzBnHE5VLPD5b5sSVUH86V9kdDujEENeJ1BaeRFtAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759205394; c=relaxed/simple;
	bh=se6ZSMQ/TR4twSM5sZCMFmzPHq7mg7j8wiJ2lxrD3e8=;
	h=To:Subject:From:Message-Id:Date; b=EosB384lz6i4s6uPJdZHNN2vGz7RSCxtzh07x1pQpjaZYpqOPXE2gyt3Y5z3gLZXgaLqJ1Llend6M8h9/uuAgaB5rXQQZOIHBSvdoEPlxO0xwFG5AXobx7Dpfk33XnQO9BQZT48JZca2Gj1rt/igBrh7ke0k5CphMzT56xbpdhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9PGQQMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9PGQQMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2B0C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759205393;
	bh=se6ZSMQ/TR4twSM5sZCMFmzPHq7mg7j8wiJ2lxrD3e8=;
	h=To:Subject:From:Date:From;
	b=u9PGQQMtSugm3fyQW//BSKEF19xQzErAD7Rf05zJHvLyIlWlHJD7+61eZA7lSo/SD
	 FlBTs8b/up8MW0AU7HEzIYDX1uCYFv/Adxf4uiPN9XRcumSflRK5Z1xIeAEwt3m0t+
	 /qy6pL74fJmOIW6eWhvi4+SAUpLgatYfhWVCH5KYLvhbn08HdSkSPDyri7TSdl2oMR
	 MPn/m9/8z/3POfApnO0xi7N/Zy4iIlrFP8KcbXRNIiokLDifUL5UkpN0mEzl8SF61h
	 XvhGsK7PqP+EH4FiUO4MKLLW4UO25uqK3k7GtH4JzW2q9It1vIKVWKHOxI24JD8zoh
	 UfeRFW8jAn2ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AACCAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175920539365.20887.8441819192745430601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cb98b4b953812e307ebfa19f0a839489a221a596f87be43cf3e7519e4c4a11f
Date: Tue, 30 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759205393
