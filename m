Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E32B3596B
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751656194; cv=none; b=iDWq1S+3Zge1ey0NUIcTubLKorJoMp0cgmyys4+XeXSA97PNjlMt5ausI3KOex/NLlFE5ewCuxZeYT/zdABBNuNICWCIInilVJz6LKM3m7DRmyiw8PuBjXiSoPc0qRPfylwqyJZudhq2xUZqdy1+WUYHxu1ABDWf7JMZA8gUwKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751656194; c=relaxed/simple;
	bh=j0f2f3GA4aDJkmlZC7sr7XrQVg4yugDnZhEDZafNxgs=;
	h=To:Subject:From:Message-Id:Date; b=Y66gzzg3Na65zLggnC6gpSi6nWfZVooLutbyCDX6XlzHMtt9uUo26xWbIKfhlHxrY1ZwGoeTGh+XBFnRTKhBX7g176iuJMueHd+IRD2tGyuThP1qFXHIOpX8dFK0ZTkLg3IRfwMSEy00H3Dv3MkCodskVGt6aVVUJXc/Qo2HFwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/3rkJ4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/3rkJ4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A347DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751656193;
	bh=j0f2f3GA4aDJkmlZC7sr7XrQVg4yugDnZhEDZafNxgs=;
	h=To:Subject:From:Date:From;
	b=B/3rkJ4qZYLIVqB+5ssJ5JBF3QIyZgs8FHovpg5dI2YefOgKK/MxJLZDgV5xsNbc8
	 EI7zI/CDWOOeJh6uNocxmlmSxkLbRoCxYJH15ygGEFOIWgf7owcd80pkShNt7w9NKy
	 WjOYsBE9c2uDGybxp85y/ujiuWsDtf4jDvp1yYOFQYaM+58LOalgiYyXwTSnhkJwAF
	 kPt6zPef1N90knLReTDpztJ0sLp181HpxITXuCt7dBmui9uU7/Fr0ziYBG5lil1Fwq
	 tQ1EBCMzC3ZY5zO/gILM0+FWMwtPHTTsuJsGugzdO7Cut5GZlVFZ1UzygHqnSxuB7z
	 JuyT3GxXLH6sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FEBC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175165619357.21416.4105947275001045293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dac5ad44eea63b2fe413fc6ed1587c784805da3e7ea3a81f396609b4e086e02
Date: Fri, 04 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751656193
