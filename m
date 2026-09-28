Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3851949D5B9
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790593834; cv=none; b=ufyqG0+iU5b0Bl3yStzhAcD+Pqkx8L3vZDOP7QITKKErKCOUuLmM08pKNep11WQGL7whFWTmvD7uAUuOM8yDME9kr7Usx21YnCBDn9e65KOcr2od3z3DKEA+qJZ5v//JNEWi4ndM4L7uDNFHKnalzTn4Qq56n+KmVclZpgQV9yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790593834; c=relaxed/simple;
	bh=/he9/PQDEMZ8k+usNUlDjbPS9yyBXrAq0zmfr5h/48g=;
	h=To:Subject:From:Message-Id:Date; b=bi+wf4Mk32cm99pREWIjisCLJLKR8n51G3qSU7aq3k4n3XMj5xwJ6Y9QgBRZgECSQwWIMnTqj1A5AU1uULmz2DFNqdwxQnnsqhmDiKkUVu9Zs0ZirF1/ASTteWdrdLTSrGTRzmXF0LmdHOoCEK7hgq453x1FybklEZd+XGOhLto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIUk3nXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIUk3nXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF34CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790593833;
	bh=/he9/PQDEMZ8k+usNUlDjbPS9yyBXrAq0zmfr5h/48g=;
	h=To:Subject:From:Date:From;
	b=FIUk3nXxv7jGDH6L/h4XGmPHBN0RtXxmdyMArF09oI8SCbUeKpJgn7YgOCwuB7TG3
	 ozBnMl2pvIDBWm4zCGmnSbSoLZgoVGGn6UQMKL0eZ5OMFWqPCWUWOvrFO+zmyK0tIG
	 azX4KRhpe+/UzVJfFq1pEeVGR/sd8C2RAltfqLpUX4iGnlvR8GpdvgtIdmw6y3sv6q
	 WSotxHFhmPByyQpHEtc+obeGqlcvAb6eGCj8LJoQkbZEi11rPhEmEJme42u7azegIf
	 VJBJl9TRe1sR8twbaA3UO8Lov4lGJm9mLub1X+VCEtrWqnggmNwhmoSsM6+Ip97qPN
	 ai+xgYPRuna+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3BDCA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179059383369.22826.18440886093580790449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56cff8ce2894509536a7d92bb85709c09212ea2a1bc9533b93c18cf0d920afa3
Date: Mon, 28 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790593833
