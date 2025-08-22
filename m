Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377BB393DC5
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755880794; cv=none; b=PjsH4InfCy6kDZO4YRZ3fotdt7PgD85JBrrSyq7G5r65zkdiZJ5H4ZHc0mUwn19ZdEqL0bsphNF26kwT7xJypxebjtk7Wa0/0uQN80ZTd8SGbvFFfyQ9iMONGEdZzLAzTjXkyPSoFF9qih2rgKVGnrUp1sO298flSIGCVWyYBvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755880794; c=relaxed/simple;
	bh=srtRVzPEBcs/vwJSGG5XkGV24YubeqcHD8PXg7rFBGQ=;
	h=To:Subject:From:Message-Id:Date; b=XLqWSgYeS4IeIGh5mkoC+5fAlR4N7x+TMOxij+QXsJ1h3Dc/d15gogjTXwtYjDT/SgxTfUQcWDLHgAOmYSBEs1BvW1QDDzfaUxKX8vFkIcFMDFtMkzxPjSoqxMagBe+LUqTb3E14rFl4dlNRFsf+xtQQmdIQtHibjICYhm5PDJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwIFEpeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwIFEpeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D73C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755880793;
	bh=srtRVzPEBcs/vwJSGG5XkGV24YubeqcHD8PXg7rFBGQ=;
	h=To:Subject:From:Date:From;
	b=IwIFEpeTGwsJB10680x1IdvRqHb2I4pWwHy0cyeSTPJ7TFbq8rH0+XnxQpUDsMqCV
	 4REMO2GxUUdRbDNiEJnozJVJGYkK87tkE8pRJI84i/aOovhB1tnn0WKTOGiZCtWX9x
	 AosHD+Dna6o+TTP77uvinX0jWnPDpeKp70l4IDhPMcTi3zkwj3uUy8lWwnUTzf+HUw
	 m0cJtZA/j4VLxMqfhf6cSc41UwxFSzvguEPtj9GTv70UwQul4tA/VhIytMOMMUa+VO
	 UC3mMD5bk1yRSJ6zh+tE98XLrjnw+RY2KyQb+ThvTTP8BGvnbl2zvLkU+J+Dn5+MFq
	 WYkc+mMw3k08w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D88CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175588079357.17213.13556290231529921003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 063aa80e4c77446d2905d906d9187edb23daef6eb1f8a79f3d3a0abb94cf4f48
Date: Fri, 22 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755880793
